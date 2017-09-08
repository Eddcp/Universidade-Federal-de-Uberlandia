package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.naming.NamingException;
import javax.servlet.ServletException;

public class ProdutoDAO {
	Connection connection=null;
	private List<ProdutoBean> listProdutos;
	
	public ProdutoDAO(){
		connection = new ConnectionFactory().getConnection();
		listProdutos = new ArrayList<ProdutoBean>();
	}
	
	public void adicionaContato(ProdutoBean produto) throws SQLException{
		//Query
		String sql =	"insert into produto"+
						"(nome, preco)"+
						"values(?,?)";
		// Statement setup
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setString(1, produto.getNome());
		stmt.setDouble(2, produto.getPreco());
		
		
		
		stmt.execute();
		
		System.out.println("Gravado!");
		
		// Closing statement
		stmt.close();
	}

	public List<ProdutoBean> listProdutos() throws SQLException{
		listProdutos.clear();
		
		String sql =	"select * from produto";
		
		PreparedStatement stmt = connection.prepareStatement(sql);
		
		ResultSet rs = stmt.executeQuery();
		
		while(rs.next()){
			ProdutoBean produto = new ProdutoBean();
			
			produto.setId((rs.getInt("idProduto")));
			produto.setNome(rs.getString("nome"));
			produto.setPreco(rs.getDouble("preco"));
			
			
			listProdutos.add(produto);
			//cont++;
		}
		//cont=0;
		rs.close();
		stmt.close();
		
		return listProdutos;
	}
	
	public List<ProdutoBean> getListProdutos()throws SQLException{
		return listProdutos();
	}
	
	public ProdutoBean encontraProduto(int idProduto)  throws RuntimeException
	{
		String sql =	"select * from produto where idProduto=?";
		ProdutoBean produto = null;
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, idProduto);
			
			ResultSet rs = stmt.executeQuery();
			
			boolean status = rs.next();
			
					
					produto = new ProdutoBean();
					produto.setId(idProduto);
					produto.setNome(rs.getString("nome"));
					produto.setPreco(rs.getDouble("preco"));
					
					
		}catch (SQLException e) {
	        throw new RuntimeException(e);
	    	}
		finally
		{
			return produto;
		}
	}
}
