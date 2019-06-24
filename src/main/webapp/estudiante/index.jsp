<%-- 
    Document   : index
    Created on : 06-19-2019, 10:13:19 AM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>lista de Estudiantes</title>

        <%--COMPONETE PARA LOS ASSET, DONDE SE AGREAN LOS CSS Y SCRIPT  --%>
        <%@include file="../componentes/assets.jspf" %> 

    </head>
    <body>
        <%--COMPONETE PARA EL NAVBAR, EL MENU DE OPCIONES  --%>
        <%@include file="../componentes/navBar.jsp" %>         

        <style>

            #contenedor{
                margin: 5%;
            }
        </style>

        <div id="contenedor">
            <h1 class="text-center"><span class="fas fa-table"></span> REGISTROS  </h1>

            <a class="btn btn-primary " href="Estudiante?action=nuevo"> <span class="fas fa-plus"></span> Nuevo</a>
            <br><br>
            <table id="tdatos" class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>EDAD</th>
                        <th>DIRECCION</th>
                        <th>GENERO</th>
                        <th>ACCIONES</th>  
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${list}">
                        <tr>
                            <td><c:out value="${item.id}"></c:out></td>
                            <td><c:out value="${item.nombre}"></c:out></td>
                            <td><c:out value="${item.edad}"></c:out></td>
                            <td><c:out value="${item.direccion}"></c:out><td>
                            <td><c:out value="${item.genero}"></c:out></td>
                                <td>
                                    <a  class="btn btn-warning mt-2 " href="Estudiante?action=mostrarModificar&id=${item.id}"> <span class="fas fa-pen "></span></a>
                                    <a class="btn btn-danger mt-2" href="Estudiante?action=mostrarEliminar&id=${item.id}"> <span class="fas fa-trash "></span></a>
                                </td>
                            </tr>
                    </c:forEach>
                </tbody>
            </table>

            <script>
                //SCRIPT PARA EL PLUGIN O COMPONENTE DE LA TABLA QUE MUESTRA LOS REGISROS
                $(document).ready(function () {
                    $('#tdatos').DataTable();
                });
            </script>

    </body>
</html>
