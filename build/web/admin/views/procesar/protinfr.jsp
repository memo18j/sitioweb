<%-- 
    Document   : protinfr
    Created on : 16/11/2017, 11:14:23 AM
    Author     : Memo
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
String nombre = request.getParameter("nom_tip");

IControlador f = (IControlador)session.getAttribute("fachada");
boolean exito = f.registrarTipoInfraestructura(nombre);
String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../RegistrarInfraestructura.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>