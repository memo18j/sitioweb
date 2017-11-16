<%-- 
    Document   : VerNovedad
    Created on : 26/09/2017, 07:36:24 AM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.NovedadDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<main>
    <%
        String id = request.getParameter("id");
        int codigo = Integer.parseInt(id);

    %>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12 margin-top-10 margin-bottom-20">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="breadcrumb no-padding margin-bottom-10">
                            <li title="Ingresar a Inicio"><a href="../../index.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                            <li title="Universidad"><a href="" style="font-style: italic; font-size: 14px;">Facultad</a></li>
                            <li class="active" title="Información Institucional"  style="font-style: italic; font-size: 14px;">Novedades</li>
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
                            <b>Novedades</b></h1>
                    </div>
                    <div class="col-md-2">

                    </div>
                </div>
            </div>
            <div>
                <%                
                    IControlador fachada = (IControlador) session.getAttribute("fachada");
                    ArrayList<NovedadDTO> dp = fachada.mostrarNovedadId(codigo);
                %>
                <div class="col-md-2"></div>
                <div class="col-md-8 mb-margin-bottom-30">
                    <% for(NovedadDTO e :dp) { %>
                    <h4><label><%=e.getTitulo()%></label></h4>
                    <div aling="center"class="img-intro-right">
                        <figure>
                           <img id="zoom_01" width="500" max-width="400" height="600"  
                             src="<%= e.getLinkimg()%>"/> 
                        </figure>
                        
                    </div>
                    <br>
                             <strong>Fecha: </strong><%=e.getFecha()%> 
                             <br>
                             <h4><p aling="justify"><%=e.getDescripcion()%></p></h4>
                             <br>
                    <% } %>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div><!--/col-md-3-->
</main>
<jsp:include page="../Plantillas/footer.jsp"/>


