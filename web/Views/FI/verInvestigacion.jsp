<%-- 
    Document   : verInvestigacion
    Created on : 16/11/2017, 10:41:13 AM
    Author     : Memo
--%>


<%@page import="com.sitioweb.model.DTO.TipoInvestigacionDTO"%>
<%@page import="com.sitioweb.model.DTO.InvestigacionDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<%
        String id = request.getParameter("id");
        String nombre = request.getParameter("nombre");
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
                        <li class="active" title="Investigacion"  style="font-style: italic; font-size: 14px;">Investigacion</li>
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
                            ArrayList<TipoInvestigacionDTO> in = f.mostrarTipoInvestigacion();
                            for (TipoInvestigacionDTO i : in) {
                                
                        %>
                        <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;">
                            <a href="verInvestigacion.jsp?id=<%=i.getIdTipoInvest()%>&nombre=<%=i.getNombre()%>" 
                               class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i><%=i.getNombre()%></a></li>                      
                                <% } %>
                    </ul>
                </div>
            </div><!--/col-md-3-->
            <div class="col-md-8 mb-margin-bottom-30">
                <br>
                <br>
                <div class="margin-bottom-40">
                    <%
                        
                        ArrayList<InvestigacionDTO> dp = f.mostrarInvestigacionTipo(codigo);
                    %>
                    <div>
                        <%  for (InvestigacionDTO p : dp) {%>
                        <div class="panel-group acc-v1" id="accordion-2">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><b>
                                            <a class="accordion-toggle menu-acordeon" data-toggle="collapse"
                                               data-parent=""
                                               href="#<%= p.getIdInvestigacion()%>" aria-expanded="false">
                                                <span aria-hidden="true"
                                                      ></span><i class="fa fa-users"></i><%=p.getNombre()%></a></b>
                                    </h4>
                                </div>
                                <div
                                    id="<%= p.getIdInvestigacion()%>"
                                    class="panel-collapse collapse" aria-expanded="false">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">                 
                                                <h5><b>Director: </b><%=p.getDirector()%></h5>
                                                <h6> </h6>                                             
                                                <h5><p style="text-align:justify"><%=p.getLineainvest()%></p> </h5>
                                                <h6> </h6>
                                                <% if(p.getEstatus() !=null) {%>
                                                <h5><b>Estatus: </b><%=p.getEstatus()%></h5>
                                                <h6> </h6> 
                                                <% } %>
                                                <% if(p.getCorreo()!=null) {%>
                                                <h5><b>Correo: </b><%=p.getCorreo()%></h5>
                                                <h6> </h6> 
                                                <% } %>
                                                <% if (p.getLink() != null) {%>
                                                <a href="<%=p.getLink()%>" target="_blank">Visite nuestro sitio </a></p>
                                                <% } %>                       
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <% }%>
                    </div>
                </div>
            </div>
            
            <hr class="devider devider-dotted">
        </div>
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>


