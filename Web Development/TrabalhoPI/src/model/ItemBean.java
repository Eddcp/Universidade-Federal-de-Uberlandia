package model;

import java.io.Serializable;

public class ItemBean implements Serializable {
	public ProdutoBean produto = new ProdutoBean();
	private int quantidade;
	public ProdutoBean getProduto() {
		return produto;
	}
	public void setProduto(ProdutoBean produto) {
		this.produto = produto;
	}
	public int getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	public ItemBean(ProdutoBean produto, int quantidade) {
		super();
		this.produto = produto;
		this.quantidade = quantidade;
	}
	
	public ItemBean()
	{
		super();
	}
	
}
