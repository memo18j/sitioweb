<%-- 
    Document   : registrars
    Created on : 5/06/2017, 09:12:54 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cod = request.getParameter("cod_semi");
    int codigo = Integer.parseInt(cod);
    String nombre = request.getParameter("nom_semi");
    String direc = request.getParameter("dir_semi");
    int director = Integer.parseInt(direc);
    String depar = request.getParameter("tipo");
    int departamento = Integer.parseInt(depar);
    String correo = request.getParameter("correo");
    String linea = request.getParameter("lineas");
    System.out.println("-" + codigo + "-"+nombre + "-"+director + "-"+ departamento+ "-"+ correo + "-"+ linea);

    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.registrarSemilleroInvest(codigo, nombre, director, departamento, correo, linea);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../regsemillero.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>


