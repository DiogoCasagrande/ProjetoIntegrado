<%-- 
    Document   : index
    Created on : 16/11/2017, 11:33:00
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
        <link rel="stylesheet" href="css/stuck.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/touchTouch.css">
        <script src="js/jquery.js"></script>
        <script src="js/jquery-migrate-1.1.1.js"></script>
        <script src="js/script.js"></script> 
        <script src="js/superfish.js"></script>
        <script src="js/jquery.equalheights.js"></script>
        <script src="js/jquery.mobilemenu.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/tmStickUp.js"></script>
        <script src="js/jquery.ui.totop.js"></script>
        <script src="js/touchTouch.jquery.js"></script>
        <!--<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />-->

        <script>
            $(document).ready(function () {

                $().UItoTop({easingType: 'easeOutQuart'});
                $('#stuck_container').tmStickUp({});
                $('.gallery .gall_item').touchTouch();

            });
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

    <body class="page1" id="top">
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
                            <div class="navigation">
                                <nav>
                                    <ul class="sf-menu">
                                        <li class="current"><a href="index.jsp">home</a></li>
                                        <li><a href="index-1.jsp">produtos/serviços</a></li>
                                        <li><a href="index-2.jsp">carrinho</a></li>
                                        <li><a href="index-4.jsp">contato</a></li>
                                        <li><a href="index-5.jsp">login</a></li>
                                        <li><a href="index-6.jsp">ex-alt-senha</a></li>
                                        <li><a href="index-7.jsp">ex-op-real-sucesso</a></li>
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
        <section class="content"><div class="ic">More Website Templates @ TemplateMonster.com - July 30, 2014!</div>
            <div class="container">
                <div class="row">
                    <div class="grid_4">
                        <div class="banner">
                            <div class="gall_block">
                                <img src="images/page1_img1.jpg" alt="">
                                <div class="bann_capt ">
                                    <div class="maxheight">
                                        <img src="images/icon2.png" alt="">
                                        <div class="bann_title">produto - a</div>
                                        <a href="index-1.jsp">detalhes</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid_4">
                        <div class="banner">
                            <div class="gall_block">
                                <div class="bann_capt  bn__1">
                                    <div class="maxheight">
                                        <img src="images/icon1.png" alt="">
                                        <div class="bann_title">produto - b   </div>
                                        <a href="index-1.jsp">detalhes</a>
                                    </div>
                                </div>
                                <img src="images/page1_img2.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="grid_4">
                        <div class="banner ">
                            <div class="gall_block">
                                <img src="images/page1_img3.jpg" alt="">
                                <div class="bann_capt  bn__2">
                                    <div class="maxheight">
                                        <img src="images/icon3.png" alt="">
                                        <div class="bann_title">produto - c</div>
                                        <a href="index-1.jsp">detalhes</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="grid_12">
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                    <div class="grid_12">
                        <div class="box">
                            <div class="row">
                                <div class="grid_5 preffix_1">
                                    <h2>Bem Vindo</h2>
                                    <p>A ingestão diária de verduras, legumes, frutas e proteínas de baixa caloria são essenciais para manter uma boa alimentação.</p>
                                    Por isso, nós da Brazilian Healthy Food nos preocupamos em oferecer somente pratos com ingredientes saudáveis e com um sabor especial.<br>

                                </div>
                                <div class="grid_5">
                                    <h2></h2>
                                    <p>Uma alimentação saudável proporciona qualidade de vida, pois faz nosso corpo funcionar adequadamente respondendo a todas as funções e é uma das melhores formas de prevenção para qualquer doença.<br/>
                                        <br/>
                                        Adquirir uma alimentação saudável requer quantidades certas, sem exageros e também sem exclusões, rotina de horários e alimentos que forneçam ao corpo: proteínas, carboidratos, gorduras, fibras, cálcio, vitaminas e outros minerais.</p>               
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid_12">
                        <h2>Menu</h2>
                    </div>
                    <div class="gallery">
                        <div class="grid_4"><a href="images/big1.jpg" class="gall_item"><img src="images/page1_img4.jpg" alt=""></a><a href="index-1.jsp" class="link1">+</a><div class="clear"></div></div>
                        <div class="grid_4"><a href="images/big2.jpg" class="gall_item"><img src="images/page1_img5.jpg" alt=""></a><a href="index-1.jsp" class="link1">+</a><div class="clear"></div></div>
                        <div class="grid_4"><a href="images/big3.jpg" class="gall_item"><img src="images/page1_img6.jpg" alt=""></a><a href="index-1.jsp" class="link1">+</a><div class="clear"></div></div>
                    </div>
                    <div class="grid_4">
                        <h2>Depoimentos</h2>
                        <blockquote class="bq1">
                            <img src="images/page1_img7.jpg" alt="" class="img_inner fleft noresize">
                            <div class="extra_wrapper">
                                <div class="bq_title color1">Bruno de Souza</div>
                                Impossível sair do BHF e dar aquela desculpa de que comida saudável não é saborosa!            
                            </div>
                        </blockquote>
                    </div>
                    <div class="grid_4">
                        <h2>Novidades</h2>
                        <div class="block2">
                            <time datetime="2014-01-01">11<br>NOV</time>
                            <div class="extra_wrapper">
                                <div class="text1"><a href="#">Jantar saudável a luz de velas</a></div>Esperamos todos para um delicioso jantar romântico. Diversão e sabor não vai faltar.
                            </div>
                        </div>
                        <div class="block2">
                            <time datetime="2014-01-01">15<br>DEZ</time>
                            <div class="extra_wrapper">
                                <div class="text1"><a href="#">Som ao vivo</a></div>Trouxemos para vocês a tranquilidade de música ao vivo com deliciosos pratos, tanto no almoço quanto no jantar.
                            </div>
                        </div>
                    </div>
                    <div class="grid_4">
                        <h2>Horários</h2>
                        <ul class="shed">
                            <li><span>Manha:</span> 8AM - 11AM</li>
                            <li><span>Tarde:</span> 12AM - 15PM</li>
                            <li><span>Happy Hour | Noite:</span> 8PM - 11PM</li>
                        </ul>
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

