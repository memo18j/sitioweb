<%@page import="com.sitioweb.model.DTO.TipoInfraestructuraDTO"%>
<%@page import="com.sitioweb.model.DTO.TipoInvestigacionDTO"%>
<%@page import="com.sitioweb.model.DTO.InformacionDTO"%>
<%@page import="com.sitioweb.model.DTO.ProgramaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es"> <!--<![endif]-->
    <head>

        <title>Facultad Ingenieria UFPS</title>

        <!-- Meta -->
        <meta charset="UTF-8">
        <meta name="application-name" content="UFPS" lang="es">
        <meta name="Author" content="Oficina de prensa" lang="es">
        <meta name="Contributors" content="Jose Guillermo Parada-Allejandra Ovallos-Dairo Ramirez" lang="es">
        <meta name="Aditional-Contributors" content="Pilar Rodriguez" lang="es">
        <meta name="keywords" content="ufps, universidad, francisco, de paula, santander, cucuta, colombia,carreras,ingenierias, pregrados,norte de santander, especializaciones, diplomados,cursos,oriente, matricula, notas, división, sistemas"/>
        <meta name="description" content="Portal Facultad de Ingenieria - Cúcuta, Norte de Santander"/>
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

                                    </ul>
                                </div>
                                <div class="col-sm-5 col-xs-5 clearfix">
                                    <i class="fa fa-search search-btn pull-right"></i>
                                    <ul class="topbar-list topbar-log_reg pull-right visible-md-block visible-lg-block">
                                        <li class="cd-log_reg home" style="padding: 0px 12px;">
                                            <div id="google_translate_element"></div><script type="text/javascript">
                                                function googleTranslateElementInit() {
                                                    new google.translate.TranslateElement({pageLanguage: 'es', includedLanguages: 'en,fr,it', layout: google.translate.TranslateElement.InlineLayout.SIMPLE, autoDisplay: false}, 'google_translate_element');
                                                }
                                            </script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

                                        </li>

                                        <li class="cd-log_reg home">
                                            <a href="../Login/iniciarSesion.jsp" target="_blank"><i class="fa fa-user"></i> Iniciar Sesion</a>
                                        </li>
                                        <!--    <li class="cd-log_reg"><a class="cd-signup" href="javascript:void(0);">Register</a></li>  -->
                                    </ul>
                                </div>
                            </div><!--/end row-->
                        </div><!--/end container-->
                    </div>
                    <!-- End Topbar blog -->

                </div>

                <div class="header-v8 img-logo-superior" style="background-color: #aa1916;">
                    <!--=== Parallax Quote ===-->
                    <div class="parallax-quote parallaxBg" style="padding: 30px 30px;">

                        <div class="parallax-quote-in" style="padding: 0px;">
                            <div class="row">
                                <div class="col-md-4 col-sm-4 col-xs-5">
                                    <a href="">
                                        <img id="logo-header"
                                             src="../imagenes/logonuevo.png" alt="Logo FACULTAD INGENIERIA">
                                    </a>
                                </div>

                                <div class="col-md-2 col-ms-1 col-xs-2 pull-right">
                                    <a href=""><img class="header-banner"
                                                    src="../imagenes/logo_ufps.png"
                                                    alt="Escudo de la ufps" width="150px" height="150px"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--=== End Parallax Quote ===-->
                </div><!--/end container-->

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
                                <a href="../../index.jsp" class="dropdown" data-toggle="">
                                    Inicio
                                </a>
                            </li>    
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Facultad
                                </a>
                                <ul class="dropdown-menu">
                                    <%
                                        IControlador f = (IControlador) session.getAttribute("fachada");
                                        ArrayList<InformacionDTO> in = f.mostrarInformacion();
                                        for (InformacionDTO i : in) {
                                            System.out.println("..." + i.getNombre());
                                    %>
                                    <li><a href="../FI/VerInformacion.jsp?id=<%=i.getIdInformacion()%>">
                                            <i class="fa fa-angle-double-right" aria-hidden="true"></i><%=i.getNombre()%> </a></li>
                                            <% } %>  
                                </ul>
                            </li>
                            <!-- End Home -->
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Programas
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Pregrado</a>
                                        <ul class="dropdown-menu">
                                            <%
                                                ArrayList<ProgramaDTO> ss = f.mostrarPrograma();
                                                for (ProgramaDTO m : ss) {
                                            %>
                                            <li><a href="../FI/VerPrograma.jsp?id=<%=m.getIdPrograma()%>">
                                                    <i class="fa fa-angle-double-right" aria-hidden="true"></i><%=m.getNombre()%> </a></li>
                                                    <% } %>  
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Tecnológicos</a>
                                        <ul class="dropdown-menu">                                          
                                            <li><a href="../programa/tecnoceramicos.jsp"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Tecnología en Gestión y Desarrollo de Productos Cerámicos</a></li>
                                            <li><a href="../programa/tecnomanofactura.jsp"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Tecnología en Gestión de Procesos de Manufactura</a></li>
                                            <li><a href="../programa/tecnoobras.jsp"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Tecnología en Obras Civiles</a></li>
                                            <li><a href="../programa/tecnoprocesos.jsp"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Tecnología en Procesos Industriales</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Técnicos</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="../programa/tecceramicos.jsp"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Técnico Profesional en Fabricación Industrial de Productos Cerámicos</a></li>
                                            <li><a href="../programa/tecartesanal.jsp"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Técnico Profesional en Producción de Cerámica Artesanal</a></li>
                                            <li><a href="../programa/teccalzado.jsp"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Técnico Profesional en Procesos de Manufactura de Calzado y Marroquinería</a></li>
                                        </ul>
                                    </li>

                                    <li class="dropdown-submenu">
                                        <a href="https://ww2.ufps.edu.co/oferta-academica/division-de-posgrados">Posgrados</a>
                                        <ul class="dropdown-menu">
                                            <li class="dropdown-submenu">
                                                <a href="javascript:void(0);"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Especializaciones</a>
                                                <ul class="dropdown-menu">                                                   
                                                    <li><a href="https://ww2.ufps.edu.co/oferta-academica/especializacion-en-desarrollo-del-software">En Desarrollo del Software</a></li>                                         
                                                    <li><a href="https://ww2.ufps.edu.co/oferta-academica/especializacion-en-informatica-educativa">En Informática Educativa</a></li>                                                    
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu">
                                                <a href="javascript:void(0);"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Maestrías</a>
                                                <ul class="dropdown-menu">

                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu">
                                                <a href="javascript:void(0);"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Doctorados</a>
                                                <ul class="dropdown-menu">

                                                </ul>
                                            </li>
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
                                    <li class=""><a href="../FI/VerDepartamento.jsp">Departamentos</a></li>
                                    <li class=""><a href="../FI/verDocentes.jsp">Docentes</a></li>                                                                        
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Investigacion
                                </a>                               
                                <ul class="dropdown-menu">
                                    <%

                                        ArrayList<TipoInvestigacionDTO> inv = f.mostrarTipoInvestigacion();
                                        for (TipoInvestigacionDTO i : inv) {
                                            System.out.println("..." + i.getNombre());
                                    %>
                                    <li><a href="../FI/verInvestigacion.jsp?id=<%=i.getIdTipoInvest()%>">
                                            <i class="fa fa-angle-double-right" aria-hidden="true"></i><%=i.getNombre()%> </a></li>
                                            <% }%>  
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Infraestructura
                                </a>
                                <ul class="dropdown-menu">
                                    <%

                                        ArrayList<TipoInfraestructuraDTO> inf = f.mostrarTipoInfraestructura();
                                        for (TipoInfraestructuraDTO i : inf) {
                                            System.out.println("..." + i.getNombre());
                                    %>
                                    <li><a href="../FI/verInfraestructura.jsp?id=<%=i.getIdTipoInfra()%>">
                                            <i class="fa fa-angle-double-right" aria-hidden="true"></i><%=i.getNombre()%> </a></li>
                                            <% }%>  
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