<%-- 
    Document   : actlaboratorios
    Created on : 13/06/2017, 09:49:30 AM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.LaboratorioDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<%
     String cod = request.getParameter("cod_lab");
     int codigo= Integer.parseInt(cod);
    %>
<script type="text/javascript" src="js/laboratorios.js"></script>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 margin-top-10 margin-bottom-20">
            <div class="row">
                <div class="col-md-8">
                    <ul class="breadcrumb no-padding margin-bottom-10">
                        <li title="Ingresar a Inicio"><a href="../principal/facuInge.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                        <li title="departamento"><a href="" style="font-style: italic; font-size: 14px;">Laboratorios</a></li>
                        <li class="active" title="Información departamentos"  style="font-style: italic; font-size: 14px;">Informacion departamento</li>
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
                        <b>Informacion laboratorios</b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <div class="container content profile">
        <div class="row">
            <%
                IControlador f = (IControlador) session.getAttribute("fachada");
                ArrayList<LaboratorioDTO> ss = f.mostrarLaboratorio2(codigo);

            %>
            <div>
                <form  name="formlab" id="formlab" action="procesar/modificarlab.jsp" enctype="multipart/form-data" method="post">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <%for (LaboratorioDTO m : ss) {%>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Codigo Laboratorio</h4></div>
                            <input type="text" class="form-control" id="cod_lab" name="cod_lab" value="<%=m.getCodlaboratorio()%>">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Nombre Laboratorio</h4></div>
                            <input type="text" class="form-control" id="nom_lab" name="nom_lab" value="<%=m.getNombre()%>">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                            <textarea cols=76 rows=10 name="descrip" id="descrip"><%=m.getDescripcion()%></textarea>
                        </div>
                        <div class="file-field input-field ">
                            <div class="headline margin-bottom-30"><h4>Imagen</h4>
                                <input type="file" name="fichero" id="fichero" value="<%=m.getLinkimg()%>">
                            </div>
                        </div>
                        <hr>
                        <div>
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-6">
                                <center><input type="submit" class="btn btn-danger btn-block btn-flat" href="" value="Actualizar"></center>
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
