<%-- 
    Document   : modificardoc
    Created on : 14/06/2017, 05:39:38 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cod = request.getParameter("cod_doc");
    int codigo = Integer.parseInt(cod);
    String nombre = request.getParameter("nom_doc");
    String correo = request.getParameter("correo");
    String dedicacion = request.getParameter("dedicacion");
    String url_web = request.getParameter("url_web");
    String departamento = request.getParameter("depart");
    System.out.println("---"+ departamento);
    int dpto = Integer.parseInt(departamento);

    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.actualizarDatosDocente(codigo, nombre, correo, dedicacion, url_web, dpto);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../consultarDoc.jsp");
    } else {
        resp = "Error";
        response.sendRedirect("../moddocente.jsp");
    }
%>
<%=resp%>

