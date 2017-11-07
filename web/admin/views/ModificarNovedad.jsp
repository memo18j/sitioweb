<%-- 
    Document   : ModificarNovedad
    Created on : 26/09/2017, 08:24:00 PM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.NovedadDTO"%>
<%@page import="com.sitioweb.model.DTO.TipoNovedadDTO"%>
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
            <form name="formNov" id="formNov" action="procesar/pronovedad.jsp" enctype="multipart/form-data" method="post" >
                <header class="panel-heading">
                    <center><span class="h4"><b>Actualizar Informacion de Novedades</b></span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">
                            <%    IControlador fachada = (IControlador) session.getAttribute("fachada");
                                ArrayList<NovedadDTO> dc = fachada.mostrarNovedadId(codigo);
                                for (NovedadDTO c : dc) {

                            %>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Nombre</h4></div>
                                <input type="text" class="form-control" id="nom" name="nom" value="<%=c.getTitulo()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo Novedad</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="" disabled selected>Elige una opcion</option>           

                                    <%                                        IControlador f = (IControlador) session.getAttribute("fachada");
                                        ArrayList<TipoNovedadDTO> ss = f.mostrarTipoNovedad();
                                        for (TipoNovedadDTO m : ss) {
                                    %>
                                    <option value="<%=m.getIdTipoNov()%>"> <%=m.getNombre()%> </option>
                                    <%
                                        }
                                    %>             

                                </select>
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                                <textarea cols=70 rows=10 type="text" id="desc" name="desc"><%=c.getDescripcion()%></textarea>
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Fecha</h4></div>
                                <input type="text" class="form-control" id="fecha" name="fecha" value="<%=c.getFecha()%>">
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
    }else {
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