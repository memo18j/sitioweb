<%-- 
    Document   : registrarpy
    Created on : 12/06/2017, 09:14:45 PM
    Author     : HP
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cod = request.getParameter("cod_p");
    int codigo = Integer.parseInt(cod);
    String nombre = request.getParameter("nom_p");
    String direc = request.getParameter("dir_p");
    int director = Integer.parseInt(direc);
    String depar = request.getParameter("tipo");
    int grupo = Integer.parseInt(depar);
    String descripcion= request.getParameter("lineas");
    
     System.out.println("-"+ cod + "nombre" + descripcion);

    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.registrarProyecto(codigo, nombre, director, grupo,descripcion);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../regproyecto.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>