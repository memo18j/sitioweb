<%-- 
    Document   : VerNoticia
    Created on : 1/09/2017, 12:31:52 PM
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
                        <li title="Universidad"><a href="" style="font-style: italic; font-size: 14px;">Facultad</a></li>
                        <li class="active" title="Información Institucional"  style="font-style: italic; font-size: 14px;">Noticias</li>
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
                        <b>Noticias</b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="col-md-8 mb-margin-bottom-30">

            <div class="margin-bottom-40">
                <div class="headline margin-bottom-30"><h1>Titulo de Noticia</h1></div>
            </div>
            <div>
                <h5><p align="justify">Con éxito se llevó a cabo la presentación de los Semilleros de Investigación 
                        del programa de Ingeniería de Sistemas. Más de 100 estudiantes atendieron  la invitación. 
                        Se contó con la participación de los Directores de los Semilleros: Ingenieros Claudia Gómez, 
                        Mery Sarmiento, Milton Vera, Matías Herrera, Polo Cequeda, quienes presentaron los Misión y Visión, 
                        objetivos y plan de trabajo de cada semillero.   Agosto 23-2017</p></h5>
            </div>
            <br>
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

        </div>
        <div class="col-md-4">
            <div class="headline margin-bottom-30"><h1>Documentos Relacionados</h1></div>
        </div>
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>
