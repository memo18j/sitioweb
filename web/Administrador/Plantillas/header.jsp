<%request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es"> <!--<![endif]-->
    <head>

        <title>Facultad Ingenierias UFPS</title>

        <!-- Meta -->
        <meta charset="UTF-8">
        <meta name="application-name" content="UFPS" lang="es">
        <meta name="Author" content="Oficina de Prensa" lang="es">
        <meta name="Contributors" content="Viarney Alirio Villamizar Moreno - Henry Alexander Peñaranda Mora" lang="es">
        <meta name="Aditional-Contributors" content="Jean Polo Cequeda Olago" lang="es">
        <meta name="keywords" content="ufps, universidad, francisco, de paula, santander, cucuta, colombia,carreras,ingenierias, pregrados,norte de santander, especializaciones, diplomados,cursos,oriente, matricula, notas, división, sistemas"/>
        <meta name="description" content="Portal Universidad Francisco de Paula Santander - Cúcuta, Norte de Santander"/>

        <meta property="og:title" content=""/>
        <meta property="og:type" content="article"/>
        <meta property="og:url" content="https://ww2.ufps.edu.co/"/>
        <meta property="og:image" content=" "/>
        <meta property="og:description" content=""/>


        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Favicon -->
        <link href='https://ww2.ufps.edu.co/assets/img/ico/favicon.ico' rel='Shortcut icon'>

        <!-- Web Fonts -->
        <link rel='stylesheet' type='text/css'
              href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

        <link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"> 


        <link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/bootstrap/css/bootstrap.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/ie8.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/blocks.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/plugins.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/style.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/app.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/shop.plugins.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/shop.blocks.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/style-switcher/style-switcher.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/shop.style.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/headers/header-v6.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/headers/header-v8.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/footers/footer-v1.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/animate.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/line-icons/line-icons.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/owl-carousel/owl-carousel/owl.carousel.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/horizontal-parallax/css/horizontal-parallax.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/layer-slider/layerslider/css/layerslider.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/theme-colors/ured.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/scrollbar/css/jquery.mCustomScrollbar.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/pages/profile.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/brand-buttons/brand-buttons.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/brand-buttons/brand-buttons-inversed.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/hover-effects/css/hover.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/plugins/hover-effects/css/custom-hover-effects.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/custom.min.css"><link type="text/css" rel="stylesheet" href="https://ww2.ufps.edu.co/assets/css/pgwslider/pgwslider.min.css">
    </head>

    <body class="header-fixed boxed-layout">
        <div class="wrapper">
            <!--=== Header v6 ===-->
            <div id="menu-principal" class="header-v6 header-white-transparent header-sticky" style="position: relative;">
                <div id="barra-superior" class="header-v8">
                    <!-- Topbar blog -->
                    <div class="blog-topbar">
                        <div class="topbar-search-block">
                            <div class="container">
                                <form method=GET action="https://www.google.es/search">
                                    <input type=hidden name=domains value="http://ww2.ufps.edu.co" />
                                    <input type=hidden name=sitesearch value="http://ww2.ufps.edu.co" checked />
                                    <input type="text" id="s" name="q" class="form-control" placeholder="Buscar...">
                                    <div class="search-close"><i class="icon-close"></i></div>
                                </form>
                            </div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-7 col-xs-7">
                                    <div class="topbar-toggler" style="font-size: 10px; color: #eee; letter-spacing: 1px; text-transform: uppercase;"><span class="fa fa-angle-down"></span> PERFILES</div>
                                    <ul class="topbar-list topbar-menu">

                                        <li class="cd-log_reg hidden-md hidden-lg"><strong><a class="cd-signup" href="javascript:void(0);">Lenguaje</a></strong>
                                            <ul class="topbar-dropdown">
                                                <li><a href="http://translate.google.com/translate?hl=en&sl=es&tl=en&u=ww2.ufps.edu.co">Inglés</a></li>
                                                <li><a href="http://translate.google.com/translate?hl=en&sl=es&tl=fr&u=ww2.ufps.edu.co">Francés</a></li>
                                                <li><a href="http://translate.google.com/translate?hl=en&sl=es&tl=it&u=ww2.ufps.edu.co">Italiano</a></li>
                                            </ul></li>
                                        <li class="cd-log_reg hidden-md hidden-lg"><strong><a class="cd-signin" href="javascript:void(0);"><i class="fa fa-reply"></i> Versión Anterior</a></strong></li>
                                    </ul>
                                </div>
                                <div class="col-sm-5 col-xs-5 clearfix">
                                    <i class="fa fa-search search-btn pull-right"></i>
                                    <ul class="topbar-list topbar-log_reg pull-right visible-md-block visible-lg-block">


                                        <li class="cd-log_reg home">
                                            <a href="../../Views/principal/FacultadIngenierias.jsp"><i class="fa fa-user"></i> Cerrar Sesion</a>
                                        </li>
                                        <!--    <li class="cd-log_reg"><a class="cd-signup" href="javascript:void(0);">Register</a></li>  -->
                                    </ul>
                                </div>
                            </div><!--/end row-->
                        </div><!--/end container-->
                    </div>
                    <!-- End Topbar blog -->

                </div>


                <div class="menu-responsive">
                    <!-- Logo -->
                    <a class="logo logo-responsive" href="https://ww2.ufps.edu.co/">
                        <img src="https://ww2.ufps.edu.co/assets/img/logos/horizontal_logo_pequeno.png" alt="Logo">
                    </a>  
                    <!-- End Logo -->

                    <!-- Toggle get grouped for better mobile display -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-bars"></span>
                    </button>
                    <!-- End Toggle -->
                </div>

                <!-- Navbar -->
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
                    <div class="container">
                        <ul class="nav navbar-nav">

                            <!-- Home -->
                            <li class="">
                                <a href="../principal/facuInge.jsp" class="dropdown" data-toggle="">
                                    Inicio
                                </a>
                            </li>    
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Facultad
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Informacion Facultad</a>
                                        <ul class="dropdown-menu">
                                            <li class=""><a href="../facultad/regfacultad.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../facultad/actfacultad.jsp">Actualizar informacion</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Concejo Facultad</a>
                                        <ul class="dropdown-menu">
                                            <li class=""><a href="../facultad/regconcejo.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../facultad/actconcejo.jsp">Actualizar informacion</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Estructura Organizacional</a>
                                        <ul class="dropdown-menu">
                                            <li class=""><a href="../facultad/regestructura.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../facultad/actestructura.jsp">Actualizar informacion</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Noticias</a>
                                        <ul class="dropdown-menu">
                                            <li class=""><a href="../facultad/regnoticias.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../facultad/consultarNot.jsp">Consultar informacion</a></li>
                                        </ul>
                                    </li>
                                     <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Eventos</a>
                                        <ul class="dropdown-menu">
                                            <li class=""><a href="../facultad/regeventos.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../facultad/consultarEve.jsp">Consultar informacion</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Documentos</a>
                                        <ul class="dropdown-menu">
                                            <li class=""><a href="../facultad/regdocumentos.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../facultad/consultarDocu.jsp">Consultar informacion</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <!-- End Home -->
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Programas
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Informacion programa</a>
                                        <ul class="dropdown-menu">
                                            <li class=""><a href="../programa/regprograma.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../programa/consultarProg.jsp">Consultar informacion</a></li>
                                        </ul>
                                    </li>

                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Informacion Tipo programa</a>
                                        <ul class="dropdown-menu">                                          
                                            <li class=""><a href="../programa/regtipoprograma.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../programa/modtipoprograma.jsp">Actualizar informacion</a></li>
                                        </ul>
                                    </li>


                                </ul>
                            </li>
                            <!-- Pages -->
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Departamentos
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Informacion departamentos</a>
                                        <ul class="dropdown-menu">
                                            <li class=""><a href="../departamento/regdepartamento.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../departamento/consultarDep.jsp">Consultar informacion</a></li>
                                        </ul>
                                    </li>

                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Informacion Docentes</a>
                                        <ul class="dropdown-menu">                                          
                                            <li class=""><a href="../departamento/regdocente.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../departamento/consultarDoc.jsp">Consultar informacion</a></li>
                                        </ul>
                                    </li>


                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Investigacion
                                </a>
                                <ul class="dropdown-menu">
                                    <!--                    <li><a href="javascript:void(0);">Secretaría General</a></li>-->
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Grupos de Investigacion</a>
                                        <ul class="dropdown-menu">
                                            <li class=""><a href="../grupos/reggrupos.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../grupos/consultarGru.jsp">Consultar informacion</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Semilleros de Investigacion</a>
                                        <ul class="dropdown-menu">
                                            <li class=""><a href="../semilleros/regsemillero.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../semilleros/consultarSem.jsp">Consultar informacion</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Laboratorios</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="../laboratorios/reglaboratorios.jsp"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Registrar laboratorio</a></li>
                                            <li><a href="../laboratorios/consultarLab.jsp"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Consultar laboratorio</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Investigadores</a>
                                        <ul class="dropdown-menu">
                                            <li class=""><a href="../investigador/reginvestigador.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../investigador/consultarInv.jsp">Consultar informacion</a></li>
                                        </ul>
                                    </li>
                                     <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Proyectos</a>
                                        <ul class="dropdown-menu">
                                            <li class=""><a href="../proyectos/regproyecto.jsp">Registrar informacion</a></li>
                                            <li class=""><a href="../proyectos/consultarPro.jsp">Consultar informacion</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="http://biblioteca.ufps.edu.co/">Incentivos</a></li>

                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Extension
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="">Cursos Extension</a></li>
                                    <li><a href="">Convenios</a></li>
                                    <li><a href="">Proyectos </a></li>
                                    <li><a href="">Actividades </a></li>                             
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Internacionalización
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="">Convenios</a></li>
                                    <li><a href="">Guías y formatos</a></li>
                                    <li><a href="">Movilidad Estudiantíl </a></li>
                                    <li><a href="">Movilidad Docente </a></li>
                                    <li><a href="">Extranjeros</a></li>
                                    <li><a href="">Contacto</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Graduados
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="">Tramites</a></li>
                                    <li><a href="">Oferta Laboral</a></li>
                                    <li><a href="">Informacion x Empresas</a></li>
                                    <li><a href="">Becas por Graduados </a></li>
                                    <li><a href="">Encuesta</a></li>
                                    <li><a href="">Contacto</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Usuarios
                                </a>
                                <ul class="dropdown-menu">
                                    <li class=""><a href="../usuario/regusuario.jsp">Nuevo usuario</a></li>
                                    <li class=""><a href="../usuario/consultarUser.jsp">Consultar Usuarios</a></li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div><!--/navbar-collapse-->

                <!-- End Navbar -->
            </div>
            <!-- ICONOS REDES SOCIALES -->
            <div class="cuadroredes">
                <ul class="social-icons margin-top-10">
                    <li class="tooltips" data-toggle="tooltip" data-placement="bottom" data-original-title="Síguenos en Facebook"><a
                            href="https://www.facebook.com/UFPS-C%C3%BAcuta-553833261409690" class="rounded social_facebook"></a>
                    </li>
                    <li class="tooltips" data-toggle="tooltip" data-placement="bottom" data-original-title="Síguenos en Twitter"><a
                            href="https://twitter.com/UFPSCUCUTA" class="rounded social_twitter"></a></li>
                    <li class="tooltips" data-toggle="tooltip" data-placement="bottom" data-original-title="Síguenos en Youtube"><a
                            href="https://www.youtube.com/channel/UCgPz-qqaAk4lbHfr0XH3k2g" class="rounded social_youtube"></a></li>
                    <li class="tooltips" data-toggle="tooltip" data-placement="bottom" data-original-title="Síguenos en Instagram">
                        <a href="https://www.instagram.com/ufpscucuta/" class="rounded social_instagram"></a></li>
                    <li class="tooltips" data-toggle="tooltip" data-placement="bottom" data-original-title="Escuchanos en Vivo"><a
                            href="http://www.ufps.edu.co/emisora/player.php" class="rounded social_emisora"></a></li>
                </ul>
            </div>