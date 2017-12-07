<%-- 
    Document   : cadastro-cliente
    Created on : 03/12/2017, 14:39:34
    Author     : Home
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastrar cliente</title> 
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
        <br/>
        <br/>
        <br/>
        <br/>        
        <br/>
        <br/>
        <h1>Cadastrar cliente</h1>
        <form>	    
            <div class="contentform">


                <div class="leftcontact">
                    <div class="form-group">
                        <p>Nome<span>*</span></p>
                        <span class="icon-case"><i class="fa fa-male"></i></span>
                        <input type="text" name="nome" id="nome" data-rule="required" />
                        <div class="validation"></div>
                    </div>

                    <div class="form-group">
                        <p>Sobrenome<span>*</span></p>
                        <span class="icon-case"><i class="fa fa-user"></i></span>
                        <input type="text" name="sobrenome" id="sobrenome" data-rule="required" />
                        <div class="validation"></div>
                    </div>

                    <div class="form-group">
                        <p>Data de nascimento<span>*</span></p>
                        <span class="icon-case"><i class="fa fa-calendar"></i></span>
                        <input type="date" name="nascimento" id="nascimento" data-rule="required" />
                        <div class="validation"></div>
                    </div>



                    <div class="form-group">
                        <p>Telefone <span>*</span></p>	
                        <span class="icon-case"><i class="fa fa-phone"></i></span>
                        <input type="text" name="telefone" id="telefone" data-rule="maxlen:10" />
                        <div class="validation"></div>
                    </div>	

                </div>

                <div class="rightcontact">	


                    <div class="form-group">
                        <p>CPF <span>*</span></p>	
                        <span class="icon-case"><i class="fa fa-user"></i></span>
                        <input type="text" name="cpf" id="cpf" data-rule="maxlen:10" />
                        <div class="validation"></div>
                    </div>	

                    <div class="form-group">
                        <p>Sexo<span>*</span></p>	
                        <select name="sexo">
                            <option value="F">Feminino</option>
                            <option value="M">Masculino</option>
                        </select>
                        <div class="row"><br/><br/></div>
                    </div>	

                    <div class="form-group">
                        <p>E-mail <span>*</span></p>	
                        <span class="icon-case"><i class="fa fa-envelope-o"></i></span>
                        <input type="email" name="email" id="email" data-rule="email" />
                        <div class="validation"></div>
                    </div>	

                    <div class="form-group">
                        <p>Senha <span>*</span></p>
                        <span class="icon-case"><i class="fa fa-info"></i></span>
                        <input type="text" name="senha" id="senha" data-rule="required"/>
                        <div class="validation"></div>
                    </div>

                    <div class="form-group">
                        <p>Confirme a senha <span>*</span></p>
                        <span class="icon-case"><i class="fa fa-info"></i></span>
                        <input type="text" name="senhaConfirm" id="senhaConfirm" data-rule="required" />
                        <div class="validation"></div>
                    </div>
                </div>
            </div>
            <button type="submit" class="bouton-contact">Cadastrar</button>

        </form>	

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


