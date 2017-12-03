<%-- 
    Document   : login
    Created on : 03/12/2017, 09:29:26
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login (Reserve-já)</title>
    </head>
    <body>
        <h1>Entrar</h1>
        <form action="login" method="post">
            <p>
                E-mail<br>
                <input type="text" name="email"/>
            </p>
            <p>
                Senha<br>
                <input type="password" name="password"/>
            </p>
            <p>
                <input type="submit" value="entrar">
            </p>
        </form>
    </body>
</html>
