<%-- 
    Document   : laboratorios
    Created on : 1/06/2017, 08:32:41 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.LaboratorioDTO"%>
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
                            <li title="Universidad"><a href="" style="font-style: italic; font-size: 14px;">Facultad</a></li>
                            <li class="active" title="Información Institucional"  style="font-style: italic; font-size: 14px;">Informacion de la facultad</li>
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
                            <b>Informacion de laboratorios</b></h1>
                    </div>
                    <div class="col-md-2">

                    </div>
                </div>
            </div>
            <div>
            <%
                IControlador fachada = (IControlador) session.getAttribute("fachada");
                ArrayList<LaboratorioDTO> dp = fachada.mostrarLaboratorio();

            %>
            <div class="col-md-2"></div>

            <div class="col-md-8 mb-margin-bottom-30">
                <br>
                <%for (LaboratorioDTO es : dp) {%>
                <div>
                    <h4><label><%=es.getNombre()%></label></h4>
                    <h5><p align="justify"><%=es.getDescripcion()%></p></h5>
                </div>
                <br>
                <div align="center">
                    <h5><img width="400" height="400" id="zoom_01"  src="<%= es.getLinkimg()%>" data-zoom-image="<%= es.getLinkimg()%>"/></h5>
                </div>
                <br>
                <%}%>
                <br>
            </div>

            <div class="col-md-2"></div>
            </div>
        </div>
    </div><!--/col-md-3-->
</main>
<jsp:include page="../Plantillas/footer.jsp"/>

