<%-- 
    Document   : registrardoc
    Created on : 5/06/2017, 07:59:58 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cod =request.getParameter("cod_doc");
    int codigo= Integer.parseInt(cod);
    String nombre=request.getParameter("nom_doc");
    String correo=request.getParameter("correo");
    String dedicacion=request.getParameter("dedicacion");
    String url_web =request.getParameter("url_web");
    String departamento = request.getParameter("depart");
    int dpto = Integer.parseInt(departamento);
    
IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.registrarDocente(codigo, nombre, correo, dedicacion, url_web, dpto);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../regdocente.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>

