<%-- 
    Document   : FacultadIngenierias
    Created on : 18/04/2017, 07:39:36 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.model.DTO.NovedadDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<jsp:include page="../Plantillas/header.jsp"/>
<main>
    <div id="template_alerts">
    </div>
    <%
        IControlador fachada = (IControlador) session.getAttribute("fachada");


    %>
    <div class="row no-margin">
        <div class="col-md-12 no-padding">
            <ul class="pgwSlider">
                <%                ArrayList<NovedadDTO> dp = fachada.mostrarNovedadTipo(1);
                    for (NovedadDTO es : dp) {
                %>
                <li>
                    <a href="../FI/VerNovedad.jsp?id=<%=es.getIdNovedad()%>"><img
                            src="<%=es.getLinkimg()%>"
                            alt="<%=es.getDescripcion()%>"><span
                            style="font-family: inherit; font-weight: bold;"><%=es.getDescripcion()%></span></a>
                </li>
                <% } %>
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

                                        ArrayList<NovedadDTO> dn = fachada.mostrarNovedadTipo(2);
                                        for (NovedadDTO n : dn) {
                                    %>

                                    <div class="item">
                                        <a href="../FI/VerNovedad.jsp?id=<%=n.getIdNovedad()%>"  style="text-align: center;">
                                            <div class="easy-block-v1-badge rgba-red" style="color:black; padding: 5px;">
                                                <%=n.getFecha()%></div>
                                            <em class="overflow-hidden">
                                                <img class="img-responsive" src="<%=n.getLinkimg()%>" alt="Imagen de eventos">
                                            </em>
                                            <span>
                                                <strong><%=n.getTitulo()%></strong>                     
                                            </span>
                                        </a>
                                    </div>
                                    <% } %>

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
    <div style="background-color: #b43432; padding-bottom:10px;">
        <div class="container content-prin profile">
            <div class="row margin-bottom-10 margin-top-10">
                <div class="headline-center-v2 margin-bottom-10">
                    <h1 style="font-size: 30px; color:#fff;"><b>Proximas actividades</b></h1>
                    <span class="bordered-icon"><i class="fa fa-calendar-o" aria-hidden="true"></i></span>
                </div>
                <%

                    ArrayList<NovedadDTO> dm = fachada.mostrarNovedadTipo(3);
                    for (NovedadDTO m : dm) {
                %>    
                <div class="col-sm-3">
                    <div class="service-block-v1 md-margin-bottom-50" style="background: #fff; border-top: 5px solid #f1c40f;">
                        <i class="icon-custom icon-lg rounded-x icon-color-yellow icon-line fa fa-bookmark" style="background: #fff;"></i>
                        <h5 class="title-v3-bg text-uppercase">
                            <b><%=m.getTitulo()%></b></h5>
                            <p>Esta actividad se desarrollara el dia <%=m.getFecha()%> </p>
                    </div>
                    <br>
                </div> 
                <% }%>
            </div><!--/row-->          
        </div>
    </div>
            
</main>
<jsp:include page="../Plantillas/footer.jsp"/>