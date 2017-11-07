<%-- 
    Document   : registrar
    Created on : 28/09/2017, 04:27:02 PM
    Author     : personal
--%>
<%@page import="com.sitioweb.controller.interfaz.IControlador"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Hashtable"%>
<%@page import="javazoom.upload.MultipartFormDataRequest"%>
<%@page import="javazoom.upload.UploadFile"%>
<%@page import="javazoom.upload.UploadBean"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    System.out.println("entramos");
    String nueva = "";
    String ruta2 = getServletContext().getRealPath("/");
    ruta2 += "/temp/facultad/";
    UploadBean upBean = new UploadBean();
    UploadFile file = null;
    upBean.setFolderstore(ruta2);
    boolean msg = false;
    
    int tipo;
    String nombre = null;
    String descripcion = null;
    String url = null;
    System.out.println("antes");
    IControlador fachada = (IControlador) session.getAttribute("fachada");

    if (!MultipartFormDataRequest.isMultipartFormData(request)) {
        msg = false;
        System.out.println("1f"+ msg);

    } else {
       System.out.println("else");
        MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);

        Hashtable files = mrequest.getFiles();
        nombre = mrequest.getParameter("nom");
        descripcion = mrequest.getParameter("desc");
        tipo = Integer.parseInt(mrequest.getParameter("tipo"));
        url = mrequest.getParameter("url");

        if ((files != null) && (!files.isEmpty())) {

            file = (UploadFile) files.get("image");

            if (file == null) {

                msg = true;
            }
            if (file.getFileName() != null) {
                File filess = new File(ruta2 + "/" + nombre + ".jpg");

                filess.delete();
                file.setFileName(nombre + ".jpg");
                upBean.store(mrequest, "image");
                nueva = "../../temp/facultad/" + nombre + ".jpg";
                System.out.println("llego aca");
                msg = fachada.registrarInformacion(descripcion, nombre, url, nueva, tipo);
                System.out.println(ruta2);
            }

        } else {
            msg = false;
        }

    }
    if (msg) {
%>
<div class="alert alert-success">
    <button class="close" data-dismiss="alert"><span>&times;</span></button>
    <h5 style="color: white;"><b>Registro Exitoso !!!</b></h5>
</div>
<%
} else {

%>
<div class="alert alert-mem">
    <button class="close" data-dismiss="alert"><span>&times;</span></button>
    <h5 style="color: white;"><b>Registro Fallido !!!</b></h5>
</div>

<%      }
%>
