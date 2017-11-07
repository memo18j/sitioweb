<%-- 
    Document   : EliminarDocente
    Created on : 3/10/2017, 04:40:11 PM
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
    boolean exito = fachada.eliminarDocente(id, nombre);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../ConsultarDocentes.jsp");
    } else {
        resp = "Error";
        response.sendRedirect("../administrador.jsp");
    }
%>
<%= resp%>