<%-- 
    Document   : procesarDocente
    Created on : 3/10/2017, 03:06:16 PM
    Author     : personal
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    System.out.println("entro");

    String nombre = request.getParameter("nom_doc");
    String tip = request.getParameter("depart");
    int depart = Integer.parseInt(tip);
    String tipo = request.getParameter("tipo");
    String correo = request.getParameter("correo");
    String url = request.getParameter("url_web");
    System.out.println("-" + nombre + "-" + tip + "-" +correo + "-" + url);
    
    IControlador f = (IControlador) session.getAttribute("fachada");
    System.out.println("111111");
    boolean exito = f.registrarDocente(nombre, correo, tipo, url, depart);
    System.out.println("exito= " + exito);
    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../RegistrarDocente.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>