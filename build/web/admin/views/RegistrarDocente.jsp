<%@page import="com.sitioweb.model.DTO.DepartamentoDTO"%>
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
            <div id="cargar">
                
            </div>
            <form name="formDocente" id="formDocente" action="procesar/procesarDocente.jsp" method="post">
                <header class="panel-heading" style="background-color: #aa1916;">
                    <center><span class="h4" style="color:white;">Registro Informacion Docentes</span></center>
                </header>
                <section class="panel panel-default">
                    <div class="col-md-12">
                        <div class="panel-body">
                           
                            <div class="col-md-12">
                                <div class="headline margin-bottom-30"><h4>Nombre Docente</h4></div>
                                <input type="text" class="form-control" id="nom_doc" name="nom_doc" placeholder="nombre departamento">
                            </div>                           
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Tipo</h4></div>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="" disabled selected>Elige una opcion</option>                        
                                    <option value="Tiempo Completo">Tiempo Completo</option>
                                    <option value="Tiempo Completo(Ocacional)">Tiempo Completo(Ocacional)</option>
                                    <option value="Catedra">Catedra</option>                         
                                </select>
                            </div> 
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Departamento</h4></div>
                               <select class="form-control" id="depart" name="depart">
                                <option value="" disabled selected>Elige una opcion</option>           
                                <%
                                    IControlador f = (IControlador) session.getAttribute("fachada");
                                    ArrayList<DepartamentoDTO> ss = f.mostrarDepartamento();
                                    for (DepartamentoDTO m : ss) {
                                %>
                                <option value="<%=m.getIddpto()%>"> <%=m.getNombre()%> </option>
                                <%
                                    }
                                %>   
                            </select>


                            </div>
                             <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>Correo</h4></div>
                                <input type="email" class="form-control" id="correo" name="correo" placeholder="correo docente">
                            </div>                                            
                            <div class="col-md-6">
                                <div class="headline margin-bottom-30"><h4>CVLAG</h4></div>
                                <input type="text" class="form-control" id="url_web" name="url_web" placeholder="Url CVLAG docente">
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
