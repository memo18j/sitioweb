<%-- 
    Document   : registrard
    Created on : 5/06/2017, 07:32:23 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String codi =request.getParameter("cod_dep");
    int codigo = Integer.parseInt(codi);
    String nombre=request.getParameter("nom_dep");
    String descripcion=request.getParameter("descrip");
    String url_web =request.getParameter("url_web");
    
    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.registrarDpto(codigo, nombre, descripcion, url_web);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../regdepartamento.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>