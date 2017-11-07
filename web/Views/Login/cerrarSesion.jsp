<%-- 
    Document   : cerrarSesion
    Created on : 3/05/2017, 11:29:01 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("iniciarSesion.jsp"); 
%>
