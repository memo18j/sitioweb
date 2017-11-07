<%-- 
    Document   : proyectos
    Created on : 12/06/2017, 09:29:20 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.ProyectoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<main>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12 margin-top-10 margin-bottom-20">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="breadcrumb no-padding margin-bottom-10">
                            <li title="Ingresar a Inicio"><a href="../../index.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                            <li title="Universidad"><a href="" style="font-style: italic; font-size: 14px;">Investigacion</a></li>
                            <li class="active" title="Información Institucional"  style="font-style: italic; font-size: 14px;">Informacion de Proyectos</li>
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
                            <b> Proyectos de Investigacion</b></h1>
                    </div>
                    <div class="col-md-2">

                    </div>
                </div>
            </div>

            <label><h3>Listado de proyectos realizados o en desarrollo por la Facultad de Ingenierías</h3></label>

            <%
                IControlador fachada = (IControlador) session.getAttribute("fachada");
                ArrayList<ProyectoDTO> dp = fachada.mostrarProyecto();

            %>

            <div class="col-md-1"></div>
            <div class="col-md-10">  
                <br>
                <div>
                    <div class="col-md-1"></div>
                    <div class="col-md-10">  
                        <%for (ProyectoDTO es : dp) {%>
                        <blockquote class="tag-box tag-box-v4 margin-bottom-40">
                            <h5><p><strong>Nombre:</strong><%=es.getNombre()%><br />
                                    <strong>Director:</strong><%=es.getNominvest()%><br />
                                    <strong>Grupo:</strong><%=es.getNomgrupo()%><br />
                                    <strong>Descripcion:</strong><%=es.getDescripcion()%><br />

                            </h5>
                        </blockquote>
                        <%}%>  
                    </div>
                    <div class="col-md-1"></div>
                </div>

            </div>
            <div class="col-md-1"></div>
        </div>
    </div><!--/col-md-3-->
</main>
<jsp:include page="../Plantillas/footer.jsp"/>


