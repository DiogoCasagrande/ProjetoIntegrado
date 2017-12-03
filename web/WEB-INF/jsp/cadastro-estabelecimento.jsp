<%-- 
    Document   : cadastro
    Created on : 03/12/2017, 09:42:53
    Author     : Home
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="ressource/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
        <title>CADASTRO RESERVE-JA</title>
    </head>
    <body>
        <h1>Cadastro de estabelecimento Reserve-ja!</h1>

        <form>
            <div class="container">
                <div class="row">
                    <div class="col">
                        E-mail
                        <input type="text" name="email" id="email" class="form-control" required="">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        Senha
                        <input type="password" name="senha" id="senha" class="form-control" required="">
                    </div>
                    <div class="col">
                        Digite a senha novamente
                        <input type="password" name="senha" id="senha" class="form-control" required="">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        Nome do estabelecimento
                        <input type="text" name="nome" id="nome" class="form-control" required="">
                    </div>
                    <div class="col">
                        Nome do responsavel
                        <input type="text" name="nome" id="nome" class="form-control" required="">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        CNPJ
                        <input type="text" name="cnpj" id="cnpj" class="form-control" required="">
                    </div>
                    <div class="col">
                        Endereço
                        <input type="text" name="endereco" id="endereco" class="form-control" required="">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        Telefone
                        <input type="text" name="telefone" id="telefone" class="form-control" required="">
                    </div>
                    <div class="col">
                        Tipo de restaurante
                        <div class="radio">
                            <label><input type="radio" name="optradio" >Social</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="optradio" >Familia</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="optradio" >Romântico</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="optradio" >Fisiológica</label>
                        </div>
                    </div>
                    <div class="col">
                        cardápio(Pode ser enviado posteriormente)
                        <input type="file" name="cardapio" id="cardapio" class="form-control">
                    </div>
                    <div class="col">
                        logo(Pode ser enviado posteriormente)
                        <input type="file" name="logo" id="logo" class="form-control">
                    </div>
                    <div class="col">
                        quantidade de mesas
                        <input type="range">
                    </div>
                </div>
                <div class ="row">
                    <div class="form-group">
                        <input type="submit" id="submit" class="btn btn-primary" value="Cadastrar">
                    </div>
                    <div class="form-group">
                        <input type="submit" id="submit" class="btn btn-primary" value="Cancelar">
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
