<%-- 
    Document   : ConsultarInvestigacion
    Created on : 10/10/2017, 06:50:34 AM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.InvestigacionDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">

            <header class="panel-heading">
                <center><span class="h4">Consultar Informacion Investigacion</span></center>
            </header>
            <%
                IControlador fachada = (IControlador) session.getAttribute("fachada");
                ArrayList<InvestigacionDTO> dp = fachada.mostrarInvestigacion();
            %>
            <br>
            <div class="col-md-12">
                <div id="tablaD">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th data-field="id">Id</th>
                                <th data-field="nombre">Nombre</th>
                                <th data-field="Tipo">Tipo</th>
                                <th data-field="Director">Director</th>
                                <th data-field="Correo">Email</th>
                                <th data-field="Estatus">Estatus</th>
                                <th data-field="Edit">Editar</th>
                                <th data-field="Remove">Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (InvestigacionDTO i : dp) {%>
                            <tr>
                                <th data-field="id"><%=i.getIdInvestigacion()%></th>
                                <th data-field="nombre"><%=i.getNombre()%></th>
                                <th data-field="tipo"><%=i.getTnombre()%></th>
                                <th data-field="Director"><%=i.getDirector()%></th>
                                <th data-field="Correo"><%=i.getCorreo()%></th>
                                <th data-field="Estatus"><%=i.getEstatus()%></th>
                                <th data-field="edit"><a class="btn btn-danger"style="background-color: #aa1916;" 
                                href="ModificarInvestigacion.jsp?id=<%=i.getIdInvestigacion()%>"><i class="fa fa-edit"></i></a></th>
                                <th data-field="remove"><a class="btn btn-danger"style="background-color: #aa1916;" 
                               href="Eliminar/EliminarInvestigacion.jsp?id=<%=i.getIdInvestigacion()%>&nombre=<%=i.getNombre()%>"><i class="fa fa-trash-o"></i></a></th>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div> 
            </div>  
        </section>
    </div>
</div>
<jsp:include page="../plantilla/footer.jsp"/>