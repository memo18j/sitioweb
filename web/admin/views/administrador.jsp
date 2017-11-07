<%-- 
    Document   : administrador
    Created on : 4/09/2017, 03:59:20 PM
    Author     : personal
--%>

<jsp:include page="../plantilla/header.jsp"/>
<%
    boolean s = (Boolean) session.getAttribute("estadoSesion");
    if (s) {
%>
<div class="panel-body">
<div aling="center">
    <center><h3>ADMINISTRADOR</h3></center>
    <!--<center><img  width="1000" height="400" src="../../Views/imagenes/logofaufps.png"/></center>-->
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