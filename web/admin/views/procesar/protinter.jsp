<%-- 
    Document   : protinter
    Created on : 14/11/2017, 04:38:49 PM
    Author     : Memo
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
String nombre = request.getParameter("nom_tip");

IControlador f = (IControlador)session.getAttribute("fachada");
boolean exito = f.registrarTipoInter(nombre);
String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../RegistrarInternacionalizacion.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>