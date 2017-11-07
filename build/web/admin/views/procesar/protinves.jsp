<%-- 
    Document   : protinves
    Created on : 4/10/2017, 06:34:19 AM
    Author     : personal
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
String nombre = request.getParameter("nom_tip");
IControlador f = (IControlador)session.getAttribute("fachada");
boolean exito = f.registrarTipoInvestigacion(nombre);
String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../RegistrarInvestigacion.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>
