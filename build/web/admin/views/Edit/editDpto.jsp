<%-- 
    Document   : editDpto
    Created on : 7/11/2017, 05:29:37 PM
    Author     : Memo
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    System.out.println("entro");
    
    int codigo=0;
    String cod = request.getParameter("id");
    codigo = Integer.parseInt(cod);
    String nombre = request.getParameter("nom_dep");
    String director = request.getParameter("director");
    String descripcion = request.getParameter("descrip");
    String url = request.getParameter("url_web");
    System.out.println("-" + nombre + "-" + director + "-" +descripcion + "-" + url);
    
    IControlador f = (IControlador) session.getAttribute("fachada");
    System.out.println("111111");
    boolean exito = f.actualizarDepartamento(codigo,nombre, director, descripcion, url);
    System.out.println("exito= " + exito);
    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../ConsultarDpto.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>