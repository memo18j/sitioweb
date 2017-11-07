<%-- 
    Document   : EliminarInvestigacion
    Created on : 10/10/2017, 07:04:25 AM
    Author     : personal
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String mid = request.getParameter("id");
    int id = Integer.parseInt(mid);
    String nombre = request.getParameter("nombre");   
    IControlador fachada = (IControlador) session.getAttribute("fachada");
    System.out.println("-" + id + "-" + nombre);
    boolean exito = fachada.eliminarInvestigacion(id, nombre);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../ConsultarInvestigacion.jsp");
    } else {
        resp = "Error";
        response.sendRedirect("../administrador.jsp");
    }
%>
<%= resp%>