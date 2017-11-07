<%-- 
    Document   : regprograma
    Created on : 31/05/2017, 07:38:11 PM
    Author     : HP
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../Plantillas/header.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 margin-top-10 margin-bottom-20">
            <div class="row">
                <div class="col-md-8">
                    <ul class="breadcrumb no-padding margin-bottom-10">
                        <li title="Ingresar a Inicio"><a href="../../index.jsp" style="font-style: italic; font-size: 14px;">Inicio</a></li>
                        <li title="Programa"><a href="" style="font-style: italic; font-size: 14px;">Programas</a></li>
                        <li class="active" title="Información programas"  style="font-style: italic; font-size: 14px;">Informacion Programas</li>
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
                        <b>Registrar Informacion de Programas</b></h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
    <div class="container content profile">
        <div class="row">

            <div>
                <form action="procesar/registrarp.jsp" enctype="multipart/form-data" method="post">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="file-field input-field ">
                            <div class="headline margin-bottom-30"><h4>Imagen</h4>
                                <input type="file" name="fichero" id="fichero">
                            </div>
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Codigo Programa</h4></div>
                            <input type="text" class="form-control" id="cod_pro" name="cod_pro" placeholder="codigo Programa">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Nombre Programa</h4></div>
                            <input type="text" class="form-control" id="nom_pro" name="nom_pro" placeholder="nombre Programa">
                        </div>
                        <div>
                        <div class="headline margin-bottom-30"><h4>Tipo Programa</h4></div>
                        <select class="form-control" id="tipo" name="tipo">
                            <option value="" disabled selected>Elige una opcion</option>           
                             <%
                        IControlador f = (IControlador) session.getAttribute("fachada");
                        ArrayList<TipoProgramaDTO> ss = f.mostrarTipoPrograma();
                        for (TipoProgramaDTO m : ss) {
                    %>
                    <option value="<%=m.getCodtipo()%>"> <%=m.getDescripcion()%> </option>
                    <%
                        }
                    %>                         
                        </select>
                      
                        </div>
                        <div >
                            <div class="headline margin-bottom-30"><h4>Director Programa</h4></div>
                            <input type="text" class="form-control" id="dir_pro" name="dir_pro" placeholder="Director Programa">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Correo</h4></div>
                            <input type="email" class="form-control" id="correo" name="correo" placeholder="Correo Institucional">
                        </div>
                        <div >
                            <div class="headline margin-bottom-30"><h4>Ubicacion</h4></div>
                            <input type="text" class="form-control" id="ubic" name="ubic" placeholder="Ubicacion">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Telefonos</h4></div>
                            <input type="text" class="form-control" id="tel" name="tel" placeholder="Telefonos">
                        </div>
                        <div >
                            <div class="headline margin-bottom-30"><h4>Codigo SNIES</h4></div>
                            <input type="text" class="form-control" id="cod_snies" name="cod_snies" placeholder="codigo snies">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Modalidad</h4></div>
                            <input type="text" class="form-control" id="mod" name="mod" placeholder="modalidad">
                        </div>
                        <div>
                            <div class="headline margin-bottom-30"><h4>Horario de Atencion</h4></div>
                            <input type="text" class="form-control" id="horario" name="horario" placeholder="horario de atencion">
                        </div>
                        
                        <div>
                            <div class="headline margin-bottom-30"><h4>Url Sitio Web</h4></div>
                            <input type="text" class="form-control" id="url_web" name="url_web" placeholder="Url sitio web">
                        </div>    
                        <hr>
                        <div>
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-6">
                               <center>
                                    <a>    
                                        <input class="btn btn-danger btn-block btn-flat" type="submit" value="REGISTRAR "/>
                                    </a>
                                </center>
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
