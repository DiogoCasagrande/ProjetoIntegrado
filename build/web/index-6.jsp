<%-- 
    Document   : index-6
    Created on : 16/11/2017, 11:35:51
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
        <!--<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
<script language="JavaScript" type="text/javascript" src="/js/jquery-1.2.6.min.js"></script>
<script language="JavaScript" type="text/javascript" src="/js/jquery-ui-personalized-1.5.2.packed.js"></script>
<script language="JavaScript" type="text/javascript" src="/js/sprinkle.js"></script>-->
        <script>
            function clear1() {
                $("#senha").val("");
                $("#senhaconfirm").val("");
            }

            function send1() {
                var senha = $("#senha").val();
                var senhaconfirm = $("#senhaconfirm").val();

                if (senha === "" || senhaconfirm === "") {
                    alert("Preencha os campos!");
                }
                else {
                    alert("Senha alterada com sucesso!");
                    window.location.href = 'index.jsp';
                }
            }

        </script>
        <!--[if lt IE 9]>
         <div style=' clear: both; text-align:center; position: relative;'>
           <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
             <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
           </a>
        </div>
        <script src="js/html5shiv.js"></script>
        <link rel="stylesheet" media="screen" href="css/ie.css">
        
        
        <![endif]-->
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
        <section class="content ctn__1"><div class="ic">More Website Templates @ TemplateMonster.com - July 30, 2014!</div>
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
                                        <label><h2>Alterar senha</h2></label>
                                        <label class="password">
                                            <input type="password" name="password" placeholder="Antiga senha:" value="" id="senha"/>
                                        </label>
                                        <label class="password">
                                            <input type="password" name="password" placeholder="Nova senha:" value="" id="senhaconfirm"/>
                                        </label>
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
                                <a href="#" data-type="reset" class="btn" onclick="clear1()">limpar</a>
                                <a href="#" data-type="submit" class="btn" onclick="send1()">enviar</a>
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
