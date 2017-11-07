/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function nuevoAjax() {
    var xmlhttp = false;
    try {
        // Creacion del objeto AJAX para navegadores no IE Ejemplo:Mozilla, Safari 
        xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
        try {
            // Creacion del objet AJAX para IE
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (E) {
            if (!xmlhttp && typeof XMLHttpRequest != 'undefined')
                xmlhttp = new XMLHttpRequest();
        }
    }
    return xmlhttp;
}

function registrarLaboratorio() {
    var div = "registroL";
    var nombre = document.getElementById("nom_lab");
    var codigo = document.getElementById("cod_lab");
    var descripcion = document.getElementById("descrip");
    ajax = nuevoAjax();
    parametros = "&nom_lab=" + nombre.value + "&cod_lab=" + codigo.value + "&descrip=" + descripcion.value;
    url = "procesar/reglab.jsp";
    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    ajax.send(parametros);
    ajax.onreadystatechange = function ()
    {
         if (ajax.readyState == 4)
        {
            if (ajax.status == 200)
            {
                var ret = ajax.responseText;
                alert(ret);
                if(ret.indexOf("REGISTRO EXITOSO")>=0){
                    
                    codigo.value = "";
                    nombre.value = "";
                    descripcion.value = "";
                    
                }else{
                    alert("REGISTRO FALLIDO");
                }
            } else
            {

                document.getElementById(div).innerHTML = ajax.responseText;

            }
        } else
        {
            document.getElementById(div).value = "Cargando";
        }
    }
}



