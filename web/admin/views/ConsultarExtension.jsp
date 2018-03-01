<%-- 
    Document   : ConsultarExtension
    Created on : 14/11/2017, 03:09:03 PM
    Author     : Memo
--%>


<%@page import="com.sitioweb.model.DTO.ExtensionDTO"%>
<%@page import="com.sitioweb.model.DTO.DepartamentoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">
            <header class="panel-heading" style="background-color: #aa1916;">
                    <center><span class="h4" style="color: white;"><b>Consultar Informacion de Extension
                            </b></span></center>
                </header>
            <%
                IControlador fachada = (IControlador) session.getAttribute("fachada");
                ArrayList<ExtensionDTO> dp = fachada.mostrarExtension();
            %>
            <br>
            <div class="col-md-12">
                <div id="tablaD">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th data-field="id">Id</th>       
                                <th data-field="nombre">Nombre</th>
                                <th data-field="tipo">Tipo</th>
                                <th data-field="descripcion">Descripcion</th>                     
                                <th data-field="Edit">Editar</th>
                                <th data-field="Remove">Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (ExtensionDTO i : dp) {%>
                            <tr>
                                <th data-field="id"><%=i.getIdExtension()%></th>                         
                                <th data-field="nombre"><%=i.getNombre()%></th>
                                <th data-field="tipo"><%=i.getTnombre()%></th>
                                <th data-field="descripcion"><%=i.getDescripcion()%></th> 
                                <th data-field="edit"><a class="btn btn-danger"style="background-color: #aa1916;" 
                                href="ModificarExten.jsp?id=<%=i.getIdExtension()%>"><i class="fa fa-edit"></i></a></th>
                                <th data-field="remove"><a class="btn btn-danger"style="background-color: #aa1916;"
                                href="Eliminar/EliminarExten.jsp?id=<%=i.getIdExtension()%>&nombre=<%=i.getNombre()%>"><i class="fa fa-trash-o"></i></a></th>
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
