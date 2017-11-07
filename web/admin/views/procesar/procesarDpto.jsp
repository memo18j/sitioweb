<%-- 
    Document   : procesarDpto
    Created on : 2/10/2017, 02:09:43 PM
    Author     : personal
--%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    System.out.println("entro");

    String nombre = request.getParameter("nom_dep");
    String director = request.getParameter("director");
    String descripcion = request.getParameter("descrip");
    String url = request.getParameter("url_web");
    System.out.println("-" + nombre + "-" + director + "-" +descripcion + "-" + url);
    
    IControlador f = (IControlador) session.getAttribute("fachada");
    System.out.println("111111");
    boolean exito = f.registrarDepartamento(nombre, director, descripcion, url);
    System.out.println("exito= " + exito);
    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../RegistrarDpto.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>