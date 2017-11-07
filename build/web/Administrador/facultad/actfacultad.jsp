<%-- 
    Document   : actfacultad
    Created on : 2/06/2017, 04:39:50 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.ConsejoFacultadDTO"%>
<%@page import="com.sitioweb.model.DTO.EstructuraOrgDTO"%>
<%@page import="com.sitioweb.model.DTO.FacultadDTO"%>
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
                        <li title="Ingresar a Inicio"><a href="../principal/facuInge.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
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
            <div class="col-md-6">

            </div>
            <div class="col-md-6">

            </div>
            <%
                IControlador f = (IControlador) session.getAttribute("fachada");
                ArrayList<FacultadDTO> ss = f.mostrarFacultad();

            %>

            <div>
                <form action="procesar/modificarf.jsp" method="get">
                    <%for (FacultadDTO m : ss) {%>
                    <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Codigo facultad</h4></div>
                        <input type="text" class="form-control" id="cod_fac" name="cod_fac" value="<%=m.getCodfacultad()%>">
                    </div>

                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Nombre facultad</h4></div>
                        <input type="text" class="form-control" id="nom_fac" name="nom_fac" value="<%=m.getNombre()%>">      
                    </div>
                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Misión</h4></div>
                        <textarea cols=76 rows=10  type="text" name="mision" id="mision"><%=m.getMision()%></textarea>
                    </div>

                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Visión</h4></div>
                        <textarea cols=76 rows=10 type="text" name="vision" id="vision"><%=m.getVision()%></textarea>
                    </div>
                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Objetivo</h4></div>
                        <textarea cols=76 rows=10 type="text" name="objetivo" id="objetivo"><%=m.getObjetivo()%></textarea>
                    </div>
                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Historia</h4></div>
                        <textarea cols=76 rows=10 type="text" name="historia" id="historia"><%=m.getHistoria()%></textarea>
                    </div>

                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Estructura Organizacional</h4></div>
                        <input type="text" class="form-control" id="estructura" name="estructura" value="<%=m.getEstructuraorg()%>">
                    </div>

                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Concejo facultad</h4></div>
                        <input type="text" class="form-control" id="concejo" name="concejo" value="<%=m.getConsejofacult()%>">      
                    </div>
            </div>
                    <br>
                    <div class="col-md-12">
                        <br>
                        <div class="col-md-1">
                        </div>
                        
                        <div class="col-md-5">
                            <center><button type="submit" class="btn btn-danger btn-block btn-flat">Actualizar</button></center>
                        </div>
                        
                        <div class="col-md-5">
                            <center><button type="button" class="btn btn-danger btn-block btn-flat">Eliminar</button></center>
                        </div>
                        <div class="col-md-1">
                        </div>
                    </div>
                </form>
            </div>
            <%}%>
        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>
