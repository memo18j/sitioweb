<%-- 
    Document   : actsemillero
    Created on : 1/06/2017, 07:12:57 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.SemilleroInvestDTO"%>
<%@page import="com.sitioweb.model.DTO.InvestigadorDTO"%>
<%@page import="com.sitioweb.model.DTO.DepartamentoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<%
    String cod = request.getParameter("cod_sem");
    int codigo = Integer.parseInt(cod);
    System.out.println("codigo: " + codigo);
%>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 margin-top-10 margin-bottom-20">
            <div class="row">
                <div class="col-md-8">
                    <ul class="breadcrumb no-padding margin-bottom-10">
                        <li title="Ingresar a Inicio"><a href="../principal/facuInge.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                        <li title="Programa"><a href="" style="font-style: italic; font-size: 14px;">Semilleros de  Investigacion</a></li>
                        <li class="active" title="Información programas"  style="font-style: italic; font-size: 14px;">Informacion Semilleros de Investigacion</li>
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
                        <b>Actualizar Informacion Semilleros de Investigacion</b></h1>
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
                ArrayList<SemilleroInvestDTO> sp = f.mostrarSemilleroInvest2(codigo);

            %>
            <div>
                <form id="formse" action="procesar/actualizarS.jsp" method="post">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <% for (SemilleroInvestDTO s : sp) {%>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Codigo</h4></div>
                            <input type="text" class="form-control" id="cod_semi" name="cod_semi" value="<%=codigo%>" >
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Director Semillero Investigacion</h4></div>
                            <select class="form-control" id="dir_semi" name="dir_semi">
                                <option value="<%=s.getDirectorinvest()%>" disabled selected><%=s.getNombredirector()%></option>           
                                <%

                                    ArrayList<InvestigadorDTO> sc = f.mostrarInvestigador();
                                    for (InvestigadorDTO m : sc) {
                                %>
                                <option value="<%=m.getCodinvestigador()%>"> <%=m.getNombre()%> </option>
                                <%
                                    }
                                %>                           
                            </select>

                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Nombre semillero</h4></div>
                            <input type="text" class="form-control" id="nom_semi" name="nom_semi" value="<%=s.getNombre()%>">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Departamento</h4></div>
                            <select class="form-control" id="tipo" name="tipo">
                                <option value="<%=s.getCoddpto()%>" disabled selected><%=s.getNombredpto()%></option> 
                                <%

                                    ArrayList<DepartamentoDTO> ss = f.mostrarDpto();
                                    for (DepartamentoDTO m : ss) {
                                %>
                                <option value="<%=m.getCoddpto()%>"> <%=m.getNombre()%> </option>
                                <%
                                    }
                                %>   

                            </select>

                        </div>

                        <div>
                            <div class="headline margin-bottom-30"><h4>Correo</h4></div>
                            <input type="email" class="form-control" id="correo" name="correo" value="<%=s.getCorreo()%>">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Lineas de Investigacion</h4></div>
                            <textarea cols=76 rows=10 name="lineas" id="lineas"><%=s.getLineainvest()%></textarea>
                        </div>
                        <%}%>
                        <br>
                        <div>
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-6">
                                <center><button type="submit" class="btn btn-danger btn-block btn-flat">Actualizar</button></center>
                            </div>
                            <div class="col-md-3">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </form>
            </div>
        </div>
        <hr class="devider devider-dotted">
    </div>
</div>
<br></br>

<jsp:include page="../Plantillas/footer.jsp"/>
