<%-- 
    Document   : editDocente
    Created on : 8/11/2017, 02:14:09 PM
    Author     : Memo
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    System.out.println("entro");

    String cod= request.getParameter("id");
    int codigo= Integer.parseInt(cod);
    String nombre = request.getParameter("nom_doc");
    String tip = request.getParameter("depart");
    int depart = Integer.parseInt(tip);
    String tipo = request.getParameter("tipo");
    String correo = request.getParameter("correo");
    String url = request.getParameter("url_web");
    
    IControlador f = (IControlador) session.getAttribute("fachada");  
    boolean exito =f.actualizarDocente(codigo, nombre, correo, tipo, url, depart);
    System.out.println("exito= " + exito);
    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../ConsultarDocentes.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>
