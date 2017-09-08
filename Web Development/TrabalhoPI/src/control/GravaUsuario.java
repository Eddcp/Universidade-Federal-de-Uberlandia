package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UsuarioBean;
import model.UsuarioDAO;

@WebServlet("/GravaUsuario")
public class GravaUsuario extends HttpServlet{
	
	 private void processarRequisicao(HttpServletRequest request,
	            HttpServletResponse response) throws ServletException, IOException {
	 
	        String action = request.getParameter("action");
	 
	        if (action == null) {
	            throw new ServletException("No action specified.");
	        } else if (action.equals("criar_conta")) {
	            criarConta(request, response);
	        }
	    }
	 private void criarConta(HttpServletRequest request,
	            HttpServletResponse response)
	            throws IOException, ServletException {
	                        
	        PrintWriter out = response.getWriter();
	                        
	        
	        // pegando os parâmetros do request
	        String nome = request.getParameter("nome");
	        String email = request.getParameter("email");
	        String cpf = request.getParameter("cpf");
	        String usuario = request.getParameter("usuario");
	        String senha = request.getParameter("password");
	    
	        
	        // monta um objeto contato
	        UsuarioBean user = new UsuarioBean();
	        user.setNome(nome);
	        user.setCpf(cpf);
	        user.setEmail(email);
	        user.setNomeusuario(usuario);
	        user.setSenha(senha);
	        user.setTipo("cliente");
	        
	        // salva o contato
	        UsuarioDAO dao = new UsuarioDAO();
	        dao.adiciona(user);
	        
	      
	        //Vá para o próximo jsp
	        RequestDispatcher rd = null;
	        rd = request.getRequestDispatcher("publica/conta_criada.jsp");
	        
	        try {
	            rd.forward(request, response);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        
	      
	 }
	 protected void doGet(HttpServletRequest request,
	            HttpServletResponse response) throws ServletException, IOException {
	        processarRequisicao(request, response);
	    }
	 
	    protected void doPost(HttpServletRequest request,
	            HttpServletResponse response) throws ServletException, IOException {
	        processarRequisicao(request, response);
	    }
}
