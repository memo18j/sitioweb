<%-- 
    Document   : index
    Created on : 18/04/2017, 07:41:42 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.controller.fachada.Controlador"%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        
        <%--<% response.sendRedirect("formularios/principal/FacultadIngenierias.jsp");%>--%>     
        <%
            IControlador fachada = new Controlador();
            fachada.aniadirVisita();
            session.setAttribute("fachada", fachada);
        %>
        <%  session.setAttribute("estadoSesion", false);    %>
        <%  response.sendRedirect("Views/principal/FacultadIngenierias.jsp");%>
        
    </body>
</html>
