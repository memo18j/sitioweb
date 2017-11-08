<%-- 
    Document   : ModificarPrograma
    Created on : 25/09/2017, 09:19:43 PM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.ProgramaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.model.DTO.TipoProgramaDTO"%>
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
            <form name="formActPro" id="formActPro" action="Edit/editPrograma.jsp" enctype="multipart/form-data" method="post" >
                <header class="panel-heading">
                    <center><span class="h4"><b>Actualizar Informacion de Programas</b></span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">
                            <%    IControlador fachada = (IControlador) session.getAttribute("fachada");
                                ArrayList<ProgramaDTO> dc = fachada.mostrarProgramaId(codigo);
                                for (ProgramaDTO c : dc) {

                            %>
                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Id</h4></div>
                                <input type="text" class="form-control" id="id" name="id" value="<%=c.getIdPrograma()%>">
                            </div>
                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Nombre</h4></div>
                                <input type="text" class="form-control" id="nom_pro" name="nom_pro" value="<%=c.getNombre()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo Programa</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="<%=c.getTipo()%>" disabled><%=c.getTipo()%></option>           
                                    <%
                                        ArrayList<TipoProgramaDTO> ss = fachada.mostrarTipoPrograma();
                                        for (TipoProgramaDTO m : ss) {
                                    %>
                                    <option value="<%=m.getIdTipoProg()%>"> <%=m.getDescripcion()%> </option>
                                    <%
                                        }
                                    %>             

                                </select>
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Director Programa</h4></div>
                                <input type="text" class="form-control" id="dir_pro" name="dir_pro" value="<%=c.getDirector()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Correo</h4></div>
                                <input type="email" class="form-control" id="correo" name="correo" value="<%=c.getCorreoprograma()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Ubicacion</h4></div>
                                <input type="text" class="form-control" id="ubic" name="ubic" value="<%=c.getUbicacion()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Telefonos</h4></div>
                                <input type="text" class="form-control" id="tel" name="tel" value="<%=c.getTelefono()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Codigo SNIES</h4></div>
                                <input type="text" class="form-control" id="cod_snies" name="cod_snies" value="<%=c.getCodsnies()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Modalidad</h4></div>
                                <input type="text" class="form-control" id="mod" name="mod" value="<%=c.getModalidad()%>">
                            </div>
                            <div class="col-md-6"> 
                                <div class="headline margin-bottom-30"><h4>Horario de Atencion</h4></div>
                                <input type="text" class="form-control" id="horario" name="horario" value="<%=c.getHorario()%>">
                            </div>

                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Url Sitio Web</h4></div>
                                <input type="text" class="form-control" id="url_web" name="url_web" value="<%=c.getLink()%>">
                            </div> 
                            <div class="file-field input-field col-md-6">
                                <div class="headline margin-bottom-30"><h4>Imagen</h4>
                                    <input type="file" name="fichero" id="fichero">
                                </div>
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
