package control;

import javax.servlet.http.HttpServletRequest;

public class Helper {
	HttpServletRequest request;

	public Helper(HttpServletRequest request) {
		this.request = request;
	}
	
	public Logica getAction()
	{
		String action = request.getParameter("action");
		
		//if(action.equals("gravaUsuario"))
		//	return new GravaUsuario();
		//else if(action.equals("cadastroUsuario"))
		//	return new CadastroUsuario();
		
		return null;
	}
	
}
