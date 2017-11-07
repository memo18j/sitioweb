<%-- 
    Document   : procesarInvestigacion
    Created on : 4/10/2017, 06:32:37 AM
    Author     : personal
--%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    System.out.println("entro");

    String nombre = request.getParameter("nom");
    String tip = request.getParameter("tipo");
    System.out.println("---"+tip);
    int tipo = Integer.parseInt(tip);
    String estatus = request.getParameter("estatus");
    String director = request.getParameter("dir");
    String correo = request.getParameter("correo");
    String linea = request.getParameter("linea");
    String url = request.getParameter("url_web");
    System.out.println("-" + nombre + "-" + tip + "-" +correo + "-" + url);
    
    IControlador f = (IControlador) session.getAttribute("fachada");
    System.out.println("111111");
    boolean exito = f.registrarInvestigacion(nombre, director, correo, linea, estatus,url, tipo);
    System.out.println("exito= " + exito);
    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../RegistrarInvestigacion.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>
