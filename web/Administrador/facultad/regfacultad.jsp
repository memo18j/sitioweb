<%-- 
    Document   : regfacultad
    Created on : 3/05/2017, 09:05:49 AM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.ConsejoFacultadDTO"%>
<%@page import="com.sitioweb.model.DTO.EstructuraOrgDTO"%>
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
         
            <div>
                <form  action="procesar/registrarf.jsp"  method="post">
                    <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Codigo facultad</h4></div>
                        <input type="text" class="form-control" id="cod_fac" name="cod_fac" placeholder="codigo facultad">
                    </div>

                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Nombre facultad</h4></div>
                        <input type="text" class="form-control" id="nom_fac" name="nom_fac" placeholder="nombre facultad">      
                    </div>
                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Misión</h4></div>
                        <textarea cols=76 rows=10 type="text" id="mis" name="mis"></textarea>
                    </div>

                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Visión</h4></div>
                        <textarea cols=76 rows=10 type="text" id="vis" name="vis"></textarea>
                    </div>
                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Objetivo</h4></div>
                        <textarea cols=76 rows=10 type="text" id="obj" name="obj"></textarea>
                    </div>
                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Historia</h4></div>
                        <textarea cols=76 rows=10 type="text" id="hist" name="hist"></textarea>
                    </div>
                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Estructura Organizacional</h4></div>
                        <select class="form-control" id="estructura" name="estructura">
                            <option value="" disabled selected>Elige una opcion</option>           
                            <%
                                IControlador f = (IControlador) session.getAttribute("fachada");
                                ArrayList<EstructuraOrgDTO> ss = f.mostrarEstructura();
                                for (EstructuraOrgDTO m : ss) {
                            %>
                            <option value="<%=m.getCodestructura()%>"> <%=m.getCodestructura()%> </option>
                            <%
                                }
                            %>   
                        </select>

                    </div>
                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Concejo </h4></div>
                        <select class="form-control" id="concejo" name="concejo">
                            <option value="" disabled selected>Elige una opcion</option>           
                            <%
                               
                                ArrayList<ConsejoFacultadDTO> sp= f.mostrarConsejo();
                                for (ConsejoFacultadDTO m : sp) {
                            %>
                            <option value="<%=m.getCodconsejo()%>"> <%=m.getCodconsejo()%> </option>
                            <%
                                }
                            %>   
                        </select>

                    </div>
            </div>
                    <br>
                    <div class="col-md-12">
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-6">
                            <br>
                            <center><button type="submit" class="btn btn-danger btn-block btn-flat">Registrar</button></center>
                        </div>
                        <div class="col-md-3">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>
