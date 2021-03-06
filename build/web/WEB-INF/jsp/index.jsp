<%-- 
    Document   : index
    Created on : 05/12/2017, 07:07:30
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--
        New Event
        http://www.templatemo.com/tm-486-new-event
        -->
        <title>Reserve Já!</title>
        <meta name="description" content="">
        <meta name="author" content="">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link rel="stylesheet" href="ressource/css/bootstrap.min.css">
        <link rel="stylesheet" href="ressource/css/animate.css">
        <link rel="stylesheet" href="ressource/css/font-awesome.min.css">
        <link rel="stylesheet" href="ressource/css/owl.theme.css">
        <link rel="stylesheet" href="ressource/css/owl.carousel.css">

        <!-- Main css -->
        <link rel="stylesheet" href="ressource/css/style.css">

        <!-- Google Font -->
        <link href='https://fonts.googleapis.com/css?family=Poppins:400,500,600' rel='stylesheet' type='text/css'>

        
    </head>
    <body data-spy="scroll" data-offset="50" data-target=".navbar-collapse">


        <!-- =========================
             NAVIGATION LINKS     
        ============================== -->
        <div class="navbar navbar-fixed-top custom-navbar" role="navigation">
            <div class="container">

                <!-- navbar header -->
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>
                    <a href="/projeto-integrado2/" class="navbar-brand">Reserve Já!</a>
                </div>

                <div class="collapse navbar-collapse">

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/projeto-integrado2/" class="smoothScroll">Home</a></li>
                        <li><a href="/projeto-integrado2/seja_nosso_parceiro" class="smoothScroll">Seja nosso parceiro</a></li>
                        <li><a href="/projeto-integrado2/estabelecimentos" class="smoothScroll">Estabelecimentos</a></li>
                        <!--<li><a href="/projeto-integrado2/perfil" class="smoothScroll">Perfil</a></li>-->
                        <li><a href="/projeto-integrado2/login" class="smoothScroll">Login</a></li>
                    </ul>
                </div>
            </div>
        </div>


        <!-- =========================
            INTRO SECTION   
        ============================== -->
        <section id="intro" class="parallax-section">

            <div class="container">
                <div class="row">

                    <div class="col-md-12 col-sm-12">
                        <h1 class="wow fadeInUp" data-wow-delay="0.9s" style="color: #FFF;">Reserve Já!</h1>
                        <br/>
                        <br/>
                        <div class="col-md-3" data-wow-delay="1.1s"></div>
                        <div class="col-md-8" data-wow-delay="1.3s">
                            <span class="icon-case"><i class="fa fa-search"></i></span>
                            <input style="color:#000" type="text" placeholder="Pesquisar por cidade......">


                        </div>
                        <div class="col-md-4" data-wow-delay="1.3s"></div>
                        <div class="col-md-4" data-wow-delay="1.3s">
                            
                            
                            <a href="/projeto-integrado2/estabelecimentos" class="btn btn-lg btn-danger smoothScroll wow fadeInUp" data-wow-delay="1.3s">PESQUISAR</a>
                        </div>
                        <div class="col-md-4" data-wow-delay="1.3s"></div>
                    </div>
                </div>
            </div>
        </section>


        <!-- =========================
            OVERVIEW SECTION   
        ============================== -->
        <section id="overview" class="parallax-section">
            <div class="container">
                <div class="row">

                    <div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.6s">
                        <h3>Explore os melhores restaurantes!</h3>
                        <p>Já reparou que ouvimos mais sobre Netflix e menos video locadora? Mais Airbnb e menos hotel? Mais Uber e menos taxi? Estamos em uma fase de transiçao onde tudo enferruja cada vez mais rápido!</p>
                        <p>Estamos em uma época que é preciso inovar. Não perca essa chance!</p>
                    </div>

                    <div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.9s">
                        <img src="images/overview-img.jpg" class="img-responsive" alt="Overview">
                    </div>

                </div>
            </div>
        </section>


        <!-- =========================
            DETAIL SECTION   
        ============================== -->
        <section id="detail" class="parallax-section">
            <div class="container">
                <div class="row">

                    <div class="wow fadeInLeft col-md-4 col-sm-4" data-wow-delay="0.3s">
                        <i class="fa fa-ticket"></i>
                        <h3>Escolha o restaurante</h3>
                        <p>Veja todo o cardápio disponível do restaurante e escolha seu prato com antecedência.</p>
                    </div>

                    <div class="wow fadeInUp col-md-4 col-sm-4" data-wow-delay="0.6s">
                        <i class="fa fa-cutlery"></i>
                        <h3>Reserve sua mesa</h3>
                        <p>Escolha a melhor mesa disponível no restaurante, com o número de assentos desejados.</p>
                    </div>

                    <div class="wow fadeInRight col-md-4 col-sm-4" data-wow-delay="0.9s">
                        <i class="fa fa-money"></i>
                        <h3>Divirta-se!</h3>
                        <p>Após realizar sua reserva basta ir ao restaurante e se divertir! O pagamento só é realizado no local.</p>
                    </div>

                </div>
            </div>
        </section>

        <!-- =========================
            SPEAKERS SECTION   
        ============================== -->
        <section id="speakers" class="parallax-section">
            <div class="container">
                <div class="row">

                    <div class="col-md-12 col-sm-12 wow bounceIn">
                        <div class="section-title">
                            <h2>Estabelecimentos</h2>
                            <p>Estes são alguns dos estabelecimentos selecionados pela nossa equipe.</p>
                        </div>
                    </div>

                    <!-- Testimonial Owl Carousel section
                    ================================================== -->
                    <div id="owl-speakers" class="owl-carousel">

                        <div class="item wow fadeInUp col-md-3 col-sm-3" data-wow-delay="0.9s">
                            <div class="speakers-wrapper">
                                <img src="images/speakers-img1.jpg" class="img-responsive" alt="speakers">
                                <div class="speakers-thumb">
                                    <h3>Vegan Food</h3>
                                    <h6>Culinária vegana</h6>
                                </div>
                            </div>
                        </div>

                        <div class="item wow fadeInUp col-md-3 col-sm-3" data-wow-delay="0.6s">
                            <div class="speakers-wrapper">
                                <img src="images/speakers-img2.jpg" class="img-responsive" alt="speakers">
                                <div class="speakers-thumb">
                                    <h3>Hambuguer TOP</h3>
                                    <h6>Hamburgueria</h6>
                                </div>
                            </div>
                        </div>

                        <div class="item wow fadeInUp col-md-3 col-sm-3" data-wow-delay="0.9s">
                            <div class="speakers-wrapper">
                                <img src="images/speakers-img3.jpg" class="img-responsive" alt="speakers">
                                <div class="speakers-thumb">
                                    <h3>Sushi Legal</h3>
                                    <h6>Culinária Japonesa</h6>
                                </div>
                            </div>
                        </div>

                        <div class="item wow fadeInUp col-md-3 col-sm-3" data-wow-delay="0.6s">
                            <div class="speakers-wrapper">
                                <img src="images/speakers-img4.jpg" class="img-responsive" alt="speakers">
                                <div class="speakers-thumb">
                                    <h3>Espetinho 1</h3>
                                    <h6>Churrasco no espeto</h6>
                                </div>
                            </div>
                        </div>

                        <div class="item wow fadeInUp col-md-3 col-sm-3" data-wow-delay="0.6s">
                            <div class="speakers-wrapper">
                                <img src="images/speakers-img5.jpg" class="img-responsive" alt="speakers">
                                <div class="speakers-thumb">
                                    <h3>Dona Bella</h3>
                                    <h6>Padaria</h6>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </section>

        <!-- =========================
            FOOTER SECTION   
        ============================== -->
        <footer>
            <div class="container">
                <div class="row">

                    <div class="col-md-12 col-sm-12">

                        <p class="wow fadeInUp" data-wow-delay="0.6s">Copyright &copy; 2017 Reserve Já! 

                            Design: Letícia Serpa
                        <ul class="social-icon">
                            <li><a href="#" class="fa fa-facebook wow fadeInUp" data-wow-delay="1s"></a></li>
                            <li><a href="#" class="fa fa-twitter wow fadeInUp" data-wow-delay="1.3s"></a></li>
                            <li><a href="#" class="fa fa-dribbble wow fadeInUp" data-wow-delay="1.6s"></a></li>
                            <li><a href="#" class="fa fa-behance wow fadeInUp" data-wow-delay="1.9s"></a></li>
                            <li><a href="#" class="fa fa-google-plus wow fadeInUp" data-wow-delay="2s"></a></li>
                        </ul>

                    </div>

                </div>
            </div>
        </footer>


        <!-- Back top -->
        <a href="#back-top" class="go-top"><i class="fa fa-angle-up"></i></a>


        <!-- =========================
             SCRIPTS   
        ============================== -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.parallax.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/custom.js"></script>


    </body>
</html>