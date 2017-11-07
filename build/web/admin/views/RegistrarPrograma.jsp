<%-- 
    Document   : RegistrarPrograma
    Created on : 5/09/2017, 02:27:07 PM
    Author     : personal
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.model.DTO.TipoProgramaDTO"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<%
    boolean s = (Boolean) session.getAttribute("estadoSesion");
    if (s) {
%>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">
            <form name="formHabitacion" id="formHabitacion" action="procesar/proprograma.jsp" enctype="multipart/form-data" method="post" >
                <header class="panel-heading">
                    <center><span class="h4"><b>Registro Informacion de Programas</b></span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">

                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Nombre Programa</h4></div>
                                <input type="text" class="form-control" id="nom_pro" name="nom_pro" placeholder="nombre Programa">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo Programa</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="" disabled selected>Elige una opcion</option>           

                                    <%
                                        IControlador f = (IControlador) session.getAttribute("fachada");
                                        ArrayList<TipoProgramaDTO> ss = f.mostrarTipoPrograma();
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
                                <input type="text" class="form-control" id="dir_pro" name="dir_pro" placeholder="Director Programa">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Correo</h4></div>
                                <input type="email" class="form-control" id="correo" name="correo" placeholder="Correo Institucional">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Ubicacion</h4></div>
                                <input type="text" class="form-control" id="ubic" name="ubic" placeholder="Ubicacion">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Telefonos</h4></div>
                                <input type="text" class="form-control" id="tel" name="tel" placeholder="Telefonos">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Codigo SNIES</h4></div>
                                <input type="text" class="form-control" id="cod_snies" name="cod_snies" placeholder="codigo snies">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Modalidad</h4></div>
                                <input type="text" class="form-control" id="mod" name="mod" placeholder="modalidad">
                            </div>
                            <div class="col-md-6"> 
                                <div class="headline margin-bottom-30"><h4>Horario de Atencion</h4></div>
                                <input type="text" class="form-control" id="horario" name="horario" placeholder="horario de atencion">
                            </div>

                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Url Sitio Web</h4></div>
                                <input type="text" class="form-control" id="url_web" name="url_web" placeholder="Url sitio web">
                            </div> 
                            <div class="file-field input-field col-md-6">
                                <div class="headline margin-bottom-30"><h4>Imagen</h4>
                                    <input type="file" name="fichero" id="fichero">
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <div class="col-md-12">
                    <footer class="panel-footer text-right bg-light lter">
                        <button type="submit" class="btn btn-danger btn-s-xs">Registrar</button>
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
