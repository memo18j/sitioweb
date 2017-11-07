<%-- 
    Document   : registrari
    Created on : 8/06/2017, 09:34:12 AM
    Author     : HP
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cod =request.getParameter("cod_inv");
    int codigo= Integer.parseInt(cod);
    String nombre=request.getParameter("nom_inv");
    String url_web =request.getParameter("url_web");
    String departamento = request.getParameter("depar");
    int dpto = Integer.parseInt(departamento);
    
    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.registrarInvestigador(codigo, nombre, dpto, url_web);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../reginvestigador.jsp");
    } else {
        resp = "Error";
    }
%>
<%=resp%>

