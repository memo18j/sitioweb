<%-- 
    Document   : ConsultarNovedad
    Created on : 26/09/2017, 08:20:05 PM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.NovedadDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">

            <header class="panel-heading" style="background-color: #aa1916;">
                <center><span class="h4" style="color: white;"><b>Consultar Informacion Novedades</b></span></center>
            </header>
            <br>
            <%
                IControlador fachada = (IControlador) session.getAttribute("fachada");
                ArrayList<NovedadDTO> dp = fachada.mostrarNovedad();
            %>
            <div class="col-md-12">
                <div id="tablaD">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th data-field="id">Id</th>                            
                                <th data-field="nombre">Nombre</th>
                                 <th data-field="tipo">Tipo</th>
                                <th data-field="fecha">Fecha</th>
                                <th data-field="Descrip">Descripcion</th>                      
                                <th data-field="Edit">Editar</th>
                                <th data-field="Remove">Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (NovedadDTO i : dp) {%>
                            <tr>
                                <th data-field="id"><%=i.getIdNovedad()%></th>                         
                                <th data-field="nombre"><%=i.getTitulo()%></th>
                                <th data-field="tipo"><%=i.getTnombre()%></th>
                                <th data-field="fecha"><%=i.getFecha()%></th>
                                <th data-field="Descrip"><%=i.getDescripcion()%></th>  
                                <th data-field="edit"><a class="btn btn-danger"style="background-color: #aa1916;" 
                                                         href="ModificarNovedad.jsp?id=<%=i.getIdNovedad()%>"><i class="fa fa-edit"></i></a></th>
                                <th data-field="remove"><a class="btn btn-danger"style="background-color: #aa1916;"
                                                           href="Eliminar/EliminarNovedad.jsp?id=<%=i.getIdNovedad()%>"><i class="fa fa-trash-o"></i></a></th>
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

