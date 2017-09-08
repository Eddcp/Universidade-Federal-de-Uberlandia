<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Informações do Carrinho</title>
 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
	 <link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-theme.min.css" />
	 <script src="./resources/bootstrap/js/bootstrap.min.js"></script>


</head>
<body>
	<jsp:include page="barra_superior_logout.jspf"/>
	<br></br>
	<br></br>
   <div class="container">
   		<a href="CarrinhoDeComprasController?action=volta_selecao_produtos">Continue comprando</a>
   		<table cellpadding="2" cellspacing="2" border="1" align="center">
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Preco</th>
				<th>Quantidade</th>
				<th>Sub Total</th>
				<th>Opcao</th>
				
			</tr>
			<c:forEach var="it" items="${sessionScope.carrinho}">
				<c:set var="s" value="${s +it.produto.preco * it.quantidade}"></c:set>
				<tr>
					<td align="center">${it.produto.id}</td>
					<td>${it.produto.nome}</td>
					<td>${it.produto.preco}</td>
				    <td>${it.quantidade}</td> 
					<td>${it.produto.preco * it.quantidade}</td>
					<td><button><a href="CarrinhoDeComprasController?id=${it.produto.id}&action=excluir">Retirar do carrinho</a></button></td>
					
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5" align="right">Total: </td>
				<td>${s }</td>
			</tr>
		</table>
		<div class="container">
			<form class="form-horizontal" method="post"
	                        action="CarrinhoDeComprasController?action=comprar" role="form">
	   			 <div class="form-group">
	   				<div style="position:relative;left:750px; class="col-sm-offset-3 col-sm-10">
	                                <button type="submit" class="btn btn-default">Comprar</button>
	             	</div>
	             </div>
	        </form>
        </div>
   </div>
	
</body>
</html>