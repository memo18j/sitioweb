<%-- 
    Document   : VerInformacion
    Created on : 4/09/2017, 03:29:29 PM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.InformacionDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
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
                        <%
                                        IControlador f = (IControlador) session.getAttribute("fachada");
                                        ArrayList<InformacionDTO> in = f.mostrarInformacion();
                                        for (InformacionDTO i : in) {
                                            System.out.println("..." + i.getNombre());
                                    %>
                                    <li class="list-group-item" style="border:none; border-bottom: 1px solid #DDDEDF;">
                                        <a href="VerInformacion.jsp?id=<%=i.getIdInformacion()%>" class="text-menu"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i><%=i.getNombre()%></a></li>                      
                    <% } %>
                    </ul>
                </div>
            </div><!--/col-md-3-->

            <div class="col-md-8 mb-margin-bottom-30">
                <small class="pull-right" style="color:#aa1916;"><i
                        class="fa fa-calendar"></i></small>
                <div class="margin-bottom-40">
                    <%

                        ArrayList<InformacionDTO> dp = f.mostrarInformacionId(codigo);
                        for (InformacionDTO p : dp) {

                    %>
                    <div class="headline margin-bottom-30"><h1><%=p.getNombre()%></h1></div>
                    <div>
                        <h5><p align="justify"></p><%=p.getDescripcion()%></h5>
                    </div>
                    <br>
                    <% if(p.getImagen()!=null){%>
                    <div id="imagen" align="center">
                        <h5><img id="zoom_01" width="600" height="550" src="<%=p.getImagen()%>" /></h5>
                    </div>
                    <% } %>
                    <% } %>
                </div>
            </div>
        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>
<script type="text/javascript">
    
    function hacecositas() {
        var divImagen = document.getElementById("zoom_01");
    for (var i = 1; i<=10; i++) {
	if (document.getElementById('zoom_01'+i)) {
            document.getElementById('zoom_01'+i).style.display='none';
        }
    }
    }
    
    hacecositas();
    
</script>
<jsp:include page="../Plantillas/footer.jsp"/>

