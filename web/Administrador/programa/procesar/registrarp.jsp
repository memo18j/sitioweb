<%-- 
    Document   : registrarp
    Created on : 5/06/2017, 09:21:02 PM
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
    rutaServer += "/temp/programa/";
    
    String url_imagen=null;
    int codigo=0;
    String nombre=null;
    int tipo=0;
    String director=null;
    String correo=null;
    String ubicacion= null;
    String telefono=null;
    int snies=0;
    String modalidad=null;
    String horario=null;
    String url=null;
    
    
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
            url_imagen = "../../temp/programa/" + uploaded.getName();
            fichero = new File(rutaServer, uploaded.getName());
            uploaded.write(fichero);
    } else {
            // es un campo de formulario, podemos obtener clave y valor
            String key = uploaded.getFieldName();
            out.println(key);
            String valor = uploaded.getString();
            out.println(valor);
            if (key.equals("cod_pro")) codigo = Integer.parseInt(valor);
            if (key.equals("nom_pro")) nombre = valor;
            if (key.equals("tipo")) tipo = Integer.parseInt(valor);
            if (key.equals("dir_pro")) director = valor;
            if (key.equals("correo")) correo = valor;
            if (key.equals("ubic")) ubicacion = valor;
            if (key.equals("tel")) telefono= valor;
            if (key.equals("cod_snies")) snies = Integer.parseInt(valor);
            if (key.equals("mod")) modalidad = valor;
            if (key.equals("horario")) horario = valor;
            if (key.equals("url_web")) {
                if(valor.isEmpty()){
                    url=null;
                }else{
                
                url=valor;
                }
            }
            
        }
    }
     IControlador fachada = (IControlador) session.getAttribute("fachada");

    boolean exito = fachada.registrarPrograma(codigo, nombre, tipo, director, correo, ubicacion, telefono, snies, modalidad, horario, url_imagen, url);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../regprograma.jsp");
    } else {
        resp = "N";
    }
%>
 <%= resp%>

