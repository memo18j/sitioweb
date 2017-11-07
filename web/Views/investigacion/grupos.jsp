<%-- 
    Document   : grupos
    Created on : 1/06/2017, 08:32:06 PM
    Author     : HP
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.model.DTO.GrupoInvestigacionDTO"%>
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
                        <li title="Ingresar a Inicio"><a href="../../index.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                        <li title="departamento"><a href="" style="font-style: italic; font-size: 14px;">Investigacion</a></li>
                        <li class="active" title="Información grupos"  style="font-style: italic; font-size: 14px;">Informacion Grupos de Investigacion</li>
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
                        <b> Informacion de Grupos de Investigacion</b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <%
        IControlador fachada = (IControlador) session.getAttribute("fachada");
        ArrayList<GrupoInvestigacionDTO> dp = fachada.mostrarGrupoInvest();

    %>
    <div class="container content profile">
        <div class="row">

            <div id="tablaD">
                <table class="table table-bordered">
                    <thead>
                        <tr>                             
                            <th data-field="nombre">Nombre</th>
                            <th data-field="director">Director</th>
                            <th data-field="depar">Departamento</th>
                            <th data-field="correo">Correo</th>
                            <th data-field="estatus">Estatus</th>
                            <th data-field="linea">Linea Investigacion</th>
                            <th data-field="sitio">Sitio web</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%for (GrupoInvestigacionDTO st : dp) {%>
                        <tr>
                            <th data-field="nombre"><%=st.getNombre()%></th>
                            <th data-field="director"><%=st.getNomdirector()%></th>
                            <th data-field="depar"><%=st.getNomdpto()%></th>
                            <th data-field="correo"><%=st.getCorreo_director()%></th>
                            <th data-field="estatus"><%=st.getEstatus()%></th>
                            <th data-field="linea"><%=st.getLineainvest()%></th>
                            <th data-field="sitio"><a href="<%=st.getUrllink()%>"><h5>Ir al Sitio</h5></a></th>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div> 

        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>
