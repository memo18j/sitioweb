<%-- 
    Document   : tecnoceramicos
    Created on : 4/05/2017, 08:51:45 AM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.ProgramaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
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
                        <li title="Universidad"><a href="" style="font-style: italic; font-size: 14px;">Tecnico</a></li>
                        <li class="active" title="Información Institucional"  style="font-style: italic; font-size: 14px;">Tecnología en Gestión y Desarrollo de Productos Cerámicos</li>
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
                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;"><a href="tecnoceramicos.jsp" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i>Tecnología en Gestión y Desarrollo de Productos Cerámicos</a></li>

                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;"><a href="tecnomanofactura.jsp" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i>Tecnología en Gestión de Procesos de Manufactura</a></li>

                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;"><a href="tecnoobras.jsp" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i>Tecnología en Obras Civiles</a></li>
                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;"><a href="tecnoprocesos.jsp" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i>Tecnología en Procesos Industriales</a></li>
                    </ul>

                </div>
            </div><!--/col-md-3-->
            <div class="col-md-8 mb-margin-bottom-30">
                <small class="pull-right" style="color:#aa1916;"><i
                        class="fa fa-calendar"></i></small>
                <div class="margin-bottom-40">

                    <div class="headline margin-bottom-30"><h1>Tecnología en Gestión y Desarrollo de Productos Cerámicos</h1></div>
                    <%
                        IControlador fachada = (IControlador) session.getAttribute("fachada");
                        ArrayList<ProgramaDTO> dp = fachada.mostrarPrograma("Tecnologia en gestion y desarrollo de productos ceramicos");
                        for (ProgramaDTO p : dp) {
                    %>
                    <div id="myCarousel" class="carousel slide carousel-v1">
                        <div class="carousel-inner">
                            <div class="item active">
                                <img width="750" height="281"
                                     src="<%=p.getLinkimg()%>"
                                     class="" alt="">                                    
                            </div>
                        </div>
                    </div>

                    <div class="shadow-wrapper margin-top-30">
                        <blockquote class="tag-box tag-box-v4 margin-bottom-40">
                            <h5><p><strong>Director:</strong><%=p.getDirectorprogram()%><br />
                                    <strong>Correo institucional:</strong><%=p.getCorreoprograma()%><br />
                                    <strong>Ubicacion:</strong><%=p.getUbicacion()%><br />
                                    <strong>Telefonos:</strong><%=p.getTelefono()%><br />
                                    <strong>Codigo SNIES</strong> <%=p.getCodsnies()%><br />
                                    <strong>Modalidad:</strong><%=p.getModalidad()%><br />
                                    <strong>Horario de atencion:</strong><%=p.getHorarioatencion()%><br/>
                                    <br />
                                    <a href="<%=p.getUrllink()%>" target="_blank">Visite nuestro sitio </a></p>
                            </h5>
                        </blockquote>
                    </div>

                    <%}%>
                </div>
            </div>
        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>

