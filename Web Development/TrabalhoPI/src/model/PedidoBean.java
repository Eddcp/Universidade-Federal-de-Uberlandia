package model;

public class PedidoBean{
	int idPedido;
	String cpf;
	String nomeProduto;
	int quantidade;
	Double precoProduto;
	Double precoPedido;
	
	public int getIdPedido() {
		return idPedido;
	}
	public String getNomeProduto() {
		return nomeProduto;
	}
	public void setNomeProduto(String nomeProduto) {
		this.nomeProduto = nomeProduto;
	}
	public int getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	public Double getPrecoProduto() {
		return precoProduto;
	}
	public void setPrecoProduto(Double precoProduto) {
		this.precoProduto = precoProduto;
	}
	public Double getPrecoPedido() {
		return precoPedido;
	}
	public void setPrecoPedido(Double precoPedido) {
		this.precoPedido = precoPedido;
	}
	public void setIdPedido(int idPedido) {
		this.idPedido = idPedido;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf){
		this.cpf = cpf;
	}
	
	
	
}
