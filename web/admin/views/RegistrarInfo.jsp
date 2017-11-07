<%-- 
    Document   : RegistrarInfo
    Created on : 5/09/2017, 06:43:58 AM
    Author     : personal
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.model.DTO.TipoInfoDTO"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<script type="text/javascript" src="js/js.js"></script>
<%
    boolean s = (Boolean) session.getAttribute("estadoSesion");
    if (s) {
%>
<div class="panel-body">
    <div class="row">
        <section class="panel ">
            <form name="forminfo" id="forminfo" action="javascript:registrarInformacion()" enctype="multipart/form-data" method="post">
                <header class="panel-heading">
                    <center><span class="h4"><b>Registro Informacion de Facultad</b></span></center>
                </header>
                 <div id="divError" aling="center">                                     
                                    </div>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo Informacion</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="" disabled selected>Elige una opcion</option>  
                                    <%
                                        IControlador f = (IControlador) session.getAttribute("fachada");
                                        System.out.println("dairo no sirve para nada");
                                        ArrayList<TipoInfoDTO> ss = f.mostrarTipoInfo();

                                        for (TipoInfoDTO m : ss) {
                                            System.out.println("ol: " + m.getIdinfo());
                                    %>
                                    <option value="<%=m.getIdinfo()%>"> <%=m.getDescripcion()%> </option>
                                    <%
                                        }
                                    %>   
                                </select>                                    
                            </div>          
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Nombre</h4></div>
                                <input type="text" class="form-control" id="nom" name="nom" placeholder="nombre ">   
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Descripcion</h4></div>
                                <textarea cols=70 rows=10 type="text" id="desc" name="desc"></textarea>
                            </div>
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Url relacionados</h4></div>
                                <input type="text" class="form-control" id="url" name="url" placeholder="url relacionados">   
                            </div>
                            <div class="file-field input-field col-md-6 ">
                                <div class="headline margin-bottom-30"><h4>Imagen</h4>
                                    <input type="file" name="image" id="image">
                                </div>
                            </div>                            
                        </div>
                    </div>
                </section>
                <div class="col-md-12">
                    <footer class="panel-footer text-right bg-light lter">
                        <input type="submit" class="btn btn-danger btn-s-xs" value="Registrar">
                    </footer>
                </div>
            </form>
                                
            <section class=" panel">
                <br><br>
                <form name="formtipo" id="formtipo" action="procesar/proti.jsp" method="post">
                    <header class="panel-heading">
                        <center><span class="h4"><b>Registrar Nuevo Tipo de Informacion</b></span></center>
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
                                </div
                            </div>
                        </div>
                    </section>
                </form>
            </section>>
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