package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EfetuarLogout {
	 private void processarRequisicao(HttpServletRequest request,
	            HttpServletResponse response) throws ServletException, IOException {
		 String action = request.getParameter("action");;
	        if (action == null) {
	            throw new ServletException("No action specified.");
	        } else if (action.equals("efetuar_logout")) {
	            efetuaLogout(request, response);
	        }
	 
	 }
	 
	 private void efetuaLogout(HttpServletRequest request,
	            HttpServletResponse response)
	            throws IOException, ServletException 
	            {
		 			HttpSession session = request.getSession();
		 			session.invalidate();
		 			RequestDispatcher rd = null;
			        rd = request.getRequestDispatcher("publica/index.jsp");
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
