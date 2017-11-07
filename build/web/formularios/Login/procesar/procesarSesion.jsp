<%-- 
    Document   : procesarSesion
    Created on : 3/05/2017, 08:29:21 AM
    Author     : HP
--%>


<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String user = request.getParameter("user");
    String password = request.getParameter("contrasena");
    IControlador fachada = (IControlador) session.getAttribute("fachada");
    boolean exito = fachada.iniciarSesion(user, password);
    String mensaje = "";
System.out.println(" "+user + "-" + password);
    if (exito) {

        mensaje = "1";
        session.setAttribute("user", null);
        session.setAttribute("estadoSesion", true);
        session.setMaxInactiveInterval(1 * 60 * 60);

    } else {

        mensaje = "USUARIO O CONTRASEÑA INVALIDA";
    }

%>
<%= mensaje%>
