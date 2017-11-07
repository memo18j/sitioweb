<%-- 
    Document   : moddocente
    Created on : 2/06/2017, 02:32:28 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.DepartamentoDTO"%>
<%@page import="com.sitioweb.model.DTO.DocenteDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<%
    String cod = request.getParameter("cod_doc");
    int codigo = Integer.parseInt(cod);
%>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 margin-top-10 margin-bottom-20">
            <div class="row">
                <div class="col-md-8">
                    <ul class="breadcrumb no-padding margin-bottom-10">
                        <li title="Ingresar a Inicio"><a href="../principal/facuInge.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                        <li title="departamento"><a href="" style="font-style: italic; font-size: 14px;">Departamento</a></li>
                        <li class="active" title="Información docentes"  style="font-style: italic; font-size: 14px;">Informacion Docentes</li>
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
                        <b>Actualizar Informacion de Docentes</b></h1>
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
                ArrayList<DocenteDTO> ss = f.mostrarDocente2(codigo);

            %>
            <div>
                <form action="procesar/modificardoc.jsp" method="post">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <%for (DocenteDTO m : ss) {%>
                        <div >
                            <div class="headline margin-bottom-30"><h4>Codigo Docente</h4></div>
                            <input type="text" class="form-control" id="cod_doc" name="cod_doc" value="<%=codigo%>">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Nombre Docente</h4></div>
                            <input type="text" class="form-control" id="nom_doc" name="nom_doc" value="<%=m.getNombre()%>">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Correo</h4></div>
                            <input type="text" class="form-control" id="correo" name="correo" value="<%=m.getCorreo()%>">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Dedicacion</h4></div>
                            <select class="form-control" id="dedicacion" name="dedicacion">
                                <option value="<%=m.getDedicacion()%>" selected><%=m.getDedicacion()%></option>           
                                <option value="Planta">Planta</option>
                                <option value="Catedra">Catedra</option> 
                            </select>

                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Departamento</h4></div>
                            <select class="form-control" id="depart" name="depart">
                                <option value="<%=m.getDpto()%>"  selected><%=m.getNomdpto()%></option>           
                                <%
                                    ArrayList<DepartamentoDTO> s1 = f.mostrarDpto();
                                    for (DepartamentoDTO n : s1) {
                                %>
                                <option value="<%=n.getCoddpto()%>"> <%=n.getNombre()%> </option>
                                <%
                                    }
                                %>   
                            </select>

                        </div>        
                        <div>
                            <div class="headline margin-bottom-30"><h4>CVLAG</h4></div>
                            <input type="text" class="form-control" id="url_web" name="url_web" value="<%=m.getLinkcvlad()%>">
                        </div>    
                        <hr>
                        <div>
                            <div class="col-md-1">
                            </div>
                            <div class="col-md-5">
                                <center><button type="submit" class="btn btn-danger btn-block btn-flat">Actualizar</button></center>
                            </div>
                            <div class="col-md-5">
                                <center><button type="button" class="btn btn-danger btn-block btn-flat">Eliminar</button></center>
                            </div>
                            <div class="col-md-1">
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
