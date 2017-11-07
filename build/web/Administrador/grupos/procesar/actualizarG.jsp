<%-- 
    Document   : actualizarG
    Created on : 14/06/2017, 04:09:16 PM
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
    boolean exito = f.actualizarDatosGrupoInvest(codigo, nombre, linea, departamento, director, correo, estatus,url_web);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../consultarGru.jsp");
    } else {
        resp = "Error";
        response.sendRedirect("../actgrupos.jsp");
    }
%>
<%=resp%>
%>
