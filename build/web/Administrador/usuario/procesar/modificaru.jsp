<%-- 
    Document   : modificaru
    Created on : 13/06/2017, 09:30:37 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cod =request.getParameter("cod");
    int codigo =Integer.parseInt(cod);
    String nombre=request.getParameter("nom");
    String contrasena=request.getParameter("contrasena");
    String correo=request.getParameter("correo"); 
    String tel =request.getParameter("telefono");
    int telefono = Integer.parseInt(tel);
    
    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.actualizarDatosUsuario(codigo, contrasena, nombre, correo, telefono);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../regusuario.jsp");
    } else {
        resp = "Error";
        response.sendRedirect("../actusuario.jsp");
    }
%>
<%=resp%>