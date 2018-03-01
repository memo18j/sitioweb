<%-- 
    Document   : RegistrarInformGraduados
    Created on : 26/11/2017, 05:03:01 PM
    Author     : Memo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.model.DTO.TipoInfoGraduadoDTO"%>
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
            <form name="formGra" id="formGra" action="procesar/procesarGrad.jsp" enctype="multipart/form-data" method="post" >
                <header class="panel-heading" style="background-color: #aa1916;">
                    <center><span class="h4" style="color: white;"><b>Registro Informacion Graduados</b></span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">

                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Nombre</h4></div>
                                <input type="text" class="form-control" id="nom" name="nom" placeholder="nombre">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo Informacion</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="" disabled selected>Elige una opcion</option>           
                                    <%
                                        IControlador f = (IControlador) session.getAttribute("fachada");
                                        ArrayList<TipoInfoGraduadoDTO> ss = f.mostrarTipoInfoGrad();
                                        for (TipoInfoGraduadoDTO m : ss) {
                                    %>
                                    <option value="<%=m.getIdtipoinfo()%>"><%=m.getDescripcion()%> </option>
                                    <%
                                        }
                                    %>             

                                </select>
                            </div>                   
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Url Sitio Web</h4></div>
                                <input type="text" class="form-control" id="url_web" name="url_web" placeholder="Url sitio web">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                                <textarea cols=70  rows=10 type="text" id="linea" name="linea"></textarea>
                            </div>
                            <div class="file-field input-field col-md-6">
                                <div class="headline margin-bottom-30"><h4>Documento</h4>
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
            <div id="cargar"/>
            <br>

            <section class="panel">
                <br><br>
                <form name="formtipo" id="formtipo" action="procesar/protipgra.jsp" method="post">
                    <header class="panel-heading">
                        <center><span class="h4" style="color:"><b>Nuevo Tipo Informacion</b></span></center>
                    </header>
                    <section class="panel panel-default">
                        <div class="col-md-12">
                            <div class="panel-body">
                                <div class="col-md-6">
                                    <div class="headline margin-bottom-30"><h4><b>Nuevo Tipo</b></h4></div>
                                    <input type="text" class="form-control" id="nom_tip" name="nom_tip" placeholder="Nuevo tipo ">   
                                </div>
                                <div class="col-md-6">
                                    <br>
                                    <br>
                                    <button type="submit" class="btn btn-danger btn-s-xs">Registrar</button>                  
                                </div>
                            </div>
                        </div>
                    </section>
                </form>
            </section>
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

