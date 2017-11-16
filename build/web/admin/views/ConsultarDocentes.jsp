<%-- 
    Document   : ConsultarDocentes
    Created on : 3/10/2017, 03:35:38 PM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.DocenteDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">
            <header class="panel-heading" style="background-color: #aa1916;">
                <center><span class="h4" style="color: white;"><b>Consultar Informacion Docentes</b></span></center>
            </header>
            <br>
            <%
                IControlador fachada = (IControlador) session.getAttribute("fachada");
                ArrayList<DocenteDTO> dp = fachada.mostrarDocente();
            %>
            <div class="col-md-12">
                <div id="tablaD">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th data-field="id">Id</th>                            
                                <th data-field="nombre">Nombre</th>
                                <th data-field="dedicacion">Dedicacion</th>
                                <th data-field="Correo">Correo</th>                      
                                <th data-field="Edit">Editar</th>
                                <th data-field="Remove">Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (DocenteDTO i : dp) {%>
                            <tr>
                                <th data-field="id"><%=i.getIdDocente()%></th>                         
                                <th data-field="nombre"><%=i.getNombre()%></th>
                                <th data-field="dedicacion"><%=i.getTipo()%></th>
                                <th data-field="correo"><%=i.getCorreo()%></th>  
                                <th data-field="edit"><a class="btn btn-danger"style="background-color: #aa1916;" 
                                                         href="ModificarDocente.jsp?id=<%=i.getIdDocente()%>"><i class="fa fa-edit"></i></a></th>
                                <th data-field="remove"><a class="btn btn-danger"style="background-color: #aa1916;"
                                                           href="Eliminar/EliminarDocente.jsp?id=<%=i.getIdDocente()%>&nombre=<%=i.getNombre()%>"><i class="fa fa-trash-o"></i></a></th>
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


