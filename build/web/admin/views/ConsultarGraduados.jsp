<%-- 
    Document   : ConsultarGraduados
    Created on : 26/11/2017, 05:03:22 PM
    Author     : Memo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.model.DTO.GraduadoDTO"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">
            <header class="panel-heading" style="background-color: #aa1916;">
                <center><span class="h4" style="color: white;"><b>Consultar Informacion Graduados
                        </b></span></center>
            </header>
            <%
                IControlador f = (IControlador) session.getAttribute("fachada");
                ArrayList<GraduadoDTO> ss = f.mostrarGraduado();
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
                            <% for (GraduadoDTO i : ss) {%>
                            <tr>
                                <th data-field="id"><%=i.getIdGraduado()%></th>                         
                                <th data-field="nombre"><%=i.getNombre()%></th>
                                <th data-field="tipo"><%=i.getTnombre()%></th>
                                <th data-field="descripcion"><%=i.getDescripcion()%></th> 
                                <th data-field="edit"><a class="btn btn-danger"style="background-color: #aa1916;" 
                                                         href="ModificarGraduados.jsp?id=<%=i.getIdGraduado()%>"><i class="fa fa-edit"></i></a></th>
                                <th data-field="remove"><a class="btn btn-danger"style="background-color: #aa1916;"
                                                           href="Eliminar/EliminarGraduados.jsp?id=<%=i.getIdGraduado()%>&nombre=<%=i.getNombre()%>"><i class="fa fa-trash-o"></i></a></th>
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