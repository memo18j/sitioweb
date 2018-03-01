<%-- 
    Document   : VerPrograma
    Created on : 1/09/2017, 12:46:02 PM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.ProgramaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<%
    String id = request.getParameter("id");
    int codigo = Integer.parseInt(id);
    String t = request.getParameter("tipo");
    int tipo = Integer.parseInt(t);

%>
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
                        <%    IControlador fachada = (IControlador) session.getAttribute("fachada");
                            ArrayList<ProgramaDTO> dc = fachada.mostrarProgramaTipo(tipo);
                            for (ProgramaDTO c : dc) {

                        %>
                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;">
                        <a href="VerPrograma.jsp?id=<%=c.getIdPrograma()%>&tipo=<%=c.getTipo()%>" class="text-menu">
                        <i class="fa fa-chevron-circle-right" aria-hidden="true"></i><%=c.getNombre()%></a></li>
                                <% }%>
                    </ul>

                </div>
            </div><!--/col-md-3-->
            <div class="col-md-8 mb-margin-bottom-30">
                <div class="margin-bottom-40">
                    <%

                        ArrayList<ProgramaDTO> dp = fachada.mostrarProgramaId(codigo);
                        for (ProgramaDTO p : dp) {

                    %>
                    <div class="headline margin-bottom-30"><h1><%=p.getNombre()%></h1></div>
                    <!--=== carousel ===-->
                    <% if(p.getImagen()!=null) { %>
                    <div id="myCarousel" class="carousel slide carousel-v1">
                        <div class="carousel-inner">
                            <div class="item active">
                                <img width="750" height="281"
                                     src="<%=p.getImagen()%>"
                                     class="" alt="">                                      
                            </div>
                        </div>
                    </div>
                                     <% } %>
                    <div class="shadow-wrapper margin-top-30">
                        <blockquote class="tag-box tag-box-v4 margin-bottom-40">
                            <h5><p><strong>Director: </strong><%=p.getDirector()%><br />
                                    <strong>Correo institucional: </strong><%=p.getCorreoprograma()%><br />
                                    <strong>Ubicacion: </strong><%=p.getUbicacion()%><br />
                                    <strong>Telefonos: </strong><%=p.getTelefono()%><br />
                                    <strong>Codigo SNIES </strong> <%=p.getCodsnies()%><br />
                                    <strong>Modalidad: </strong><%=p.getModalidad()%><br />
                                    <strong>Horario de atencion: </strong><%=p.getHorario()%><br/>
                                    <br />
                                    <% if(p.getLink()!=null) {%>
                                    <a href="<%=p.getLink()%>" target="_blank">Visite nuestro sitio </a></p>
                                    <% } %>
                            </h5>
                        </blockquote>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>
    </div>
</div>
<br></br>
<jsp:include page="../Plantillas/footer.jsp"/>
