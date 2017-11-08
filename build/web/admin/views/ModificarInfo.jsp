<%-- 
    Document   : modificarInfo
    Created on : 26/09/2017, 06:24:05 AM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.InformacionDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.model.DTO.TipoInfoDTO"%>
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
        <section class="panel ">
            <form name="formMinfo" id="formMinfo" action="Edit/editInfo.jsp" enctype="multipart/form-data" method="post">
                <header class="panel-heading">
                    <center><span class="h4"><b>Actualizar Informacion de Facultad</b></span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">
                            <%
                                  IControlador f = (IControlador) session.getAttribute("fachada");  
                                  ArrayList<InformacionDTO> in = f.mostrarInformacionId(codigo);
                                  for(InformacionDTO i:in) {
                                %>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo Informacion</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="" disabled selected>Elige una opcion</option>  
                                    <%
                                            
                                        ArrayList<TipoInfoDTO> ss = f.mostrarTipoInfo();
                                        for (TipoInfoDTO m : ss) {                                           
                                    %>
                                    <option value="<%=m.getIdinfo()%>"> <%=m.getDescripcion()%> </option>
                                    <%
                                        }
                                    %>   
                                </select>                                    
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Id</h4></div>
                                <input type="text" class="form-control" id="id" name="id" value="<%=i.getIdInformacion()%>">   
                            </div>    
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Nombre</h4></div>
                                <input type="text" class="form-control" id="nom" name="nom" value="<%=i.getNombre()%>">   
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                                <textarea cols=70 rows=10 type="text" id="desc" name="desc"><%=i.getDescripcion()%></textarea>
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Url relacionados</h4></div>
                                <input type="text" class="form-control" id="url" name="url" value="<%=i.getLink()%>">   
                            </div>
                            <div class="file-field input-field col-md-6 ">
                                <div class="headline margin-bottom-30"><h4>Imagen</h4>
                                    <input type="file" name=image id="image">
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
