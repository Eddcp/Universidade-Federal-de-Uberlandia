<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu Cliente</title>
	 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
	 <link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-theme.min.css" />
	 <script src="./resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
   <jsp:include page="barra_superior_logout.jspf"/>
   
   <div class="container">
 		
	<br></br>
	<br></br>
		<jsp:useBean id="dao" class="model.ProdutoDAO"/>
		<table align="center" border="2px">
			<thead>
				<tr>
					<th>Nome</th>
					<th>Preco</th>
					<th>Compre</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="produto" items="${dao.listProdutos}" varStatus="id">
					<tr>
						<td>${produto.nome}</td>
						
						<td>${produto.preco}
							
						</td>
						<td> 
						<div class="form-group">
                            <div  class= col-sm-10">
                                <button runat="CarrinhoDeComprasController" type="submit" class="btn btn-default"><a href="CarrinhoDeComprasController?id=${produto.id}&action=adicionar_ao_carrinho">Adicionar ao Carrinho
                                    </a></button> 
                                   
                            </div>
                        </div></td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
   </div>
  <script src="//code.jquery.com/jquery.js"></script>
 <script src="./resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>

