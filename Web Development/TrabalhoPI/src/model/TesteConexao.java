package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;

public class TesteConexao {

	/*public static void main(String[] args) throws SQLException
	{
		Connection connection = null;
		try
		{
			connection = new ConnectionFactory().getConnection();
			System.out.println("Conexão aberta!");
			/*String sql = "insert into cliente " +
	                "(nome,email,endereco,dataNascimento,cpf) " +
	                "values (?,?,?,?,?)";
			String sql = "insert into usuario" +
	                "(nome,senha,cpf)"+
					"values(?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			//Preenche valores da tabela
			//Criando cliente, não vai ficar aqui
			stmt.setString(1, "eduardo");
			stmt.setString(2, "123");
			stmt.setString(3, "06278963671");
	        
	        
	     // executa
	        stmt.execute();
	        stmt.close();
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}finally{
			connection.close();
		}

        System.out.println("Gravado!");

		
	}*/
}
