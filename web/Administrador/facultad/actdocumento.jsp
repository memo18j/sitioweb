<%-- 
    Document   : actdocumento
    Created on : 15/06/2017, 06:30:52 AM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.DocumentoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<%
     String cod = request.getParameter("cod_doc");
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
                        <li class="active" title="Información Institucional"  style="font-style: italic; font-size: 14px;">Documentos</li>
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
                        <b>Actualizar Informacion Documentos</b></h1>
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
                ArrayList<DocumentoDTO> ss = f.mostrarDocumento2(codigo);

            %>
            <div>
                <form action="procesar/modificarDocu.jsp" enctype="multipart/form-data" method="post">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <% for(DocumentoDTO d :ss) {%>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Codigo </h4></div>
                            <input type="text" class="form-control" id="cod_do" name="cod_do" value="<%=d.getCoddocumento()%>">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Nombre</h4></div>
                            <input type="text" class="form-control" id="nom_do" name="nom_do" value="<%=d.getNombre()%>">
                        </div>
                        <div class="file-field input-field ">
                            <div class="headline margin-bottom-30"><h4>Documento</h4></div>
                            <input type="file" name="fichero" id="fichero">

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
                        <%}%>
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
