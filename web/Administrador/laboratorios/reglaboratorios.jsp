<%-- 
    Document   : reglaboratorios
    Created on : 4/05/2017, 09:31:10 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<script type="text/javascript" src="js/laboratorios.js"></script>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 margin-top-10 margin-bottom-20">
            <div class="row">
                <div class="col-md-8">
                    <ul class="breadcrumb no-padding margin-bottom-10">
                        <li title="Ingresar a Inicio"><a href="../principal/facuInge.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                        <li title="departamento"><a href="" style="font-style: italic; font-size: 14px;">Laboratorios</a></li>
                        <li class="active" title="Información departamentos"  style="font-style: italic; font-size: 14px;">Informacion departamento</li>
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
                        <b>Informacion laboratorios</b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <div class="container content profile">
        <div class="row">
            <div>
                <form  name="formlab" id="formlab" action="procesar/reglab.jsp" enctype="multipart/form-data" method="post">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div>
                            <div class="headline margin-bottom-30"><h4>Codigo Laboratorio</h4></div>
                            <input type="text" class="form-control" id="cod_lab" name="cod_lab" placeholder="codigo laboratorio">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Nombre Laboratorio</h4></div>
                            <input type="text" class="form-control" id="nom_lab" name="nom_lab" placeholder="nombre Laboratorio">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                            <textarea cols=76 rows=10 name="descrip" id="descrip"></textarea>
                        </div>
                        <div class="file-field input-field ">
                            <div class="headline margin-bottom-30"><h4>Imagen</h4>
                                <input type="file" name="fichero" id="fichero">
                            </div>
                        </div>
                        <hr>
                        <div>
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-6">
                                <center><input type="submit" class="btn btn-danger btn-block btn-flat" href="" value="Registrar"></center>
                            </div>
                            <div class="col-md-3">
                            </div>
                        </div>
                        <div id="modal1" class="modal">
                            <div id="registroL">

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
