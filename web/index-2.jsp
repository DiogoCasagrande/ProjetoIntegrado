<%-- 
    Document   : index-2
    Created on : 16/11/2017, 11:34:33
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>ade-dev-web</title>
        <meta charset="utf-8">
        <meta name = "format-detection" content = "telephone=no" />
        <link rel="icon" href="images/favicon.ico">
        <link rel="shortcut icon" href="images/favicon.ico" />
        <link rel="stylesheet" href="booking/css/booking.css">
        <link rel="stylesheet" href="css/stuck.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/jquery.js"></script>
        <script src="js/jquery-migrate-1.1.1.js"></script>
        <script src="js/script.js"></script> 
        <script src="js/superfish.js"></script>
        <script src="js/jquery.equalheights.js"></script>
        <script src="js/jquery.mobilemenu.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/tmStickUp.js"></script>
        <script src="js/jquery.ui.totop.js"></script>
        <script src="booking/js/booking.js"></script>

        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            th.head{
                font-weight: 700;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>
    </head>

    <body>
        <!--==============================
                      header
        =================================-->
        <header>
            <!--==============================
                        Stuck menu
            =================================-->
            <section id="stuck_container">
                <div class="container">
                    <div class="row">
                        <div class="grid_12">
                            <h1>
                                <a href="index.jsp">
                                    <img src="images/logo.png" alt="Logo alt">
                                </a>
                            </h1>  
                            <div class="navigation ">
                                <nav>
                                    <ul class="sf-menu">
                                        <li><a href="index.jsp">home</a></li>
                                        <li><a href="index-1.jsp">produtos/serviços</a></li>
                                        <li class="current"><a href="index-2.jsp">carrinho</a></li>
                                        <li><a href="index-4.jsp">contato</a></li>
                                        <li><a href="index-5.jsp">login</a></li>
                                    </ul>
                                </nav>        
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section> 
        </header>        

        <!--=====================
                  Content
        ======================-->
        <section class="content"><div ></div>
            <div class="container">
                <div class="row">
                    <div class="grid_8">
                        <h2>carrinho</h2>
                        <form>
                            <table>
                                <tr >
                                    <th class="head">Itens</th>
                                    <th class="head">Valor</th>
                                    <th class="head">Quantidade</th>
                                    <th class="head">Excluir</th>
                                </tr>
                                <tr>
                                    <td>produto-a</td>
                                    <td>R$xx.xx</td>
                                    <td><input type="text" size="1" value="1"></td>
                                    <td>
                                        <label class="btns">
                                            <a href="#" data-type="reset" class="btn" onclick="alert('Um dia será deletado!')">Excluir</a>
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>produto-b</td>
                                    <td>R$xx.xx</td>
                                    <td><input type="text" size="1" value="1"></td>
                                    <td>
                                        <label class="btns">
                                            <a href="#" data-type="reset" class="btn" onclick="alert('Um dia será deletado!')">Excluir</a>
                                        </label>
                                    </td>
                                <tr>
                                    <td>produto-c</td>
                                    <td>R$xx.xx</td>
                                    <td><input type="text" size="1" value="1"></td>
                                    <td>
                                        <label class="btns">
                                            <a href="#" data-type="reset" class="btn" onclick="alert('Um dia será deletado!')">Excluir</a>
                                        </label>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>

                </div>
            </div>
        </section>
        <!--==============================
                      footer
        =================================-->
        <footer id="footer">
            <div class="container">
                <div class="row">
                    <div class="grid_12">  
                        <div class="socials">
                            <a href="#" class="fa fa-twitter"></a>
                            <a href="#" class="fa fa-facebook"></a>
                            <a href="#" class="fa fa-google-plus"></a>
                            <a href="#" class="fa fa-pinterest"></a>
                        </div>
                        <div class="copyright"><span class="brand">ADE </span> &copy; <span id="copyright-year"></span> | <a href="#">Privacy Policy</a> <div>Website designed by Grupo CCO/SI</div>
                        </div>
                    </div>
                </div>
            </div> 
        </footer> 

    </body>
</html>

