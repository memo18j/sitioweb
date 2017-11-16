<%-- 
    Document   : ModificarIntern
    Created on : 14/11/2017, 03:10:07 PM
    Author     : Memo
--%>

<%@page import="com.sitioweb.model.DTO.InternacionalizacionDTO"%>
<%@page import="com.sitioweb.model.DTO.TipoInternacionalizacionDTO"%>
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
            <form name="forminter" id="forminter" action="Edit/editInternac.jsp" enctype="multipart/form-data" method="post" >
                <header class="panel-heading" style="background-color: #aa1916;">
                    <center><span class="h4" style="color: white;"><b>Actualizar Informacion de Internacionalizacion</b></span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">
                         <%
                                  IControlador f = (IControlador) session.getAttribute("fachada");  
                                  ArrayList<InternacionalizacionDTO> in = f.mostrarInterId(codigo);
                                  for(InternacionalizacionDTO i:in) {
                                %>
                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Id Internacionalizacion</h4></div>
                                <input type="text" class="form-control" id="id" name="id" value="<%=i.getIdInternac()%>">
                            </div>    
                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Nombre</h4></div>
                                <input type="text" class="form-control" id="nom" name="nom" value="<%=i.getNombre()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo Internacionalizacion</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="" disabled selected>Elige una opcion</option>           
                                    <%                          
                                        ArrayList<TipoInternacionalizacionDTO> ss = f.mostrarTipoInter();
                                        for (TipoInternacionalizacionDTO m : ss) {
                                    %>
                                    <option value="<%=m.getIdTipoInternac()%>"><%=m.getDescripcion()%> </option>
                                    <%
                                        }
                                    %>             

                                </select>
                            </div>                   
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Url Sitio Web</h4></div>
                                <input type="text" class="form-control" id="url_web" name="url_web" value="<%=i.getLink()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                                <textarea cols=70  rows=10 type="text" id="linea" name="linea"><%=i.getIdInternac()%></textarea>
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
            <div id="cargar"/>
            <br>
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

