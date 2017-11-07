<%-- 
    Document   : footer
    Created on : 18/04/2017, 07:50:31 PM
    Author     : HP
--%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<% IControlador fachada = (IControlador) session.getAttribute("fachada");%>
<footer>
     <div class="footer-v1 off-container">
            <div class="footer">
                <div class="container">
                    <div class="row">
                        <!-- About -->
                        <div class="col-md-3 col-sm-4 md-margin-bottom-40">
                            <div class="footer-main">
                                <a href="index.html"><img id="logo-footer" class="img-responsive" src="https://ww2.ufps.edu.co/public/imagenes/template/footer/logoufpsvertical.png" alt="Logo Pie de P�gina UFPS"></a>
                            </div>
                        </div><!--/col-md-3-->
                        <!-- End About -->
                        <!-- Latest -->
                        <div class="col-md-3 col-sm-4 md-margin-bottom-40">
                            <div class="posts">
                                <div class="headline" style="border-bottom: #272727;"><h2>Portales Institucionales</h2></div>
                                <ul class="list-unstyled latest-list">
                                    <li>
                                        <a href="https://divisist2.ufps.edu.co/">Divisist</a>
                                    </li>
                                    <li>
                                        <a href="http://dptosist.ufps.edu.co/piagev1/servlet/piagev">Piagev</a>
                                    </li>
                                    <li>
                                        <a href="http://sqrs.ufps.edu.co:8084/PQRSoftV1a/index2.ufps">PDQRS</a>
                                    </li>
                                    <li>
                                        <a href="http://ugad.ufps.edu.co:8084/datarsoft001/home.ufps">DatarSoft</a>
                                    </li>
                                    <li>
                                        <a href="http://nomina.ufps.edu.co:9191/nominaufps">Sistema de N�mina</a>
                                    </li>
                                    <li>
                                        <a href="http://www.ufps.edu.co/ufps/cread/Presentacion.php">DISERACA</a>
                                    </li>
                                </ul>
                            </div>
                        </div><!--/col-md-3-->
                        <!-- End Latest -->
                        <!-- Link List -->
                        <div class="col-md-3 col-sm-4  md-margin-bottom-40">
                            <div class="headline" style="border-bottom: #272727;"><h2>Enlaces de Inter�s</h2></div>
                            <ul class="list-unstyled latest-list">
                                <li><a href="https://ww2.ufps.edu.co/universidad/planeacion/655" style="text-transform: none;">Plan Anticorrupci�n</a></li>
                                <li><a href="https://ww2.ufps.edu.co/universidad/seleccion" style="text-transform: none;">Proceso de selecci�n</a></li>
                                <li><a href="https://ww2.ufps.edu.co/universidad/contratacion/1122" style="text-transform: none;">Contrataci�n</a></li>
                                <li><a href="https://ww2.ufps.edu.co/informacion/proceso-democratico-2017" style="text-transform: none;">Proceso democr�tico</a></li>
                                <li><a href="https://ww2.ufps.edu.co/vicerrectoria/vicerrectoria-administrativa/527" style="text-transform: none;">Derechos pecuniarios </a></li>
                                <li><a href="https://mail.google.com/a/ufps.edu.co/" style="text-transform: none;" target="_blank">Correo Electr�nico Institucional</a></li>
                                <li><a href="https://ww2.ufps.edu.co/universidad/consultorio-juridico/1156" style="text-transform: none;">Consultorio Jur�dico </a></li>
                            </ul>
                        </div><!--/col-md-3-->
                        <!-- End Link List -->
                        <!-- Address -->
                        <div class="col-md-3 col-sm-4  map-img md-margin-bottom-40">
                            <div class="headline" style="border-bottom: #272727;"><h2>Contactos</h2></div>
                            <address class="md-margin-bottom-40">
                                Avenida Gran Colombia No. 12E-96 Barrio Colsag, <br />
                                San Jos� de C�cuta - Colombia <br />
                                Edificio Fundadores 1er. Piso <br/>
                                Tel�fono (057)(7)  5771988 <br />
                                Correo: <a href="mailto:facuingenieria@ufps.edu.co" class="">facuingenieria@ufps.edu.co</a><br/>
                                N� Visitantes: <span> <%= fachada.mostrarVisitas()%> </span>
                            </address>
                        </div><!--/col-md-3-->
                        <!-- End Address -->
                    </div>
                </div>
            </div><!--/footer-->

            <div class="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <p>
                                2017 &copy; All Rights Reserved.
                                Desarrollado por: <a href="">Jose Guillermo Parada-Dairo Ramirez-Alejandra Ovallos</a>
                            </p>
                        </div>

                        <!-- Social Links -->
                        <div class="col-md-4">  
                            <ul class="list-inline dark-social pull-right space-bottom-0" style="margin-top: 10px;">
                                <li>
                                    <a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Facebook" href="https://www.facebook.com/UFPS-C%C3%BAcuta-553833261409690" target="_blank">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                </li>
                                <li>
                                    <a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Twitter" href="https://twitter.com/UFPSCUCUTA" target="_blank">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Instagram" href="https://www.instagram.com/ufpscucuta/" target="_blank">
                                        <i class="fa fa-instagram"></i>
                                    </a>
                                </li>
                                <li>
                                    <a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Youtube" href="https://www.youtube.com/channel/UCgPz-qqaAk4lbHfr0XH3k2g" target="_blank">
                                        <i class="fa fa-youtube"></i>
                                    </a>
                                </li>
                                <li>
                                    <a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Correo" href="mailto:oficinadeprensa@ufps.edu.co" target="_blank">
                                        <i class="fa fa-envelope-o"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- End Social Links -->
                    </div>
                </div>
            </div><!--/copyright-->
        </div>

        <div class="owl-clients-v1" style="background-color:#EEE; padding: 5px;">
            <div class="item">
                <a href="http://www.mineducacion.gov.co/" target="_blank"><span class="sprite_organismo i-mineducacion hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.contraloriagen.gov.co/" target="_blank"><span class="sprite_organismo i-contraloria hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.procuraduria.gov.co/" target="_blank"><span class="sprite_organismo i-procuraduria hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.gobiernoenlinea.gov.co/" target="_blank"><span class="sprite_organismo i-gobiernoenlinea hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.urnadecristal.gov.co/" target="_blank"><span class="sprite_organismo i-urnadecristal hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.icetex.gov.co/" target="_blank"><span class="sprite_organismo i-icetex hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.icfes.gov.co/" target="_blank"><span class="sprite_organismo i-icfes hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.universia.net.co/" target="_blank"><span class="sprite_organismo i-universia hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.colombiaaprende.edu.co/" target="_blank"><span class="sprite_organismo i-colombiaaprende hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.renata.edu.co/" target="_blank"><span class="sprite_organismo i-renata hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.colciencias.gov.co/" target="_blank"><span class="sprite_organismo i-colciencia hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.cna.gov.co/" target="_blank"><span class="sprite_organismo i-cna hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.mineducacion.gov.co/sistemasdeinformacion/1735/propertyvalue-41698.html" target="_blank"><span class="sprite_organismo i-saces hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.mineducacion.gov.co/sistemasdeinformacion/1735/w3-propertyname-2672.html" target="_blank"><span class="sprite_organismo i-snies hover-shadow"></span></a>
            </div>
            <div class="item">
                <a href="http://www.mineducacion.gov.co/sistemasdeinformacion/1735/w3-propertyname-2895.html" target="_blank"><span class="sprite_organismo i-spadies hover-shadow"></span></a>
            </div>


        </div><!--=== End Footer Version 1 ===-->
        <script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/jquery/jquery.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/jquery/jquery-migrate.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/bootstrap/js/bootstrap.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/js/pgwslider/pgwslider.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/back-to-top.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/smoothScroll.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/owl-carousel/owl-carousel/owl.carousel.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/horizontal-parallax/js/sequence.jquery-min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/layer-slider/layerslider/js/greensock.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/layer-slider/layerslider/js/layerslider.transitions.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/layer-slider/layerslider/js/layerslider.kreaturamedia.jquery.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/js/plugins/custom.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/js/app.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/js/plugins/owl-carousel.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/js/plugins/datepicker.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/js/plugins/validation.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/js/plugins/owl-recent-works.min.js"></script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/wow-animations/js/wow.min.js"></script>
        <!--[if lt IE 9]>
        <script src="assets/plugins/respond.js"></script>
        <script src="assets/plugins/html5shiv.js"></script>
        <script src="assets/plugins/placeholder-IE-fixes.js"></script>
        <![endif]-->




    </body>
</html>
    