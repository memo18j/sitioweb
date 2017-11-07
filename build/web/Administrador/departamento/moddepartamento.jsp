<%-- 
    Document   : moddepartamento
    Created on : 31/05/2017, 07:33:42 PM
    Author     : HP
--%>
<%@page import="com.sitioweb.model.DTO.DepartamentoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<%
     String cod = request.getParameter("cod_dep");
     int codigo= Integer.parseInt(cod);
    %>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 margin-top-10 margin-bottom-20">
            <div class="row">
                <div class="col-md-8">
                    <ul class="breadcrumb no-padding margin-bottom-10">
                        <li title="Ingresar a Inicio"><a href="../principal/facuInge.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                        <li title="departamento"><a href="" style="font-style: italic; font-size: 14px;">Departamento</a></li>
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
                <div class="col-md-10" >
                    <h1 class="pull-left" style="font-size: 36px;">
                        <b>Actualizar Informacion de departamentos</b></h1>
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
                ArrayList<DepartamentoDTO> ss = f.mostrarDpto2(codigo);

            %>
            <div>
                <form action="procesar/modificard.jsp" method="get">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <%for (DepartamentoDTO m : ss) {%>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Codigo Departamamento</h4></div>
                            <input type="text" id="cod_dep" name="cod_dep" class="validate" value="<%=m.getCoddpto()%>">
                        </div>                
                        <div>
                            <div class="headline margin-bottom-30"><h4>Nombre Departamamento</h4></div>
                            <input type="text" class="form-control" id="nom_dep" name="nom_dep" value="<%=m.getNombre()%>">
                        </div>

                        <div>
                            <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                            <textarea cols=76 rows=10 type="text"name="descrip" id="descrip" ><%=m.getDescripcion()%></textarea>
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Url Sitio Web</h4></div>
                            <input type="text" class="form-control" id="url_web" name="url_web" value="<%=m.getUrllink()%>">
                        </div>    
                        <hr>
                        <div>
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
                    </div>
                    <div class="col-md-3"></div>
                </form>
            </div>
            <%}%>
        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>
