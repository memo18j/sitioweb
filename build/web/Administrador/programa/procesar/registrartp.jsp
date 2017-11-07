<%-- 
    Document   : registrartp
    Created on : 5/06/2017, 09:20:48 PM
    Author     : HP
--%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String codi = request.getParameter("cod");
    int codigo = Integer.parseInt(codi);
    String nombre = request.getParameter("nom");
    System.out.println("" + codi + "-" + nombre);

    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.registrarTipoPrograma(codigo, nombre);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../regtipoprograma.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>