<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Finalizar Compra</title>
 
<link rel="stylesheet" type="text/css"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
 
<link rel="stylesheet" type="text/css"
    href="./resources/bootstrap/css/bootstrap-theme.min.css" />
 
<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
 
</head>
<body>
    <jsp:include page="barra_superior_logout.jspf"/>
 
    <div class="container" style="padding-top: 80px;">
        <div class="row">
            <div class="container">
                <div class="col-md-8">
                    <br />
                    <form class="form-horizontal" method="post"
                        action="CarrinhoDeComprasController?action=finalizar_compra" role="form">
                        
                        <div class="form-group">
                            <label for="nome" class="col-sm-3 control-label">Nome</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="nome" name="nome"
                                    placeholder="Digite aqui seu nome completo" />
                            </div>
                        </div>
                         <div class="form-group">
                            <label for="cpf" class="col-sm-3 control-label">CPF</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="cpf" name="cpf"
                                    placeholder="Digite aqui seu CPF" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="usuario" class="col-sm-3 control-label">Usuário</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="usuario" name="usuario"
                                    placeholder="Digite aqui seu usuário" />
                            </div>
                        </div>
                        <p style="position:relative;left:190px" >Endereço para entrega</p>
                        <div class="form-group">
                            <label for="endereco" class="col-sm-3 control-label">Endereço</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="endereco" name="endereco"
                                    placeholder="Digite aqui seu endereço" />
                            </div>
                        </div>
                         <div class="form-group">
                            <label for="cep" class="col-sm-3 control-label">CEP</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="cep" name="cep"
                                    placeholder="Digite aqui seu CEP" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div  class="col-sm-offset-3 col-sm-10">
                                <button type="submit" class="btn btn-default">Finalizar Compra</button>
                            </div>
                        </div>
 
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>