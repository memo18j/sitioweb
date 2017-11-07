<%-- 
    Document   : registrarg
    Created on : 5/06/2017, 09:04:04 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cod = request.getParameter("cod_gru");
    int codigo = Integer.parseInt(cod);
    String nombre = request.getParameter("nom_gru");
    String direc = request.getParameter("dir_gru");
    int director = Integer.parseInt(direc);
    String depar = request.getParameter("tipo");
    int departamento = Integer.parseInt(depar);
    String correo = request.getParameter("correo");
    String estatus = request.getParameter("estatus");
    String linea = request.getParameter("lineas");
    String url_web = request.getParameter("url_web");

    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.registrarGrupoInvest(codigo, nombre, linea, departamento, director, correo, estatus, url_web);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../reggrupos.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>
%>
