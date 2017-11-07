<%-- 
    Document   : ModificarDocente
    Created on : 3/10/2017, 04:11:56 PM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.DocenteDTO"%>
<%@page import="com.sitioweb.model.DTO.DepartamentoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<%
    boolean s = (Boolean) session.getAttribute("estadoSesion");
    if (s) {
        String id = request.getParameter("id");
        int codigo = Integer.parseInt(id);
%>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">
            <form name="formHabitacion" id="formHabitacion" action="procesar/ModificarDocente.jsp" method="post">
                <header class="panel-heading">
                    <center><span class="h4">Modificar Informacion Docentes</span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">
                           <%    IControlador fachada = (IControlador) session.getAttribute("fachada");
                                ArrayList<DocenteDTO> dc = fachada.mostrarDocenteId(codigo);
                                for (DocenteDTO c : dc) {
                            %>
                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Nombre Docente</h4></div>
                                <input type="text" class="form-control" id="nom_doc" name="nom_doc" value="<%=c.getNombre()%>">
                            </div>                           
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="" disabled selected>Elige una opcion</option>                        
                                    <option value="Tiempo Completo">Tiempo Completo</option>
                                    <option value="Tiempo Completo(Ocacional)">Tiempo Completo(Ocacional)</option>
                                    <option value="Catedra">Catedra</option>                         
                                </select>
                            </div> 
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Departamento</h4></div>
                               <select class="form-control" id="depart" name="depart">
                                <option value="" disabled selected>Elige una opcion</option>           
                                <%
                                    IControlador f = (IControlador) session.getAttribute("fachada");
                                    ArrayList<DepartamentoDTO> ss = f.mostrarDepartamento();
                                    for (DepartamentoDTO m : ss) {
                                %>
                                <option value="<%=m.getIddpto()%>"> <%=m.getNombre()%> </option>
                                <%
                                    }
                                %>   
                            </select>
                            </div>
                             <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Correo</h4></div>
                                <input type="email" class="form-control" id="correo" name="correo"value="<%=c.getCorreo()%>">
                            </div>                                            
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>CVLAG</h4></div>
                                <input type="text" class="form-control" id="url_web" name="url_web" value="<%=c.getLinkcvlad()%>">
                            </div>  
                            <% } %>
                        </div>
                    </div>
                </section>
                <div class="col-md-12">
                    <footer class="panel-footer text-right bg-light lter">
                        <button type="submit" class="btn btn-danger btn-s-xs">Actualizar</button>
                    </footer>
                </div>
            </form>
        </section>
    </div>
</div>
<%
} else {
%>
<br><br><br><br><br><br>
<center>
    <img src="https://www.techtricksworld.com/wp-content/uploads/2015/12/Error-404.png" alt="ERROR">
</center>
<br><br><br><br><br><br>
<%
    }
%>
<jsp:include page="../plantilla/footer.jsp"/>
