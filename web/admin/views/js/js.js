/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var pos = 1;
var posD = 1;

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

function registrarInformacion() {
    alert("entro a ri");
    var tipo = document.getElementById("tipo");
    var nombre = document.getElementById("nom");
    var descripcion = document.getElementById("desc");
    var url = document.getElementById("url");
    var image = document.getElementById("image");   
    ajax = nuevoAjax();
    parametros = "tipo=" + tipo.value + "&nom=" + nombre.value + "&desc=" + descripcion.value +
            "&url=" + url.value + "&image=" + image.value ;
    url = "procesar/registrar.jsp";
    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    ajax.send(parametros);
    ajax.onreadystatechange = function () {
        if (ajax.readyState == 4) {
            if (ajax.status == 200) {
                var rta = ajax.responseText;
                if (rta.indexOf("S") > 0) {
                    alert("exito");
                  document.getElementById("divError").innerHTML = ajax.responseText;                 
                  document.getElementById("forminfo").reset();
                }
                else
                {
                    alert("error");
                    document.getElementById("divError").innerHTML = ajax.responseText;
                }
            }
            else
            {
                var rta = ajax.responseText;
                document.getElementById("divError").innerHTML = rta;
            }
        }
    }
}

