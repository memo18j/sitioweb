<%-- 
    Document   : ConsultarGrupos
    Created on : 21/09/2017, 02:17:00 PM
    Author     : personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantilla/header.jsp"/>
<div class="panel-body">
    <div class="row">
        <section class="panel panel-default">

            <header class="panel-heading">
                <center><span class="h4">Consultar Informacion Grupos de Investigacion</span></center>
            </header>
            <br>
            <div class="col-md-12">
                <div id="tablaD">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th data-field="id">Id</th>
                                <th data-field="nombre">Nombre</th>
                                <th data-field="Tipo">Tipo</th>
                                <th data-field="Director">Director</th>
                                <th data-field="Correo">Email</th>
                                <th data-field="Tele">Telefono</th>
                                <th data-field="Edit">Editar</th>
                                <th data-field="Remove">Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                             <th data-field="id"></th>
                             <th data-field="nombre"></th>
                             <th data-field="Tipo"></th>
                             <th data-field="Director"></th>
                             <th data-field="Correo"></th>
                             <th data-field="Tele"></th>
                             <th data-field="edit"><a class="btn btn-danger"style="background-color: #aa1916;" href="modificarPrograma.jsp?id="><i class="fa fa-edit"></i></a></th>
                             <th data-field="remove"><a class="btn btn-danger"style="background-color: #aa1916;" href="modificarPrograma.jsp?id="><i class="fa fa-trash-o"></i></a></th>
                        </tbody>
                    </table>
                </div> 
            </div>  
        </section>
    </div>
</div>
<jsp:include page="../plantilla/footer.jsp"/>