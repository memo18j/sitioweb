<%-- 
    Document   : ModificarExten
    Created on : 14/11/2017, 03:09:50 PM
    Author     : Memo
--%>

<%@page import="com.sitioweb.model.DTO.ExtensionDTO"%>
<%@page import="com.sitioweb.model.DTO.TipoExtensionDTO"%>
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
            <form name="formext" id="formext" action="Edit/editExtension.jsp" enctype="multipart/form-data" method="post" >
                <header class="panel-heading" style="background-color: #aa1916;">
                    <center><span class="h4" style="color: white;"><b>Actualizar Informacion de Extension</b></span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">
                            <%
                                  IControlador f = (IControlador) session.getAttribute("fachada");  
                                  ArrayList<ExtensionDTO> in = f.mostrarExtensionId(codigo);
                                  for(ExtensionDTO i:in) {
                                %>
                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Id Extension</h4></div>
                                <input type="text" class="form-control" id="id" name="id" value="<%=i.getIdExtension()%>">
                            </div>
                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Nombre</h4></div>
                                <input type="text" class="form-control" id="nom" name="nom" value="<%=i.getNombre()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo Extension</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="<%=i.getTipoext()%>"><%=i.getTnombre()%></option>           
                                    <%
                                        ArrayList<TipoExtensionDTO> ss = f.mostrarTipoExt();
                                        for (TipoExtensionDTO m : ss) {
                                    %>
                                    <option value="<%=m.getIdtipo()%>"><%=m.getDescripcion()%> </option>
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
                                <textarea cols=70  rows=10 type="text" id="linea" name="linea"><%=i.getDescripcion()%></textarea>
                            </div>
                            <div class="file-field input-field col-md-6">
                                <div class="headline margin-bottom-30"><h4>Documento</h4>
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
