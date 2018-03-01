<%-- 
    Document   : EliminarGraduados
    Created on : 26/11/2017, 08:16:28 PM
    Author     : Memo
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String mid = request.getParameter("id");
    int id = Integer.parseInt(mid);
    String nombre = request.getParameter("nombre");   
    IControlador fachada = (IControlador) session.getAttribute("fachada");
    System.out.println("-" + id + "-" + nombre);
    boolean exito = fachada.eliminarGraduado(id, nombre);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../ConsultarGraduados.jsp");
    } else {
        resp = "Error";
        response.sendRedirect("../administrador.jsp");
    }
%>
<%= resp%>