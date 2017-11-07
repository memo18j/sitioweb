<%-- 
    Document   : cerrarsesion
    Created on : 19/09/2017, 09:53:20 PM
    Author     : personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("../../index.jsp"); 
%>