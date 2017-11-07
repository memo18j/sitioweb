<%-- 
    Document   : ConsultarInfo
    Created on : 13/09/2017, 09:04:36 PM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.InformacionDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">

            <header class="panel-heading" style="background-color: #aa1916;">
                <center><span class="h4" style="color: white;"><b>Consultar Informacion Facultad</b></span></center>
            </header>
            <br>
            <%
                IControlador fachada = (IControlador) session.getAttribute("fachada");
                ArrayList<InformacionDTO> dp = fachada.mostrarInformacion();
            %>
            <div class="col-md-12">
                <div id="tablaD">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th data-field="id">Id</th>                            
                                <th data-field="nombre">Nombre</th>
                                <th data-field="Descrip">Descripcion</th>                      
                                <th data-field="Edit">Editar</th>
                                <th data-field="Remove">Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (InformacionDTO i : dp) {%>


                            <tr>
                                <th data-field="id"><%=i.getIdInformacion()%></th>                         
                                <th data-field="nombre"><%=i.getNombre()%></th>
                                <th data-field="Descrip"><%=i.getDescripcion()%></th>  
                                <th data-field="edit"><a class="btn btn-danger"style="background-color: #aa1916;" 
                                href="ModificarInfo.jsp?id=<%=i.getIdInformacion()%>"><i class="fa fa-edit"></i></a></th>
                                <th data-field="remove"><a class="btn btn-danger"style="background-color: #aa1916;"
                                href="Eliminar/EliminarInformacion.jsp?id=<%=i.getIdInformacion()%>&nombre=<%=i.getNombre()%>"><i class="fa fa-trash-o"></i></a></th>
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

