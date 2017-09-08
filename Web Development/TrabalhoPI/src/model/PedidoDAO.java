package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PedidoDAO {

	Connection connection=null;
	private List<PedidoBean> listPedidos;
	public PedidoDAO(){
		connection = new ConnectionFactory().getConnection();
		listPedidos = new ArrayList<PedidoBean>();
	}
	public int findIdPedido(String sessao) throws SQLException
	{
		String sql = "select idPedido from pedido where sessao like ?";
	try
	{
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setString(1, sessao);
		
		ResultSet rs = stmt.executeQuery();
		rs.next();
		int indicePedido = rs.getInt("idPedido");
		
		return indicePedido;
		// Closing statement
	
	}catch (SQLException e) {
       throw new RuntimeException(e);
      
   	}
	
	}
	
	public void storePedido(UsuarioBean usuario, String sessao) throws SQLException
	{
		String sql = "insert into pedido"+
					 "(cpf,sessao)"+
					 "values(?,?)";
		try
		{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, usuario.getCpf());
			stmt.setString(2, sessao);
			
			stmt.execute();
			
			System.out.println("Gravado!");
			
			// Closing statement
			stmt.close();
		}catch (SQLException e) {
	        throw new RuntimeException(e);
	       
	    	}
		 
		
	}
	
	public List<PedidoBean> listPedidos() throws SQLException
	{
		listPedidos.clear();
		//Lista as vendas concretizadas
		String sql = "select u.cpf,u.nome,p.idPedido,pr.nome,pr.preco,i.quantidade from usuario u, pedido p, item i, produto pr"
				+" where p.idPedido = i.idPedido and "+
				"i.idProduto = pr.idProduto and "+
				"p.cpf = u.cpf";
		try
		{
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			System.out.println("Olaaaaaaa");
			ResultSet rs = stmt.executeQuery();
			while(rs.next()){
				PedidoBean pedido = new PedidoBean();
				pedido.setCpf(rs.getString("u.cpf"));
				pedido.setIdPedido(rs.getInt("p.idPedido"));
				pedido.setNomeProduto(rs.getString("pr.nome"));
				pedido.setPrecoProduto(rs.getDouble("pr.preco"));
				pedido.setQuantidade(rs.getInt("i.quantidade"));
				pedido.setPrecoPedido(rs.getDouble("pr.preco")*rs.getInt("i.quantidade"));
			
				listPedidos.add(pedido);
			}
			rs.close();
			stmt.close();
			
			return listPedidos;
			// Closing statement
		
		}catch (SQLException e) {
	       throw new RuntimeException(e);
	      
	   	}
		
		
	}
	public List<PedidoBean> getListPedidos()throws SQLException{
		return listPedidos();
	}
}
