<%-- 
    Document   : consultarLab
    Created on : 13/06/2017, 10:05:31 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.LaboratorioDTO"%>
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
                        <li class="active" title="Información departamentos"  style="font-style: italic; font-size: 14px;">Consultar Informacion</li>
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
                        <b>Consultar Laboratorios</b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <div class="container content profile">
        <div class="row">

            
            <div>
                <form action="actlaboratorios.jsp" method="post">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="headline margin-bottom-30"><h4>Laboratorios</h4></div>
                        <div>
                            <select class="form-control" id="cod_lab" name="cod_lab">
                                <option value="" disabled selected>Elige una opcion</option>           
                                <%
                                    IControlador f = (IControlador) session.getAttribute("fachada");
                                    ArrayList<LaboratorioDTO> ss = f.mostrarLaboratorio();
                                    for (LaboratorioDTO m : ss) {
                                %>
                                <option value="<%=m.getCodlaboratorio()%>"> <%=m.getNombre()%> </option>
                                <%
                                    }
                                %>   
                            </select>                
                        <hr>
                        </div>
                        <div>
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-6">
                                <center><input type="submit" class="btn btn-danger btn-block btn-flat" href="" value="Buscar"></center>
                            </div>

                            <div class="col-md-3">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </form>    
        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>


