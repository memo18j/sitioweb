<%-- 
    Document   : VerPrograma
    Created on : 1/09/2017, 12:46:02 PM
    Author     : personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 margin-top-10 margin-bottom-20">
            <div class="row">
                <div class="col-md-8">
                    <ul class="breadcrumb no-padding margin-bottom-10">
                        <li title="Ingresar a Inicio"><a href="../../index.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                        <li title="Universidad"><a href="" style="font-style: italic; font-size: 14px;">Programas</a></li>

                    </ul> 
                </div>
                <div class="col-md-4">
                    <h4 class="pull-right"> </h4>
                </div>
            </div>
        </div>
        <div class="col-md-12 col-sm-12 col-xs-12" style="border-bottom: 3px solid #aa1916;">
            <!--            <h1 class="pull-left text-parallax capa-image2" style="background-color: #aa1916;color: #fff; margin-top: 0px; margin-bottom: 0px; padding: 6px; padding-left: 15px; padding-right: 15px;">-->
            <div class="row">
                <div class="col-md-10">
                    <h1 class="pull-left" style="font-size: 36px;">
                        <b>Informacion Programas </b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <div class="container content profile">
        <div class="row">
            <div class="col-md-4">

                <div class="shadow-wrapper">        

                    <div class="margin-top-20"><h2 style="color:#AA1916;"><b>Menú de Información</b></h2></div>
                    <ul class="nav nav-pills nav-stacked list-group sidebar-nav-v1" id="sidebar-nav">
                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;"><a href="ingsistemas.jsp" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i>Ingeniera de Sistemas</a></li>

                    </ul>

                </div>
            </div><!--/col-md-3-->
            <div class="col-md-8 mb-margin-bottom-30">
                <div class="margin-bottom-40">

                    <div class="headline margin-bottom-30"><h1>Nombre</h1></div>
                    <!--=== carousel ===-->
                    <div id="myCarousel" class="carousel slide carousel-v1">
                        <div class="carousel-inner">
                            <div class="item active">
                                <img
                                    src="https://ww2.ufps.edu.co/public/imagenes/seccion/sistem1.png"
                                    class="img-responsive" alt="">
                                <!--                            <div class="carousel-caption">
                                                                <p>Facilisis odio, dapibus ac justo acilisis gestinas.</p>
                                                            </div>-->
                            </div>
                            <div class="item">
                                <img
                                    src="https://ww2.ufps.edu.co/public/imagenes/seccion/sistem2.jpg"
                                    class="img-responsive" alt="">
                            </div>
                            <div class="item">
                                <img
                                    src="https://ww2.ufps.edu.co/public/imagenes/seccion/sistem3.jpg"
                                    class="img-responsive" alt="">
                            </div>
                        </div>

                        <div class="carousel-arrow">
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>
                    </div>

                    <div class="shadow-wrapper margin-top-30">
                        <blockquote class="tag-box tag-box-v4 margin-bottom-40">
                            <h5><p><strong>Director:</strong><br />
                                    <strong>Correo institucional:</strong><br />
                                    <strong>Ubicacion:</strong><br />
                                    <strong>Telefonos:</strong><br />
                                    <strong>Codigo SNIES</strong><br />
                                    <strong>Modalidad:</strong><br />
                                    <strong>Horario de atencion:</strong><br/>
                                    <br />
                                    <a href="" target="_blank">Visite nuestro sitio </a></p>
                            </h5>
                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
        <br></br>
        <jsp:include page="../Plantillas/footer.jsp"/>
