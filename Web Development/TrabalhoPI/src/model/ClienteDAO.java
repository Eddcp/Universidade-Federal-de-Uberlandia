package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClienteDAO {
	Connection connection=null;
	
	public ClienteDAO(){
		connection = new ConnectionFactory().getConnection();
	}
	
	public void adicionaCliente(ClienteBean cliente) throws SQLException{
		//Query
		String sql =	"insert into contatos"+
						"(nome, email, endereco, dataNascimento)"+
						"values(?,?,?,?)";
		// Statement setup
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setString(1, cliente.getNome());
		stmt.setString(2, cliente.getEmail());
		stmt.setString(3, cliente.getEmail());
		Date date = new Date(cliente.getDataNascimento().getTimeInMillis());
		stmt.setDate(4, date);
		
		stmt.execute();
		
		System.out.println("Cliente gravado com sucesso!");
		
		// Closing statement
		stmt.close();
	}
}
