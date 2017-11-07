<%-- 
    Document   : ConsultarDpto
    Created on : 13/09/2017, 08:44:55 PM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.DepartamentoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">
            <header class="panel-heading">
                <center><span class="h4">Consultar Informacion Departamentos</span></center>
            </header>
            <%
                IControlador fachada = (IControlador) session.getAttribute("fachada");
                ArrayList<DepartamentoDTO> dp = fachada.mostrarDepartamento();
            %>
            <br>
            <div class="col-md-12">
                <div id="tablaD">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th data-field="id">Id</th>       
                                <th data-field="nombre">Nombre</th>
                                <th data-field="director">Director</th>
                                <th data-field="Descrip">Descripcion</th>                      
                                <th data-field="Edit">Editar</th>
                                <th data-field="Remove">Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (DepartamentoDTO i : dp) {%>
                            <tr>
                                <th data-field="id"><%=i.getIddpto()%></th>                         
                                <th data-field="nombre"><%=i.getNombre()%></th>
                                <th data-field="director"><%=i.getDirector()%></th>
                                <th data-field="Descrip"><%=i.getDescripcion()%></th>  
                                <th data-field="edit"><a class="btn btn-danger"style="background-color: #aa1916;" 
                                href="ModificarDpto.jsp?id=<%=i.getIddpto()%>"><i class="fa fa-edit"></i></a></th>
                                <th data-field="remove"><a class="btn btn-danger"style="background-color: #aa1916;"
                                href="Eliminar/EliminarDepartamento.jsp?id=<%=i.getIddpto()%>&nombre=<%=i.getNombre()%>"><i class="fa fa-trash-o"></i></a></th>
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

