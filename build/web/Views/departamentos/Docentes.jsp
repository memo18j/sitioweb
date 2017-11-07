<%-- 
    Document   : Docentes
    Created on : 6/06/2017, 09:27:15 AM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.DocenteDTO"%>
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
                        <li title="departamento"><a href="" style="font-style: italic; font-size: 14px;">Departamento</a></li>
                        <li class="active" title="Información departamentos"  style="font-style: italic; font-size: 14px;">Informacion docentes</li>
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
                        <b> Informacion de docentes</b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <%
        IControlador fachada = (IControlador) session.getAttribute("fachada");
        ArrayList<DocenteDTO> dp = fachada.mostrarDocente();

    %>
    <div class="container content profile">
        <div class="row">

            <div id="tablaDoc">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            
                            <th data-field="nom_doc">Nombre</th>
                            <th data-field="correo">Correo</th>
                            <th data-field="dedicacion">Dedicacion</th>
                            <th data-field="depart">Departamento</th>
                            <th data-field="url_web">Ver CVLAG</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%for (DocenteDTO d : dp) {%>
                        <tr>
                         
                            <th data-field="nom_doc"><%= d.getNombre()%></th>
                            <th data-field="correo"><%= d.getCorreo()%></th>
                            <th data-field="dedicacion"><%=d.getDedicacion()%></th>
                            <th data-field="depart"><%=d.getNomdpto()%></th>
                            <th data-field="url_web"><a href="<%=d.getLinkcvlad()%>">Ir al sitio</a></th>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div> 

        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>
