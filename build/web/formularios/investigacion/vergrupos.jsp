<%-- 
    Document   : vergrupos
    Created on : 1/09/2017, 01:11:02 PM
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
                        <li class="active" title="Grupos de Investigacion"  style="font-style: italic; font-size: 14px;">Grupos de Investigacion</li>
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
                        <b>Investigacion</b></h1>
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
                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;"><a href="mision.jsp" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> Mision</a></li>             
                    </ul>

                </div>
            </div><!--/col-md-3-->
            <div class="col-md-8 mb-margin-bottom-30">
                <small class="pull-right" style="color:#aa1916;"><i
                        class="fa fa-calendar"></i></small>
                <div class="margin-bottom-40">

                    <div class="headline margin-bottom-30"><h1>GRUPOS DE INVESTIGACION</h1></div>
                    <div>
                        <div class="panel-group acc-v1" id="accordion-2">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><b>
                                            <a class="accordion-toggle menu-acordeon" data-toggle="collapse"
                                               data-parent="#accordion-2"
                                               href="#collapse-4">
                                                <span aria-hidden="true"
                                                      class="icon-users"></span> GRUPO DE INVESTIGACIÓN DE FLUIDOS Y TÉRMICAS - FLUTER                                                </a></b>
                                    </h4>
                                </div>
                                <div
                                    id="collapse-4"
                                    class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h6><b>Director:</b> CARMEN LEONOR BARAJAS FORERO</h6>
                                                <h6> </h6>
                                                <h6><b>Correo:</b> carmenleonor05@gmail.com</h6>
                                                <h6> </h6>
                                                <h6> </h6>
                                                <h6><b>Estatus:</b> Institucional</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr class="devider devider-dotted">
        </div>
    </div>
</div>
    <br></br>

    <jsp:include page="../Plantillas/footer.jsp"/>

