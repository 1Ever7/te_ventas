<%
    if (session.getAttribute("login") != "ok") {
            response.sendRedirect("login.jsp");
        }
%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="es">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Usuarios</title>
    </head>


    <body>
        <br><br><br><br>
          <jsp:include page="WEB-INF/menu.jsp" >
                <jsp:param name="opcion" value="usuarios" />
            </jsp:include >
            
        <div class="container">
            <h1>USUARIOS</h1>
          
            <a href="UsuarioControlador?action=add" class="btn btn-primary btn-sn"><i class="fa-solid fa-circle-plus"></i>Nuevo</a>
            <table class="table table-striped" >
                <br>
                <tr id="cabecera">
                    <th>ID</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th colspan="2">OPCIONES</th>
                </tr>
                <c:forEach var="item" items="${usuarios}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.email}</td>
                        <td>**********</td>
                        <td><a  href="UsuarioControlador?action=edit&id=${item.id}"><i class="fa-solid fa-pen-to-square"></i></a></td>
                        <td><a href="UsuarioControlador?action=delete&id=${item.id}" onclick="return(confirm('SEGURO QUE DESEA ELIMINAR ESTE REGISTRO?'))"><i class="fa-solid fa-trash-can"></i></a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
            
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    </body>
</html>
