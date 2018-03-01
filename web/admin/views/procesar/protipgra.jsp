<%-- 
    Document   : protipgra
    Created on : 26/11/2017, 08:20:55 PM
    Author     : Memo
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
String nombre = request.getParameter("nom_tip");
IControlador f = (IControlador)session.getAttribute("fachada");
boolean exito = f.registrarTipoInfoGrad(nombre);
String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../RegistrarInformGraduados.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>

