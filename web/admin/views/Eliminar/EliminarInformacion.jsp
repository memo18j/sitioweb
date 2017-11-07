<%-- 
    Document   : EliminarInformacion
    Created on : 26/09/2017, 09:13:00 PM
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
    boolean exito = fachada.eliminarInformacion(id, nombre);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../ConsultarInfo.jsp");
    } else {
        resp = "Error";
        response.sendRedirect("../administrador.jsp");
    }
%>
<%= resp%>