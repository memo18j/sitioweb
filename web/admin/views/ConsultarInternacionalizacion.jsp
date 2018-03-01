<%-- 
    Document   : ConsultarInternacionalizacion
    Created on : 14/11/2017, 03:09:30 PM
    Author     : Memo
--%>


<%@page import="com.sitioweb.model.DTO.InternacionalizacionDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">
            <header class="panel-heading" style="background-color: #aa1916;">
                    <center><span class="h4" style="color: white;"><b>Consultar Informacion de Internacionalizacion
                            </b></span></center>
                </header>
            <%
                IControlador fachada = (IControlador) session.getAttribute("fachada");
                ArrayList<InternacionalizacionDTO> dp = fachada.mostrarInter();
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
                            <% for (InternacionalizacionDTO i : dp) {%>
                            <tr>
                                <th data-field="id"><%=i.getIdInternac()%></th>                         
                                <th data-field="nombre"><%=i.getNombre()%></th>
                                <th data-field="tipo"><%=i.getTnombre()%></th>
                                <th data-field="descripcion"><%=i.getDescripcion()%></th> 
                                <th data-field="edit"><a class="btn btn-danger"style="background-color: #aa1916;" 
                                href="ModificarIntern.jsp?id=<%=i.getIdInternac()%>"><i class="fa fa-edit"></i></a></th>
                                <th data-field="remove"><a class="btn btn-danger"style="background-color: #aa1916;"
                                href="Eliminar/EliminarIntern.jsp?id=<%=i.getIdInternac()%>&nombre=<%=i.getNombre()%>"><i class="fa fa-trash-o"></i></a></th>
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