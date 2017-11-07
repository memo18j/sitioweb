<%-- 
    Document   : registrarmision
    Created on : 3/05/2017, 08:49:33 AM
    Author     : HP
--%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cod = request.getParameter("cod_fac");
    int codigo = Integer.parseInt(cod);
    String nombre = request.getParameter("nom_fac");
    String mision = request.getParameter("mis");
    String vision = request.getParameter("vis");
    String objetivo = request.getParameter("obj");
    String historia = request.getParameter("hist");
    String estru = request.getParameter("estructura");
    int estructura = Integer.parseInt(estru);
    String conce = request.getParameter("concejo");
    int concejo= Integer.parseInt(conce);
    
    System.out.println("-" + mision +"\n"+ vision + "\n"+ objetivo);
    
    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.registrarFacultad(codigo, nombre, mision, vision, objetivo, estructura, concejo, historia);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../regfacultad.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>
