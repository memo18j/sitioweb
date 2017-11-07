<%-- 
    Document   : FacultadIngenierias
    Created on : 18/04/2017, 07:39:36 PM
    Author     : HP
--%>
<%@page import="com.sitioweb.model.DTO.NovedadDTO"%>
<%@page import="com.sitioweb.model.DTO.NoticiaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<jsp:include page="../Plantillas/header.jsp"/>

<div id="template_alerts">
</div>
<%
    IControlador fachada = (IControlador) session.getAttribute("fachada");
    ArrayList<NoticiaDTO> dp = fachada.mostrarNoticia();

%>
<div class="row no-margin">
    <div class="col-md-12 no-padding">
        <ul class="pgwSlider">
            <% for (NoticiaDTO es : dp) {%>
            <li>
                <a href=""><img
                        src="<%=es.getLinkimg()%>"
                        alt="<%=es.getDescripcion()%>"><span
                        style="font-family: inherit; font-weight: bold;"><%=es.getDescripcion()%></span></a>
            </li>
            <%}%>
        </ul>
    </div>
</div>   

<!-- EVENTOS ---------------------->
<div style="background-color: #e8e8e8; ">
    <div class="container content-prin profile">
        <div class="row margin-top-10">
            <div class="headline-center-v2 headline-center-v2-dark margin-bottom-10">
                <h1 style="font-size: 30px;"><b>Eventos</b></h1>
                <span class="bordered-icon"><i class="fa fa-calendar-o" aria-hidden="true"></i></span>
            </div>
            <div class="col-md-12">
                <div class="row equal-height-columns margin-bottom-10">

                    <div class="container">
                        <div class="owl-carousel-v1 owl-work-v1 margin-bottom-40">
                            <div class="owl-recent-works-v1">
                                <!--                                <div class="item">-->
                                <!--                                    <a href="#">-->
                                <!--                                        <em class="overflow-hidden">-->
                                <!--                                            <img class="img-responsive" src="assets/img/main/img1.jpg" alt="">-->
                                <!--                                        </em>-->
                                <!--                        <span>-->
                                <!--                            <strong>Happy New Year</strong>-->
                                <!--                            <i>Anim pariatur cliche reprehenderit</i>-->
                                <!--                        </span>-->
                                <!--                                    </a>-->
                                <!--                                </div>-->

                                <%

                                    ArrayList<NovedadDTO> dn = fachada.mostrarNovedad();

                                %>
                                <% for (NovedadDTO n : dn) {%>
                                <div class="item">
                                    <a href=""  style="text-align: center;">
                                        <div class="easy-block-v1-badge rgba-red" style="color:#fff; padding: 5px;">
                                            <%=n.getFecha()%></div>
                                        <em class="overflow-hidden">
                                            <img class="img-responsive" src="<%=n.getLinkimg()%>" alt="Imagen de eventos">
                                        </em>
                                        <span>
                                            <strong><%=n.getTitulo()%></strong>
                                            <i>Lugar:<%=n.getDescripcion()%></i>
                                        </span>
                                    </a>
                                </div>
                                <%}%>

                            </div>

                            <div class="headline">
                                <div class="owl-navigation">
                                    <div class="customNavigation">
                                        <a class="owl-btn prev-v2"><i class="fa fa-angle-left"></i></a>
                                        <a class="owl-btn next-v2"><i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div><!--/navigation-->
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </div>

    </div>
</div>
<!---FIN EVENTOS--->

<jsp:include page="../Plantillas/footer.jsp"/>