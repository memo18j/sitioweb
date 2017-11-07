<%-- 
    Document   : registrard
    Created on : 13/06/2017, 08:46:51 AM
    Author     : HP
--%>

<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String rutaServer = getServletContext().getRealPath("/");
    rutaServer += "/temp/documentos/";
    
    String url_imagen = null;
    int codigo = 0;
    String nombre = null;

    FileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    // req es la HttpServletRequest que recibimos del formulario.
    // Los items obtenidos serán cada uno de los campos del formulario,
    // tanto campos normales como ficheros subidos.
    List items = upload.parseRequest(request);
    // Se recorren todos los items, que son de tipo FileItem
    File fichero;
    for (Object item : items) {
        FileItem uploaded = (FileItem) item;
        // Hay que comprobar si es un campo de formulario. Si no lo es, se guarda el fichero
        // subido donde nos interese
        if (!uploaded.isFormField()) {
            // No es campo de formulario, guardamos el fichero en algún sitio
            url_imagen = "../../temp/documentos/" + uploaded.getName();
            fichero = new File(rutaServer, uploaded.getName());
            uploaded.write(fichero);
        } else {
            // es un campo de formulario, podemos obtener clave y valor
            String key = uploaded.getFieldName();
            out.println(key);
            String valor = uploaded.getString();
            out.println(valor);
            if (key.equals("cod_do")) {
                codigo = Integer.parseInt(valor);
            }
            if (key.equals("nom_do")) {
                nombre = valor;
            }

        }
    }
    IControlador fachada = (IControlador) session.getAttribute("fachada");

    boolean exito = fachada.registrarDocumento(codigo, nombre, url_imagen);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../regdocumentos.jsp");
    } else {
        resp = "N";
    }
%>
<%= resp%>
