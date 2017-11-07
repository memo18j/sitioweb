<%-- 
    Document   : RegistrarDpto
    Created on : 5/09/2017, 09:11:32 PM
    Author     : personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<%
    boolean s = (Boolean) session.getAttribute("estadoSesion");
    if (s) {
%>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">
            <form name="formDpto" id="formDpto" action="procesar/procesarDpto.jsp" method="get">
                <header class="panel-heading">
                    <center><span class="h4">Registro Informacion Departamentos</span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">

                           
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Nombre Departamamento</h4></div>
                                <input type="text" class="form-control" id="nom_dep" name="nom_dep" placeholder="nombre departamento">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Director</h4></div>
                                <input type="text" class="form-control" id="director" name="director" placeholder="Nombre Director Departamento">
                            </div> 
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                                <textarea cols=70 rows=10 name="descrip" id="descrip"></textarea>
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Url Sitio Web</h4></div>
                                <input type="text" class="form-control" id="url_web" name="url_web" placeholder="Url sitio web">
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
