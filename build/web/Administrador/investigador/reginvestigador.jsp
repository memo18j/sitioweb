<%-- 
    Document   : reginvestigador
    Created on : 8/06/2017, 09:30:34 AM
    Author     : HP
--%>

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
                        <li title="Ingresar a Inicio"><a href="../principal/facuInge.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                        <li title="departamento"><a href="" style="font-style: italic; font-size: 14px;">Investigacion</a></li>
                        <li class="active" title="Información docentes"  style="font-style: italic; font-size: 14px;">Informacion Investigadores</li>
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
                        <b>Registrar Informacion de Investigadores  </b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <div class="container content profile">
        <div class="row">

            <div>
                <form id="regdoc" action="procesar/registrari.jsp"  method="post">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">

                        <div >
                            <div class="headline margin-bottom-30"><h4>Codigo Investigador</h4></div>
                            <input type="text" class="form-control" id="cod_inv" name="cod_inv" placeholder="codigo investigador">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Nombre investigador</h4></div>
                            <input type="text" class="form-control" id="nom_inv" name="nom_inv" placeholder="nombre investigador">
                        </div>
                  
                        <div>
                            <div class="headline margin-bottom-30"><h4>Departamento</h4></div>
                            <select class="form-control" id="depar" name="depar">
                                <option value="" disabled selected>Elige una opcion</option>           
                               <%
                                    IControlador f = (IControlador) session.getAttribute("fachada");
                                    ArrayList<DepartamentoDTO> ss = f.mostrarDpto();
                                    for (DepartamentoDTO m : ss) {
                                %>
                                <option value="<%=m.getCoddpto()%>"> <%=m.getNombre()%> </option>
                                <%
                                    }
                                %>   
                            </select>

                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>CVLAG</h4></div>
                            <input type="text" class="form-control" id="url_web" name="url_web" placeholder="Url CVLAG investigador">
                        </div>    
                        <hr>
                        <div>
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-6">
                                <center><button type="submit" class="btn btn-danger btn-block btn-flat">Registrar</button></center>
                            </div>
                            <div class="col-md-3">
                            </div>
                        </div>
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
