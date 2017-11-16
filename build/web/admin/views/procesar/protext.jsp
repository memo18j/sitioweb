<%-- 
    Document   : protext
    Created on : 14/11/2017, 04:37:43 PM
    Author     : Memo
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
String nombre = request.getParameter("nom_tip");

IControlador f = (IControlador)session.getAttribute("fachada");
boolean exito = f.registrarTipoExt(nombre);
String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../RegistrarExtension.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>
