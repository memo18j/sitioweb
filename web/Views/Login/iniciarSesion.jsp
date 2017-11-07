<%--
    Document   : iniciarSesion
    Created on : 19/04/2017, 08:54:17 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Facultad Ingenieria UFPS</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Favicon -->
        <link href='https://ww2.ufps.edu.co/assets/img/ico/favicon.ico' rel='Shortcut icon'>

        <!-- Web Fonts -->
        <link rel='stylesheet' type='text/css'
              href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>
        <script src="http://code.jquery.com/jquery.js"></script>
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">


        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/bootstrap/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/ie8.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/blocks.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/plugins.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/style.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/app.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/shop.plugins.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/shop.blocks.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/style-switcher/style-switcher.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/shop.style.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/headers/header-v6.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/headers/header-v8.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/footers/footer-v1.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/animate.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/line-icons/line-icons.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/owl-carousel/owl-carousel/owl.carousel.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/horizontal-parallax/css/horizontal-parallax.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/layer-slider/layerslider/css/layerslider.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/theme-colors/ured.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/scrollbar/css/jquery.mCustomScrollbar.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/pages/profile.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/brand-buttons/brand-buttons.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/brand-buttons/brand-buttons-inversed.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/hover-effects/css/hover.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/hover-effects/css/custom-hover-effects.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/custom.min.css">
        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/pgwslider/pgwslider.min.css">
        <script type="text/javascript" src="js/login.js"></script>
        <link type="text/css" rel="stylesheet" href="css/memo.css">


    </head>
    <body style="background-color: #AA1916;">
        <br></br>
        <br></br>
        <div>
            <div  style="background-image: url(../imagenes/bgbody.jpg)">
                <br></br>
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                        </div>
                        <div>

                            <form class="col-md-4 margin-top-10" method="post" action="#" name="login" id="login">
                                <div class="input-field col s12 ">
                                    <center><img src="../imagenes/logof.png" class="img-rounded"/></center>
                                </div>
                                <p class="text-danger text-center"><strong>Ingresa tus datos para iniciar sesión</strong></p>
                                <center> 

                                    <div id="divError" aling="center">                                     
                                    </div>

                                </center>
                                <div class="form-group">
                                    <label for="user">Usuario</label>
                                    <input type="text" class="form-control" id="user" name="user" placeholder="Usuario" >
                                </div>
                                <div class="form-group">
                                    <label for="contrasena">Contraseña</label>
                                    <input type="password" class="form-control" id="contrasena" name="contrasena" placeholder="Contraseña">
                                </div>
                                <center><button type="button" class="btn btn-danger btn-block btn-flat" style="background-color: #AA1916;" onclick="validarUsuario();">Iniciar Sesion</button></center>
                                <center><a href="../principal/FacultadIngenierias.jsp"><h5>Volver a principal</h5></a></center>

                                <br></br>
                                <br></br>
                            </form>

                        </div>
                        <div class="col-md-4">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br></br>
        <br></br>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="js/procesar.js"></script>
    </body>
</html>
