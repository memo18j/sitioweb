<%-- 
    Document   : modificard
    Created on : 13/06/2017, 04:24:36 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String codigo =request.getParameter("cod_dep");
    String nombre=request.getParameter("nom_dep");
    String descripcion=request.getParameter("descrip");
    String url_web =request.getParameter("url_web");
    
    System.out.println(url_web + "-" + codigo + "-" +nombre + "-"+ descripcion);
    
    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.actualizarDatosDpto(Integer.parseInt(codigo), nombre, descripcion, url_web);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../consultarDep.jsp");
    } else {
        resp = "Error";
        response.sendRedirect("../moddepartamento.jsp");
    }
%>
<%=resp%>
