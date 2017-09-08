<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compra finalizada</title>
 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
	 <link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-theme.min.css" />
	 <script src="./resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="barra_superior_logout.jspf"/>
   
   <div class="container">
   <br></br>
   <br></br>
   <p>Compra finalizada!!! :D</p>
   
   <jsp:useBean id="dao" class="model.PedidoDAO"/>
		<table align="center" border="2px">
			<thead>
				<tr>
					<th>CPF do Cliente</th>
					<th>ID Pedido</th>
					<th>Nome do Produto</th>
					<th>Preco do Produto</th>
					<th>Quantidade</th>
					<th>SubTotal</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="pedido" items="${dao.listPedidos}" varStatus="id">
					<tr>
						<td>${pedido.cpf}</td>
						
						<td>${pedido.idPedido}</td>
				
						<td>${pedido.nomeProduto }</td>
						<td>${pedido.precoProduto}</td>
						<td>${pedido.quantidade }</td>
						<td>${pedido.precoPedido}</td>
						
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
   
   
   </div>
	<script src="//code.jquery.com/jquery.js"></script>
 	<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>