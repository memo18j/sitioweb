<%-- 
    Document   : ConsultarProgramas
    Created on : 6/09/2017, 01:38:57 PM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.ProgramaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">

            <header class="panel-heading">
                <center><span class="h4"><b>Consultar Informacion Programas</b></span></center>
            </header>
            <br>
            <%
                IControlador fachada = (IControlador) session.getAttribute("fachada");
                ArrayList<ProgramaDTO> dp = fachada.mostrarPrograma();

            %>
            <div class="col-md-12">
                <div id="tablaD">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th data-field="id">Id</th>
                                <th data-field="nombre">Nombre</th>                             
                                <th data-field="Director">Director</th>
                                <th data-field="Correo">Email</th>
                                <th data-field="Tele">Telefono</th>
                                <th data-field="Edit">Editar</th>
                                <th data-field="Remove">Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                              <%for (ProgramaDTO st : dp) {%>
                              <tr>
                        <th data-field="id"><%=st.getIdPrograma()%></th>
                        <th data-field="nombre"><%=st.getNombre()%></th>                      
                        <th data-field="Director"><%=st.getDirector()%></th>
                        <th data-field="Correo"><%=st.getCorreoprograma()%></th>
                        <th data-field="Tele"><%=st.getTelefono()%></th>
                        <th data-field="edit"><a class="btn btn-danger"style="background-color: #aa1916;"
                        href="ModificarPrograma.jsp?id=<%=st.getIdPrograma()%>"><i class="fa fa-edit"></i></a></th>
                        <th data-field="remove"><a class="btn btn-danger"style="background-color: #aa1916;" 
                         href="modificarPrograma.jsp?id="><i class="fa fa-trash-o"></i></a></th>
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

