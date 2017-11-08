<%-- 
    Document   : ConsultarInfraestructura
    Created on : 10/10/2017, 07:06:14 AM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.InfraestructuraDTO"%>
<%@page import="com.sitioweb.model.DTO.DepartamentoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">
            <header class="panel-heading" style="background-color: #aa1916;">
                    <center><span class="h4" style="color: white;"><b>Consultar Informacion de Infraestructura</b></span></center>
                </header>
            <%
                IControlador fachada = (IControlador) session.getAttribute("fachada");
                ArrayList<InfraestructuraDTO> dp = fachada.mostrarInfraestructura();
            %>
            <br>
            <div class="col-md-12">
                <div id="tablaD">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th data-field="id">Id</th>       
                                <th data-field="nombre">Nombre</th>
                                <th data-field="ubicacion">Ubicacion</th>                     
                                <th data-field="Edit">Editar</th>
                                <th data-field="Remove">Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (InfraestructuraDTO i : dp) {%>
                            <tr>
                                <th data-field="id"><%=i.getIdInfra()%></th>                         
                                <th data-field="nombre"><%=i.getNombre()%></th>
                                <th data-field="ubicacion"><%=i.getUbicacion()%></th>
                                <th data-field="Descrip"><%=i.getDescripcion()%></th>  
                                <th data-field="edit"><a class="btn btn-danger"style="background-color: #aa1916;" 
                                href="ModificarInfraestructura.jsp?id=<%=i.getIdInfra()%>"><i class="fa fa-edit"></i></a></th>
                                <th data-field="remove"><a class="btn btn-danger"style="background-color: #aa1916;"
                                href="Eliminar/EliminarInfraestructura.jsp?id=<%=i.getIdInfra()%>&nombre=<%=i.getNombre()%>"><i class="fa fa-trash-o"></i></a></th>
                            </tr>
                            <% }%> 
                        </tbody>
                    </table>
                </div> 
            </div>  
        </section>
    </div>
</div>
<jsp:include page="../plantilla/footer.jsp"/>


