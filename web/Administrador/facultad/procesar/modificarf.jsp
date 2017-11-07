<%-- 
    Document   : modificarf
    Created on : 13/06/2017, 08:28:34 PM
    Author     : HP
--%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cod = request.getParameter("cod_fac");
    int codigo = Integer.parseInt(cod);
    String nombre = request.getParameter("nom_fac");
    String mision = request.getParameter("mision");
    String vision = request.getParameter("vision");
    String objetivo = request.getParameter("objetivo");
    String historia = request.getParameter("historia");
    String estru = request.getParameter("estructura");
    int estructura = Integer.parseInt(estru);
    String conce = request.getParameter("concejo");
    int concejo= Integer.parseInt(conce);
  
    System.out.println("-" + concejo + "-" + estructura);
    
    IControlador f = (IControlador) session.getAttribute("fachada");
    boolean exito = f.actualizarDatosFacultad(codigo, nombre, mision, vision, objetivo, estructura, concejo, historia);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../regfacultad.jsp");
    } else {
        resp = "Error";
        response.sendRedirect("../actfacultad.jsp");
    }
%>
<%=resp%>