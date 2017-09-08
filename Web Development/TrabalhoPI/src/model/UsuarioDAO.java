package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {
	private Connection connection;
	public UsuarioDAO()
	{
		this.connection = new ConnectionFactory().getConnection();
	}
	
	public static UsuarioBean validate(String name,String pass){  
		boolean status=false; 
		Connection connection = null;
		try{  
		
		connection = new ConnectionFactory().getConnection();
		      
		PreparedStatement ps=connection.prepareStatement(  
		"select * from usuario where nomeusuario=? and senha=?");  
		ps.setString(1,name);  
		ps.setString(2,pass);  
		      
		ResultSet rs=ps.executeQuery();
		
		status=rs.next();
		
		UsuarioBean usuario = new UsuarioBean();
		usuario.setNome(rs.getString("nome"));
		usuario.setCpf(rs.getString("cpf"));
		usuario.setEmail(rs.getString("email"));
		usuario.setTipo(rs.getString("tipo"));
		usuario.setNomeusuario(rs.getString("nomeusuario"));
		usuario.setSenha(rs.getString("senha"));
				
		return usuario;
		          
		}catch(Exception e){System.out.println(e);}  
			return null;  
		} 
	public void adiciona(UsuarioBean usuario)
	{
		String sql = "insert into usuario"+
				"(nome,email,cpf,nomeusuario,senha,tipo)"+
				"values(?,?,?,?,?,?)";
		try{
			// prepared statement para inserção
	        PreparedStatement stmt = connection.prepareStatement(sql);

	        // seta os valores

	        stmt.setString(1,usuario.getNome());
	        stmt.setString(2,usuario.getEmail());
	        stmt.setString(3,usuario.getCpf());
	        stmt.setString(4,usuario.getNomeusuario());
	        stmt.setString(5, usuario.getSenha());
	        stmt.setString(6, usuario.getTipo());
	        // executa
	        stmt.execute();
	        stmt.close();
	    } catch (SQLException e) {
	        throw new RuntimeException(e);
	    	}
		}
	}

