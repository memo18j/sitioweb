<%-- 
    Document   : Documentos
    Created on : 28/04/2017, 09:45:33 AM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.DocumentoDTO"%>
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
                        <b>Informacion de la facultad</b></h1>
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

                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;"><a href="vision.jsp" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> Vision</a></li>

                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;"><a href="Objetivos.jsp" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> Objetivos</a></li>

                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;"><a href="EstructuraOrganizacional.jsp" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> Estructura organizacional</a></li>

                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;"><a href="ConcejoFacultad.jsp" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> Concejo Facultad</a></li>

                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;"><a href="historia.jsp" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> Historia</a></li>

                        

                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;"><a href="Documentos.jsp" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> Documentos</a></li>

                    </ul>

                </div>
            </div><!--/col-md-3-->
            <div class="col-md-8 mb-margin-bottom-30">
                <div class="margin-bottom-40">

                    <div class="headline margin-bottom-30"><h1>Documentos</h1></div>
                </div>
                <%
                    IControlador fachada = (IControlador) session.getAttribute("fachada");
                    ArrayList<DocumentoDTO> dp = fachada.mostrarDocumento();

                %>
                <div class="container content profile col-md-12">
                    <div class="row">

                        <div id="tablaD">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>                                  
                                        <th data-field="nombre">Nombre</th>
                                        <th data-field="documento">Documento</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%for (DocumentoDTO st : dp) {%>
                                    <tr>
                                        <th data-field="nombre"><%= st.getNombre()%></th>
                                        <th data-field="documento"><a href="<%= st.getLinkdoc()%>"><h5>Ver Documento</h5></a></th>
                                    </tr>
                                    <% }%>
                                </tbody>
                            </table>
                        </div> 

                    </div>
                    <hr class="devider devider-dotted">
                </div>
            </div>

        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>