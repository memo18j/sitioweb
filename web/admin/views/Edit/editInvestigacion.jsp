<%-- 
    Document   : editInvestigacion
    Created on : 8/11/2017, 03:46:48 PM
    Author     : Memo
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String cod = request.getParameter("id");
    int codigo = Integer.parseInt(cod);
    String nombre = request.getParameter("nom");
    String tip = request.getParameter("tipo");
    System.out.println("---"+tip);
    int tipo = Integer.parseInt(tip);
    String estatus = request.getParameter("estatus");
    String director = request.getParameter("dir");
    String correo = request.getParameter("correo");
    String linea = request.getParameter("linea");
    String url = request.getParameter("url_web");
    
    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito =f.actualizarInvestigacion(codigo, nombre, director, correo, linea, estatus, url, tipo);
    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../ConsultarInvestigacion.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>

