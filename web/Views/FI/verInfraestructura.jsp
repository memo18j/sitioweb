<%-- 
    Document   : verInfraestructura
    Created on : 15/11/2017, 05:21:17 PM
    Author     : Memo
--%>

<%@page import="com.sitioweb.model.DTO.TipoInfraestructuraDTO"%>
<%@page import="com.sitioweb.model.DTO.InfraestructuraDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:include page="../Plantillas/header.jsp"/>

<link rel='stylesheet' type='text/css' href="public/css/nuevo.css" >

<%
    String id = request.getParameter("id");
    int codigo = Integer.parseInt(id);
    String nombre = request.getParameter("nombre");

%>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 margin-top-10 margin-bottom-20">
            <div class="row">
                <div class="col-md-8">
                    <ul class="breadcrumb no-padding margin-bottom-10">
                        <li title="Ingresar a Inicio"><a href="../../index.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                        <li title="Universidad"><a href="" style="font-style: italic; font-size: 14px;">Facultad</a></li>
                        <li class="active" title="Información Institucional"  style="font-style: italic; font-size: 14px;">Infraestructura</li>
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
                        <b><%=nombre%></b></h1>
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
                        <%
                            IControlador f = (IControlador) session.getAttribute("fachada");
                            ArrayList<TipoInfraestructuraDTO> in = f.mostrarTipoInfraestructura();
                            for (TipoInfraestructuraDTO i : in) {
                        %>
                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;">
                            <a href="verInfraestructura.jsp?id=<%=i.getIdTipoInfra()%>&nombre=<%=i.getNombre()%>" 
                               class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i><%=i.getNombre()%></a></li>                      
                                <% } %>
                    </ul>
                </div>
            </div><!--/col-md-3-->
            
            <div class="col-md-8 mb-margin-bottom-30" >
                <br>
                <br>
                <%
                    
                    ArrayList<InfraestructuraDTO> dp = f.mostrarInfraestructuraTipo(codigo);
                    int x = 0;
                %>
                <div>
                    <%  for (InfraestructuraDTO p : dp) {%>
                    <div class="panel-group acc-v1" id="accordion-2">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><b>
                                        <a class="accordion-toggle menu-acordeon" data-toggle="collapse"
                                           data-parent=""
                                           href="#<%= p.getIdInfra()%>" aria-expanded="false">
                                            <span aria-hidden="true"
                                                  ></span><i class="fa fa-home"></i><%=p.getNombre()%></a></b>
                                </h4>
                            </div>
                            <div
                                id="<%= p.getIdInfra()%>"
                                class="panel-collapse collapse" aria-expanded="false">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-7">
                                                <h5><b>Ubicacion: </b><%=p.getUbicacion()%></h5>
                                                <h6> </h6>                                             
                                                <h5><p style="text-align:justify"><%=p.getDescripcion()%></p> </h5>
                                                <h6> </h6> 
                                            </div>
                                            <div class="col-md-5">
                                                <img id="<%= p.getNombre()%>" src="<%=p.getImagen()%>" width="250" height="150" 
                                                     onclick="clickimagen('<%=x%>', '<%=p.getImagen()%>')"/>
                                                <div id="myModal<%=x%>" class="modal">
                                                    <span class="close">&times;</span>
                                                    <img class="modal-content" id="img<%=x%>">
                                                    <div id="caption"></div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% x++; }%>
                </div>
            </div>    

        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>


<script type="text/javascript" src="public/js/memo.js"></script>
<jsp:include page="../Plantillas/footer.jsp"/>

