<%-- 
    Document   : registraru
    Created on : 5/06/2017, 09:56:40 PM
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
    String tel =request.getParameter("tel");
    int telefono = Integer.parseInt(tel);
    
    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.registrarUsuario(codigo, contrasena, nombre, correo, telefono);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../regusuario.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>


