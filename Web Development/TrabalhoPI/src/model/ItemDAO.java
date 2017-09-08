package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import model.ItemBean;

public class ItemDAO {
	Connection connection=null;
	public ItemDAO(){
		connection = new ConnectionFactory().getConnection();
	}
	

	
	
	public void storeItens(List<ItemBean> carrinho, int idPedido) throws SQLException{
		//Query
				String sql =	"insert into item"+
								"(idProduto,idPedido,quantidade)"+
								"values(?,?,?)";
				// Statement setup
				
				PreparedStatement stmt = connection.prepareStatement(sql);
				for(ItemBean i:carrinho) {
				    System.out.println(i.getProduto().getNome());
				    stmt.setInt(1, i.getProduto().getId());
					stmt.setInt(2, idPedido);
					stmt.setInt(3, i.getQuantidade());
					stmt.execute();
				}
				
				
				
				
				System.out.println("Gravado!");
				
				// Closing statement
				stmt.close();
	}
}
