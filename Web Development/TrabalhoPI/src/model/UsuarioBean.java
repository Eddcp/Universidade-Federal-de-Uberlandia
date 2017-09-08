package model;

public class UsuarioBean {
	  private String nome;
	  private String email;
	  private String nomeusuario;
	  private String senha;
	  private String cpf;
	  private String tipo;
	  
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNomeusuario() {
		return nomeusuario;
	}
	public void setNomeusuario(String usuario) {
		this.nomeusuario = usuario;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
}
