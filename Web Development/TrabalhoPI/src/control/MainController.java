package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MainController() {
        super();
        
    }

    private void processarRequisicao(HttpServletRequest request, HttpServletResponse response) throws ServletException {
    	Helper helper = new Helper(request);
		Logica logica = helper.getAction();
		
		try{
			String where = logica.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher(where);
			rd.forward(request, response);
		}catch(Exception e){
			System.out.println("Erro no 'executa()' ");
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
