package control;
 
import java.io.IOException;

 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import model.UsuarioBean;
import model.UsuarioDAO;
 
@WebServlet(name="InitialController", urlPatterns={"/InitialController"})
public class InitialController extends HttpServlet {
    private static final long serialVersionUID = 1L;
        
    public InitialController() {
        super();
    }
     
    private void processarRequisicao(HttpServletRequest request, HttpServletResponse response) throws ServletException {
         
        String action = request.getParameter("action");
 
        if (action == null) {
            throw new ServletException("No action specified.");
        } else if (action.equals("iniciar_criar_conta")) {
            irParaIniciarCriarConta(request, response);
        }
        else if(action.equals("pagina_inicial"))
        {
        	irParaPaginaInicial(request,response);
        }
        else if(action.equals("login"))
        {
        	irParaLogin(request,response);
        }
        else if(action.equals("entrar_no_sistema"))
        {
        	efetuaLogin(request,response);
        }
        else if(action.equals("efetuar_logout"))
        {
        	efetuaLogout(request,response);
        }
    }
    
    private void efetuaLogout(HttpServletRequest request, HttpServletResponse response) 
    {
    	RequestDispatcher rd = null;
    	HttpSession session = request.getSession();
		session.invalidate();
        rd = request.getRequestDispatcher("publica/index.jsp");
        
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    private void efetuaLogin(HttpServletRequest request, HttpServletResponse response){
    	RequestDispatcher rd = null;
    	
    	String name = request.getParameter("usuario");
    	String pass = request.getParameter("senha");
    	HttpSession session = request.getSession();
    	
    	UsuarioBean novoUsuario = UsuarioDAO.validate(name,pass);
    	if(novoUsuario!=null && novoUsuario.getTipo().equals("cliente"))
    	{
    		session.setAttribute("usuarioLogado", novoUsuario);
    		rd = request.getRequestDispatcher("publica/menu_cliente.jsp");
    	}
    	else if(novoUsuario!=null && novoUsuario.getTipo().equals("admin"))
    	{
    		session.setAttribute("usuarioLogado", novoUsuario);
    		rd = request.getRequestDispatcher("publica/menu_administrador.jsp");
    	}
       
    	
    	else{
    		rd = request.getRequestDispatcher("publica/usuario_incorreto.jsp");
    	}
         
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    private void irParaLogin(HttpServletRequest request, HttpServletResponse response){
    	RequestDispatcher rd = null;
        rd = request.getRequestDispatcher("publica/login.jsp");
         
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private void irParaPaginaInicial(HttpServletRequest request, HttpServletResponse response){
    	RequestDispatcher rd = null;
        rd = request.getRequestDispatcher("publica/index.jsp");
         
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
 
    private void irParaIniciarCriarConta(HttpServletRequest request, HttpServletResponse response){
         
        RequestDispatcher rd = null;
        rd = request.getRequestDispatcher("publica/criar_conta.jsp");
         
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processarRequisicao(request, response);
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processarRequisicao(request, response);
    }
}