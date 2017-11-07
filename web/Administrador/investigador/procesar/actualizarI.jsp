<%-- 
    Document   : actualizarI
    Created on : 14/06/2017, 01:29:03 PM
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
    boolean exito = f.actualizarDatosInvestigador(codigo, nombre, dpto,url_web);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../consultarInv.jsp");
    } else {
        resp = "Error";
        response.sendRedirect("../actinvestigador.jsp");
    }
%>
<%=resp%>
