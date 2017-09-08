package control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ItemBean;
import model.ItemDAO;
import model.PedidoDAO;
import model.ProdutoDAO;
import model.UsuarioBean;
import model.UsuarioDAO;

@WebServlet(name="CarrinhoDeComprasController", urlPatterns={"/CarrinhoDeComprasController"})
public class CarrinhoDeComprasController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private void processarRequisicao(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		RequestDispatcher rd = null;
		ProdutoDAO produtodao = new ProdutoDAO();
		HttpSession session = request.getSession();
		
		if(action.equals("adicionar_ao_carrinho"))
		{
			if(session.getAttribute("carrinho")==null)
			{
				List<ItemBean> carrinho = new ArrayList<ItemBean>();
				carrinho.add(new ItemBean(produtodao.encontraProduto(Integer.parseInt(request.getParameter("id"))),1));
				session.setAttribute("carrinho", carrinho);
			}
			else
			{
				List<ItemBean> carrinho = (List<ItemBean>)session.getAttribute("carrinho");
				int index = isExisting(Integer.parseInt(request.getParameter("id")),carrinho);
				if(index==-1)
					carrinho.add(new ItemBean(produtodao.encontraProduto(Integer.parseInt(request.getParameter("id"))),1));
				else
				{
					int quantidade = carrinho.get(index).getQuantidade() + 1;
					carrinho.get(index).setQuantidade(quantidade);
				}
				session.setAttribute("carrinho", carrinho);
				

			}
			 rd = request.getRequestDispatcher("publica/carrinho.jsp");
		        
		        try {
		            rd.forward(request, response);
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		}
		else if(action.equals("volta_selecao_produtos"))
		{
	    	rd = request.getRequestDispatcher("publica/menu_cliente.jsp");
	    	
	    	try {
	            rd.forward(request, response);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }    
		}
		else if(action.equals("excluir"))
		{
			List<ItemBean> carrinho = (List<ItemBean>) session.getAttribute("carrinho");
			int index = isExisting(Integer.parseInt(request.getParameter("id")),carrinho);
			carrinho.remove(index);
			session.setAttribute("carrinho", carrinho);
			
			rd = request.getRequestDispatcher("publica/carrinho.jsp");
	        
	        try {
	            rd.forward(request, response);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		}
		else if(action.equals("comprar"))
		{
			//List<ItemBean> carrinho = (List<ItemBean>) session.getAttribute("carrinho");
			rd = request.getRequestDispatcher("publica/preencher_dados_finaliza_compra.jsp");
	        
	        try {
	            rd.forward(request, response);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		}
		else if(action.equals("finalizar_compra"))
		{
			List<ItemBean> carrinho = (List<ItemBean>)session.getAttribute("carrinho");
			UsuarioBean usuario = (UsuarioBean)session.getAttribute("usuarioLogado");
			String sessao = ""+session.getAttribute("usuarioLogado").toString();
			ItemDAO item = new ItemDAO();
			PedidoDAO pedido = new PedidoDAO();
			
			try {
				pedido.storePedido(usuario,sessao); //Adiciona na tabela pedido
				int idPedido = pedido.findIdPedido(sessao); //Recupera idPedido
				item.storeItens(carrinho, idPedido);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			rd = request.getRequestDispatcher("publica/compra_finalizada.jsp");
	        
	        try {
	            rd.forward(request, response);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
			
		
		}
 }
	 private int isExisting(int id, List<ItemBean> carrinho)
	 {
		 for (int i=0; i<carrinho.size(); i++)
			 if(carrinho.get(i).getProduto().getId() == id)
				 return i;
		 	 return -1;
	 }
	
	 protected void doGet(HttpServletRequest request,
	            HttpServletResponse response) throws ServletException, IOException {
	        processarRequisicao(request, response);
	    }
	 
	    protected void doPost(HttpServletRequest request,
	            HttpServletResponse response) throws ServletException, IOException{
	        processarRequisicao(request, response);
	    }
}
