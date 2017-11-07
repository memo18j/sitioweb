<%-- 
    Document   : actusuario
    Created on : 1/06/2017, 07:17:52 AM
    Author     : HP
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page import="com.sitioweb.model.DTO.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<%
     String cod = request.getParameter("cod_us");
     int codigo= Integer.parseInt(cod);
    %>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 margin-top-10 margin-bottom-20">
            <div class="row">
                <div class="col-md-8">
                    <ul class="breadcrumb no-padding margin-bottom-10">
                        <li title="Ingresar a Inicio"><a href="../principal/facuInge.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                        <li class="active" title="Información usuario"  style="font-style: italic; font-size: 14px;">Informacion Usuario</li>
                    </ul> 
                </div>
                <div class="col-md-4">
                    <h4 class="pull-right"> </h4>
                </div>
            </div>
        </div>
        <div class="col-md-12 col-sm-12 col-xs-12" style="border-bottom: 3px solid #aa1916;">
            <!--            <h1 class="pull-left text-parallax capa-image2" style="background-color: #aa1916;color: #fff; margin-top: 0px; margin-bottom: 0px; padding: 6px; padding-left: 15px; padding-right: 15px;">-->
            <div class="row">
                <div class="col-md-10" >
                    <h1 class="pull-left" style="font-size: 36px;">
                        <b>Actualizar Informacion de Usuarios</b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <div class="container content profile">
        <div class="row">
          <%
                IControlador f = (IControlador) session.getAttribute("fachada");
                ArrayList<UsuarioDTO> ss = f.mostrarUsuario();

            %>
            <div>
                <form action="procesar/modificaru.jsp" method="post">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                    <% for(UsuarioDTO u : ss) {%>
                    <div >
                        <div class="headline margin-bottom-30"><h4>Codigo Usuario </h4></div>
                        <input type="text" class="form-control" id="cod" name="cod" value="<%=codigo%>">
                    </div>
                    <div>
                        <div class="headline margin-bottom-30"><h4>Nombre Usuario </h4></div>
                        <input type="text" class="form-control" id="nom" name="nom" value="<%=u.getNombre()%>">
                    </div>
                    
                    <div >
                        <div class="headline margin-bottom-30"><h4>Contraseña </h4></div>
                        <input type="text" class="form-control" id="contrasena" name="contrasena" value="<%=u.getContrasena()%>">
                    </div>
                    <div>
                        <div class="headline margin-bottom-30"><h4>Email </h4></div>
                        <input type="email" class="form-control" id="correo" name="correo" value="<%=u.getCorreo()%>">
                    </div>
                    <div>
                        <div class="headline margin-bottom-30"><h4>Telefono </h4></div>
                        <input type="text" class="form-control" id="telefono" name="telefono" value="<%=u.getTelefono()%>">
                    </div>
                        <hr>
                    <div>
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-4">
                            <center><button type="submit" class="btn btn-danger btn-block btn-flat">Actualizar</button></center>
                        </div>
                        <div class="col-md-4">
                            <center><button type="button" class="btn btn-danger btn-block btn-flat">Eliminar</button></center>
                        </div>
                        <div class="col-md-2">
                        </div>
                    </div>
                    </div>
                    <div class="col-md-3"></div>
                </form>
            </div>
                    <%}%>
        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>

