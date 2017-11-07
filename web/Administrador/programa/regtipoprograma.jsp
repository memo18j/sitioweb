<%-- 
    Document   : regtipoprograma
    Created on : 1/06/2017, 06:07:38 PM
    Author     : HP
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
                        <li title="departamento"><a href="" style="font-style: italic; font-size: 14px;">Programa</a></li>
                        <li class="active" title="Información departamentos"  style="font-style: italic; font-size: 14px;">Informacion Tipo Programa</li>
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
                <div class="col-md-10" >
                    <h1 class="pull-left" style="font-size: 36px;">
                        <b>Registrar Informacion de Tipo de Programas</b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <div class="container content profile">
        <div class="row">
            <center><h2></h2><label id="divResultado"></label></center>
            <div>
                <form id="resgistroForm" action="procesar/registrartp.jsp" method="post">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">

                        <div >
                            <div class="headline margin-bottom-30"><h4>Codigo </h4></div>
                            <input type="text" class="form-control" id="cod" name="cod" placeholder="codigo ">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Nombre </h4></div>
                            <input type="text" class="form-control" id="nom" name="nom" placeholder="nombre ">
                        </div>
                        <hr>
                        <div>
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-6">
                                <%-- <center><input type="submit" class="btn btn-danger btn-block btn-flat">Registrar</></center> --%>
                                <center>
                                    <a >    
                                        <input class="btn btn-danger btn-block btn-flat" type="submit" value="REGISTRAR "/>
                                    </a>
                                </center>
                            </div>
                            <div class="col-md-3">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </form>
            </div>
        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>
