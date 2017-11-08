<%-- 
    Document   : ModificarDpto
    Created on : 3/10/2017, 04:25:20 PM
    Author     : personal
--%>
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
            <form name="formDpto" id="formDpto" action="Edit/editDpto.jsp" method="get">
                <header class="panel-heading">
                    <center><span class="h4">Modificar Informacion Departamentos</span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">
                           <%    IControlador fachada = (IControlador) session.getAttribute("fachada");
                                ArrayList<DepartamentoDTO> dc = fachada.mostrarDepartamentoId(codigo);
                                for (DepartamentoDTO c : dc) {
                            %>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Id</h4></div>
                                <input type="text" class="form-control" id="id" name="id" value="<%=c.getIddpto()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Nombre Departamamento</h4></div>
                                <input type="text" class="form-control" id="nom_dep" name="nom_dep" value="<%=c.getNombre()%>">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Director</h4></div>
                                <input type="text" class="form-control" id="director" name="director" value="<%=c.getDirector()%>">
                            </div> 
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                                <textarea cols=70 rows=10 name="descrip" id="descrip"><%=c.getDescripcion()%></textarea>
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Url Sitio Web</h4></div>
                                <input type="text" class="form-control" id="url_web" name="url_web" value="<%=c.getLink()%>">
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

