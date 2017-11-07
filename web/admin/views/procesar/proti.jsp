<%-- 
    Document   : proti
    Created on : 25/09/2017, 09:54:43 PM
    Author     : personal
--%>
<%@page import="com.sitioweb.controller.interfaz.IControlador" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
String nombre = request.getParameter("nom_tip");

IControlador f = (IControlador)session.getAttribute("fachada");
boolean exito = f.registrarTipoInfo(nombre,1);
String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../RegistrarInfo.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>