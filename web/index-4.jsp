<%-- 
    Document   : index-4
    Created on : 16/11/2017, 11:34:57
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

<script>
 
              function send() {
                var email = $("#email").val();
                var nome = $("#nome").val();
                var telefone = $("#telefone").val();
                var mensagem = $("#mensagem").val();

                if (email === "" || nome === "" || telefone === "" || mensagem === "") {
                    alert("Preencha os campos!");
                }
                else {
                    alert("Sua mensagem foi enviada. Em breve entraremos em contato!");
                    window.location.href = 'index-4.jsp';
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
               <li><a href="index-1.jsp">produtos/serviços</a></li>
               <li><a href="index-2.jsp">carrinho</a></li>
               <li class="current"><a href="index-4.jsp">contato</a></li>
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
<section class="content ctn__1"><div class="ic"></div>
  <div class="container">
    <div class="row">
      <div class="grid_12">
        <h2>Find Us</h2>
        <div class="map">
          <div class="row">
            <div class="grid_9">
              <figure class="">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d24214.807650104907!2d-73.94846048422478!3d40.65521573400813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1395650655094" style="border:0"></iframe>
              </figure>
            </div>
            <div class="grid_3">
              <div class="map_block">
                <div class="map_title">Endereço:</div>
                Rua xxxx, <br> nº 000
              </div>
              <div class="map_block">
                <div class="map_title">Telefone:</div>
                xxxx-xxxx <br>9xxxx-xxxx
              </div>
              <div class="map_block">
                <div class="map_title">Email:</div>
                <a href="#">xxxxx@gmail.com</a>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>
<div class="form_block">
  <div class="container">
    <div class="row">
      <div class="grid_11">
        <h2>Fale conosco</h2>
        <form id="form" >
        <label class="name">
        <input type="text" placeholder="Nome:" value="" id="nome"/>
        </label>         
        <label class="email">
        <input type="text" placeholder="E-mail:" value="" id="email"/>
        </label>
        <label class="phone">
        <input type="text" placeholder="Telefone:" value="" id="telefone"/>
        </label>
        <label class="message">
        <textarea placeholder="Mensagem:" id="mensagem"></textarea>
        </label>
        <div class="clear"></div>
        <div class="btns">
        <a href="#" data-type="submit" class="btn" onclick="send()">enviar</a>
        </div>
        </form>   
      </div>
    </div>
  </div>
</div>
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