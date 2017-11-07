<%-- 
    Document   : pronovedad
    Created on : 26/09/2017, 03:18:27 PM
    Author     : personal
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
    rutaServer += "/temp/Novedad/";
    
    String url_imagen=null;   
    String nombre=null;
    int tipo=0;
    String fecha=null;
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
            url_imagen = "../../temp/Novedad/" + uploaded.getName();
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
            if (key.equals("fecha")) fecha= valor;
            if (key.equals("desc")) {
                if(valor.isEmpty()){
                    descripcion=null;
                }else{
                
                descripcion=valor;
                }
            }     
        }
    }
     IControlador fachada = (IControlador) session.getAttribute("fachada");

    boolean exito = fachada.registrarNovedad(nombre, url_imagen, descripcion, fecha, tipo);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../RegistrarNovedad.jsp");
    } else {
        resp = "N";
    }
%>
 <%= resp%>



