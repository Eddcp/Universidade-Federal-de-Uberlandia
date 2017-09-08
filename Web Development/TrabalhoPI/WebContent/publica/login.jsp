<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
 <link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-theme.min.css" />
 <script src="./resources/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	<jsp:include page="barra_superior.jspf"/>
 <div class="container" style="padding-top: 80px;">
        <div class="row">
            <div class="container">
                <div class="col-md-8">
                    
                    
                    <form class="form-horizontal" method="post"
                        action="InitialController?action=entrar_no_sistema" role="form">
                        <div class="form-group">
                            <label for="usuario" class="col-sm-3 control-label">Usuario</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="usuario" name="usuario"
                                    placeholder="Digite aqui seu usuario" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="senha" class="col-sm-3 control-label">Senha</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control" id="senha" name="senha"
                                    placeholder="Digite aqui sua senha" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div runat=InitialController class="col-sm-offset-3 col-sm-10">
                                <button type="submit" class="btn btn-default">Entrar
                                 	</button>
                            </div>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>