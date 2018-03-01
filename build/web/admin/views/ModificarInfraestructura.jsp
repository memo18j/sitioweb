<%-- 
    Document   : ModificarInfraestructura
    Created on : 10/10/2017, 07:06:37 AM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.InfraestructuraDTO"%>
<%@page import="com.sitioweb.model.DTO.TipoInfraestructuraDTO"%>
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
            <form name="forminfr" id="forminfr" action="Edit/editInfraestructura.jsp" enctype="multipart/form-data" method="post" >
                <header class="panel-heading" style="background-color: #aa1916;">
                    <center><span class="h4" style="color: white;"><b>Registro Informacion de Infraestructura</b></span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">
                            <%
                                  IControlador f = (IControlador) session.getAttribute("fachada");  
                                  ArrayList<InfraestructuraDTO> in = f.mostrarInfraestructuraId(codigo);
                                  for(InfraestructuraDTO i:in) {
                                %>
                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Id</h4></div>
                                <input type="text" class="form-control" id="id" name="id" value="<%=i.getIdInfra()%>">
                            </div>
                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Nombre</h4></div>
                                <input type="text" class="form-control" id="nom" name="nom" value="<%=i.getNombre()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo Infraestructura</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="<%=i.getTipo()%>"><%=i.getTnombre()%></option>             

                                    <%
                                    
                                        ArrayList<TipoInfraestructuraDTO> ss = f.mostrarTipoInfraestructura();
                                        for (TipoInfraestructuraDTO m : ss) {
                                    %>
                                    <option value="<%=m.getIdTipoInfra()%>"><%=m.getNombre()%> </option>
                                    <%
                                        }
                                    %>             

                                </select>
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Ubicacion </h4></div>
                                <input type="text" class="form-control" id="ubicacion" name="ubicacion"value="<%=i.getUbicacion()%>">
                            </div>                           
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                                <textarea cols=70  rows=10 type="text" id="linea" name="linea"><%=i.getDescripcion()%></textarea>
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