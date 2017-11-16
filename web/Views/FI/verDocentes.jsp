<%-- 
    Document   : verDocentes
    Created on : 3/10/2017, 04:51:04 PM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.DocenteDTO"%>
<%@page import="com.sitioweb.model.DTO.DepartamentoDTO"%>
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
                        <li class="active" title="Docentes"  style="font-style: italic; font-size: 14px;">Docentes</li>
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
                        <b>Docentes</b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <div class="container content profile">
        <div class="row">
            <div class="col-md-8 mb-margin-bottom-30">
                <br>
                <br>
                <div class="margin-bottom-40">
                    <%
                        IControlador f = (IControlador) session.getAttribute("fachada");
                        ArrayList<DocenteDTO> dp = f.mostrarDocente();


                    %>
                    
                    <div>
                        <%  for (DocenteDTO p : dp) { %>
                        <div class="panel-group acc-v1" id="accordion-2">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><b>
                                            <a class="accordion-toggle menu-acordeon" data-toggle="collapse"
                                               data-parent="#accordion-2"
                                               href="#<%= p.getIdDocente()%>">
                                                <span aria-hidden="true"
                                                      class="icon-users"></span><%=p.getNombre()%></a></b>
                                    </h4>
                                </div>
                                <div
                                    id="<%= p.getIdDocente()%>"
                                    class="panel-collapse collapse ">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h5><b>Correo:</b><%=p.getCorreo()%></h5>
                                                <h6> </h6>                                             
                                                <h5><b>Tipo:</b><%=p.getTipo()%></h5>
                                                <h6> </h6>                                             
                                                <h5><b>Departamento:</b><%=p.getDpto()%></h5>
                                                <h6> </h6>
                                                <% if (p.getLinkcvlad()!= null) {%>
                                                <a href="<%=p.getLinkcvlad()%>" target="_blank">ir a Cvlad </a></p>
                                                <% } %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <% } %>
                    </div>
                   
                </div>
            </div>
            <div class="col-md-4">
                <div class="shadow-wrapper">        
                    <div class="margin-top-20"><h2 style="color:#AA1916;"><b>Novedades</b></h2></div>
                    <ul class="nav nav-pills nav-stacked list-group sidebar-nav-v1" id="sidebar-nav">
                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;">
                            <a href="" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> Noticias</a></li>
                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;">
                            <a href="" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> Eventos</a></li>
                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;">
                            <a href="" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> Actividades</a></li>               
                    </ul>
                </div>
            </div><!--/col-md-3-->        
            <hr class="devider devider-dotted">
        </div>
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>