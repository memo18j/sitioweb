<%-- 
    Document   : acteventos
    Created on : 7/06/2017, 07:32:41 AM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.NovedadDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:include page="../Plantillas/header.jsp"/>
<%
     String cod = request.getParameter("cod_eve");
     int codigo= Integer.parseInt(cod);
%>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 margin-top-10 margin-bottom-20">
            <div class="row">
                <div class="col-md-8">
                    <ul class="breadcrumb no-padding margin-bottom-10">
                        <li title="Ingresar a Inicio"><a href="../principal/facuInge.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                        <li title="Universidad"><a href="" style="font-style: italic; font-size: 14px;">Facultad</a></li>
                        <li class="active" title="Información Institucional"  style="font-style: italic; font-size: 14px;">Eventos</li>
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
                        <b>Actualizar Informacion de los Eventos</b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <div class="container content profile">
        <div class="row">
            <div class="col-md-6">

            </div>
            <div class="col-md-6">

            </div>
<%
                IControlador f = (IControlador) session.getAttribute("fachada");
                ArrayList<NovedadDTO> ss = f.mostrarNovedad2(codigo);

            %>

            <div>
                <form action="procesar/modificarEv.jsp" enctype="multipart/form-data" method="post">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <% for(NovedadDTO n :ss) { %>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Codigo</h4></div>
                            <input type="text" class="form-control" id="cod_eve" name="cod_eve" value="<%=n.getCodnovedad()%>">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Nombre Noticia</h4></div>
                            <input type="text" class="form-control" id="nom_eve" name="nom_eve" value="<%=n.getTitulo()%>">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                            <textarea cols=76 rows=10 type="text" name="desc" id="desc"><%=n.getDescripcion()%></textarea>
                        </div>
                        <div class="file-field input-field ">
                            <div class="headline margin-bottom-30"><h4>Imagen</h4>
                                <input type="file" name="fichero" id="fichero">
                            </div>
                        </div>
                      
                        <div>
                            <div class="headline margin-bottom-30"><h4>Fecha</h4></div>
                                <input type="text" class="form-control" name="fecha" id="fecha" value="<%=n.getFecha()%>">
                            
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-6">
                                <center><button type="submit" class="btn btn-danger btn-block btn-flat">Actualizar</button></center>
                            </div>
                            <div class="col-md-3">
                            </div>
                        </div>
                        <% } %>
                    </div>
                    <div class="col-md-3"></div>
                </form>
            </div>
        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>
