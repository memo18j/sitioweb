<%-- 
    Document   : ModificarInvestigacion
    Created on : 8/11/2017, 03:18:45 PM
    Author     : Memo
--%>

<%@page import="com.sitioweb.model.DTO.InvestigacionDTO"%>
<%@page import="com.sitioweb.model.DTO.TipoInvestigacionDTO"%>
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
            <form name="forminvest" id="formnvest" action="Edit/editInvestigacion.jsp"  method="post" >
                <header class="panel-heading" style="background-color: #aa1916;">
                    <center><span class="h4" style="color: white;"><b>Modificar Informacion de Investigacion</b></span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">
                             <%
                                  IControlador f = (IControlador) session.getAttribute("fachada");  
                                  ArrayList<InvestigacionDTO> in = f.mostrarInvestigacionId(codigo);
                                  for(InvestigacionDTO i:in) {
                                %>
                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Id Investigacion</h4></div>
                                <input type="text" class="form-control" id="id" name="id" value="<%=i.getIdInvestigacion()%>">
                            </div>
                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Nombre</h4></div>
                                <input type="text" class="form-control" id="nom" name="nom" value="<%=i.getNombre()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo Investigacion</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="" disabled selected>Elige una opcion</option>           

                                    <%
                                       
                                        ArrayList<TipoInvestigacionDTO> ss = f.mostrarTipoInvestigacion();
                                        for (TipoInvestigacionDTO m : ss) {
                                    %>
                                    <option value="<%=m.getIdTipoInvest()%>"><%=m.getNombre()%> </option>
                                    <%
                                        }
                                    %>             

                                </select>
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Director </h4></div>
                                <input type="text" class="form-control" id="dir" name="dir" value="<%=i.getDirector()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Correo</h4></div>
                                <input type="email" class="form-control" id="correo" name="correo" value="<%=i.getCorreo()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Estatus</h4></div>
                                <select class="form-control" id="estatus" name="estatus">
                                    <option value="" disabled selected>Elige una opcion</option>                        
                                    <option value="Tiempo Completo">Tiempo Completo</option>
                                    <option value="Tiempo Completo(Ocacional)">Tiempo Completo(Ocacional)</option>
                                    <option value="Catedra">Catedra</option>                         
                                </select>
                            </div> 
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Url Sitio Web</h4></div>
                                <input type="text" class="form-control" id="url_web" name="url_web" value="<%=i.getLink()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Linea investigativa</h4></div>
                                <textarea cols=70  rows=10 type="text" id="linea" name="linea"><%=i.getLineainvest()%></textarea>
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