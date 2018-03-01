<%-- 
    Document   : header
    Created on : 16-abr-2016, 11:42:17
    Author     : Javier
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Facultad Ingenieria UFPS</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 

        <link rel="stylesheet" href="../plantilla/css/bootstrap.css" type="text/css"/>
        <link rel="stylesheet" href="../plantilla/css/sifi.css" type="text/css"/>
        <link rel="stylesheet" href="../plantilla/css/animate.css" type="text/css"/>
        <link rel="stylesheet" href="../plantilla/css/font-awesome.min.css" type="text/css"/>
        <link rel="stylesheet" href="../plantilla/css/font.css" type="text/css"/>
        <link rel="stylesheet" href="../plantilla/css/app.css" type="text/css"/>
        <link href='https://ww2.ufps.edu.co/assets/img/ico/favicon.ico' rel='Shortcut icon'>
        <!--[if lt IE 9]>
          <script src="js/ie/html5shiv.js"></script>
          <script src="js/ie/respond.min.js"></script>
          <script src="js/ie/excanvas.js"></script>
        <![endif]-->
    </head>
    <body>
        <section class="vbox">
            <header class="bg-dark dk header navbar navbar-fixed-top-xs">
                <div class="navbar-header aside-md">
                    <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
                        <i class="fa fa-bars"></i>
                    </a>
                    <a href="../views/administrador.jsp" class="navbar-brand" data-toggle="fullscreen">
                        <img src="../plantilla/images/ufps2.png"class="m-r-sm"> S.I.F.I</a>
                    <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".nav-user">
                        <i class="fa fa-cog"></i>
                    </a>
                </div>
                   
                <ul class="nav navbar-nav navbar-right m-n hidden-xs nav-user">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Administrador <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight">
                            <span class="arrow top"></span>
                            <li class="divider"></li>
                            <li class="">
                                <a href="../login/cerrarsesion.jsp"><center><i class="fa fa-power-off"> Salir</i></center></a>
                            </li>
                        </ul>
                    </li>
                </ul>      
            </header>
            <section>
                <section class="hbox stretch">
                    <!-- .aside -->
                    <aside class="bg-light lter b-r aside-md hidden-print " style="background-color:#D3D6D6;" id="nav">          
                        <section class="vbox">
                            <header class="header bg-primary lter text-center clearfix" style="background-color:#D3D6D6;">
                                <h1>Menú</h1>
                            </header>
                            <section class="w-f scrollable">
                                <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="5px" data-color="#333333">

                                    <!-- nav -->
                                    <nav class="nav-primary hidden-xs">
                                        <ul class="nav">
                                            <li >
                                                <a href="#"  >
                                                    <i class="fa fa-book">
                                                        <b class="bg-danger" style="background-color: #aa1916;"></b>
                                                    </i>
                                                    <span class="pull-right">
                                                        <i class="fa fa-angle-down text"></i>
                                                        <i class="fa fa-angle-up text-active"></i>
                                                    </span>
                                                    <span>Facultad</span>
                                                </a>
                                                <ul class="nav lt">
                                                    <li >
                                                        <a href="../views/RegistrarInfo.jsp" >                        
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Registrar informacion facultad</span>
                                                        </a>
                                                    </li>
                                                    <li >
                                                        <a href="../views/ConsultarInfo.jsp" > 
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Consultar informacion facultad</span>
                                                        </a>

                                                    </li>
                                                    <li >
                                                        <a href="../views/RegistrarNovedad.jsp" >                        
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Registrar Novedad</span>
                                                        </a>
                                                    </li>
                                                    <li >
                                                        <a href="../views/ConsultarNovedad.jsp" > 
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Consultar Novedad</span>
                                                        </a>

                                                    </li>
                                                </ul>
                                            </li>
                                            <li >
                                                <a href="#"  >
                                                    <i class="fa fa-book">
                                                        <b class="bg-danger"style="background-color: #aa1916;"></b>
                                                    </i>
                                                    <span class="pull-right">
                                                        <i class="fa fa-angle-down text"></i>
                                                        <i class="fa fa-angle-up text-active"></i>
                                                    </span>
                                                    <span>Programas</span>
                                                </a>
                                                <ul class="nav lt">
                                                    <li >
                                                        <a href="../views/RegistrarPrograma.jsp" >           
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Registrar Programas</span>
                                                        </a>
                                                    </li>
                                                    <li >
                                                        <a href="../views/ConsultarProgramas.jsp" > 
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Consultar Programas</span>
                                                        </a>

                                                    </li>
                                                </ul>
                                            </li>
                                            <li >
                                                <a href="#"  >
                                                    <i class="fa fa-book">
                                                        <b class="bg-danger" style="background-color: #aa1916;"></b>
                                                    </i>
                                                    <span class="pull-right">
                                                        <i class="fa fa-angle-down text"></i>
                                                        <i class="fa fa-angle-up text-active"></i>
                                                    </span>
                                                    <span>Departamento</span>
                                                </a>
                                                <ul class="nav lt">
                                                    <li >
                                                        <a href="../views/RegistrarDpto.jsp" >                        
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Registrar Informacion Departamentos</span>
                                                        </a>
                                                    </li>
                                                    <li >
                                                        <a href="../views/ConsultarDpto.jsp" > 
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Consultar Departamentos </span>
                                                        </a>

                                                    </li>
                                                    <li >
                                                        <a href="../views/RegistrarDocente.jsp" >                        
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Registrar Docentes</span>
                                                        </a>
                                                    </li>
                                                    <li >
                                                        <a href="../views/ConsultarDocentes.jsp" > 
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Consultar Docentes</span>
                                                        </a>

                                                    </li>
                                                </ul>
                                            </li>
                                            <li >
                                                <a href="#"  >
                                                    <i class="fa fa-book">
                                                        <b class="bg-danger"style="background-color: #aa1916;"></b>
                                                    </i>
                                                    <span class="pull-right">
                                                        <i class="fa fa-angle-down text"></i>
                                                        <i class="fa fa-angle-up text-active"></i>
                                                    </span>
                                                    <span>Investigacion</span>
                                                </a>
                                                <ul class="nav lt">
                                                    <li >
                                                        <a href="../views/RegistrarInvestigacion.jsp" >                        
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Registrar Informacion </span>
                                                        </a>
                                                    </li>
                                                    <li >
                                                        <a href="../views/ConsultarInvestigacion.jsp"> 
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Consultar Informacion</span>
                                                        </a>

                                                    </li>
                                                    
                                                </ul>
                                            </li>
                                            <li >
                                                <a href="#"  >
                                                    <i class="fa fa-book">
                                                        <b class="bg-danger"style="background-color: #aa1916;"></b>
                                                    </i>
                                                    <span class="pull-right">
                                                        <i class="fa fa-angle-down text"></i>
                                                        <i class="fa fa-angle-up text-active"></i>
                                                    </span>
                                                    <span>Infraestructura</span>
                                                </a>
                                                <ul class="nav lt">
                                                    <li >
                                                        <a href="../views/RegistrarInfraestructura.jsp" >                        
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Registrar Infraestructura </span>
                                                        </a>
                                                    </li>
                                                    <li >
                                                        <a href="../views/ConsultarInfraestructura.jsp"> 
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Consultar Infraestructura</span>
                                                        </a>
                                                    </li>                                                   
                                                </ul>
                                            </li>
                                            <li >
                                                <a href="#"  >
                                                    <i class="fa fa-book">
                                                        <b class="bg-danger" style="background-color: #aa1916;"></b>
                                                    </i>
                                                    <span class="pull-right">
                                                        <i class="fa fa-angle-down text"></i>
                                                        <i class="fa fa-angle-up text-active"></i>
                                                    </span>
                                                    <span>Extension</span>
                                                </a>
                                                <ul class="nav lt">
                                                    <li>
                                                        <a href="../views/RegistrarExtension.jsp">
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Registrar Extension</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="../views/ConsultarExtension.jsp">
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Consultar Extension</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li >
                                                <a href="#"  >
                                                    <i class="fa fa-book">
                                                        <b class="bg-danger" style="background-color: #aa1916;"></b>
                                                    </i>
                                                    <span class="pull-right">
                                                        <i class="fa fa-angle-down text"></i>
                                                        <i class="fa fa-angle-up text-active"></i>
                                                    </span>
                                                    <span>Internacionaliazion</span>
                                                </a>
                                                <ul class="nav lt">
                                                    <li>
                                                        <a href="../views/RegistrarInternacionalizacion.jsp">
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Registrar Internacionalizacion</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="../views/ConsultarInternacionalizacion.jsp">
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Consultar Internacionalizacion</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li >
                                                <a href="#"  >
                                                    <i class="fa fa-book">
                                                        <b class="bg-danger" style="background-color: #aa1916;"></b>
                                                    </i>
                                                    <span class="pull-right">
                                                        <i class="fa fa-angle-down text"></i>
                                                        <i class="fa fa-angle-up text-active"></i>
                                                    </span>
                                                    <span>Graduados</span>
                                                </a>
                                                <ul class="nav lt">
                                                    <li>
                                                        <a href="../views/RegistrarInformGraduados.jsp">
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Inoformacion Graduados</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="../views/ConsultarGraduados.jsp">
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Consultar Informacion</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li >
                                                <a href="#"  >
                                                    <i class="fa fa-user">
                                                        <b class="bg-danger" style="background-color: #aa1916;"></b>
                                                    </i>
                                                    <span class="pull-right">
                                                        <i class="fa fa-angle-down text"></i>
                                                        <i class="fa fa-angle-up text-active"></i>
                                                    </span>
                                                    <span>Usuarios</span>
                                                </a>
                                                <ul class="nav lt">
                                                    <li>
                                                        <a href="../paginas/res_list.jsp">
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Registrar Usuario</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="../paginas/res_list.jsp">
                                                            <i class="fa fa-arrow-circle-o-right"></i>
                                                            <span>Consultar usuarios</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </nav>
                                    <!-- / nav -->
                                </div>
                            </section>
                            <footer class="footer lt hidden-xs b-t b-dark" style="background-color:#D3D6D6;">
                                <div class="btn-group hidden-nav-xs">
                                    2017 © All Rights Reserved. Desarrollado por:<br> Jose Guillermo Parada<br>Dairo Ramirez<br>Alejandra Ovallos
                                </div>
                            </footer>
                        </section>
                    </aside>
                    <section id="content">
                        <section class="vbox">

