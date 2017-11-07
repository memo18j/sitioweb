<%-- 
    Document   : EliminarInfraestructura
    Created on : 10/10/2017, 07:05:45 AM
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
    boolean exito = fachada.eliminarInfraestructura(id, nombre);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../ConsultarInfraestructura.jsp");
    } else {
        resp = "Error";
        response.sendRedirect("../administrador.jsp");
    }
%>
<%= resp%>
