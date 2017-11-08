<%-- 
    Document   : procesarInfraestructura
    Created on : 7/11/2017, 02:45:12 PM
    Author     : Memo
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
    rutaServer += "/temp/infraestructura/";
    
    String url_imagen=null;
    int codigo=0;
    String nombre=null;
    int tipo=0;
    String ubicacion= null;
    String descripcion=null;
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
            if(uploaded.getSize()>0){
            url_imagen = "../../temp/infraestructura/" + uploaded.getName();
            fichero = new File(rutaServer, uploaded.getName());
            uploaded.write(fichero);
            }else{
                url_imagen=null;
            }
    } else {
            // es un campo de formulario, podemos obtener clave y valor
            String key = uploaded.getFieldName();
            out.println(key);
            String valor = uploaded.getString();
            out.println(valor);
     
            if (key.equals("nom")) nombre = valor;
            if (key.equals("tipo")) tipo = Integer.parseInt(valor);
            if (key.equals("ubicacion")) ubicacion = valor;
            if (key.equals("linea")) descripcion= valor;
        }
    }
     IControlador fachada = (IControlador) session.getAttribute("fachada");

    boolean exito = fachada.registrarInfraestructura(nombre, ubicacion, descripcion, tipo);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../RegistrarInfraestructura.jsp");
    } else {
        resp = "N";
    }
%>
 <%= resp%>

