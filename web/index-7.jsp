<%-- 
    Document   : index-7
    Created on : 16/11/2017, 11:36:13
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
        <link rel="stylesheet" href="css/form.css">
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
        <script src="js/TMForm.js"></script>
        <script src="js/modal.js"></script>

    </head>

    <body>
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
                                        <li><a href="index-1.jsp">cardápio</a></li>
                                        <li><a href="index-2.jsp">reservas</a></li>
                                        <li><a href="index-4.jsp">contato</a></li>
                                        <li class="current"><a href="index-5.jsp">login</a></li>
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
        <section class="content ctn__1">
            <div class="form_block">
                <div class="container">
                    <div class="row">
                        <h2></h2>
                        <form id="form" >
                            <div class="grid_4">
                            </div>
                            <div class="grid_4">
                                <div class="gall_block">
                                    <div class="maxheight">        
                                        <label><h2>Operação realizada com sucesso!!!</h2></label>
                                    </div>   
                                </div> 
                            </div>  
                            <div class="grid_4">
                            </div>                         
                        </form>   
                    </div>
                    <br/>
                    <div class="row">
                        <div class="grid_4">
                        </div>
                        <div class="grid_4">
                            <label class="btns">
                                <a href="index.jsp" data-type="reset" class="btn" >Retornar</a>
                            </label>
                        </div>
                        <div class="grid_4">
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--</div>-->
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