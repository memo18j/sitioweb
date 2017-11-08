<%-- 
    Document   : RegistrarInfraestructura
    Created on : 10/10/2017, 07:07:50 AM
    Author     : personal
--%>

<%@page import="com.sitioweb.model.DTO.TipoInfraestructuraDTO"%>
<%@page import="java.util.ArrayList"%>
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
            <form name="forminfr" id="forminfr" action="procesar/procesarInfraestructura.jsp"  method="post" >
                <header class="panel-heading" style="background-color: #aa1916;">
                    <center><span class="h4" style="color: white;"><b>Registro Informacion de Infraestructura</b></span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">

                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Nombre</h4></div>
                                <input type="text" class="form-control" id="nom" name="nom" placeholder="nombre">
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo Infraestructura</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="" disabled selected>Elige una opcion</option>           

                                    <%
                                        IControlador f = (IControlador) session.getAttribute("fachada");
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
                                <input type="text" class="form-control" id="ubicacion" name="ubicacion" placeholder="Ubicacion">
                            </div>                           
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                                <textarea cols=70  rows=10 type="text" id="linea" name="linea"></textarea>
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
            <div id="cargar"/>
            <br>
            <section class="panel">
                <br><br>
                <form name="formtipo" id="formtipo" action="procesar/protinfr.jsp" method="post">
                    <header class="panel-heading">
                        <center><span class="h4" style="color:"><b>Registrar Nuevo Tipo de Infraestructuctura</b></span></center>
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