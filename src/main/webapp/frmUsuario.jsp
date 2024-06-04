
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.emergentes.modelo.Usuario"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

        <title>productos</title>
    </head>

    
    <body>
        <br><br><br>
        <jsp:include page="META-INF/menu.jsp" >
            <jsp:param name="opcion" value="usuarios" />
        </jsp:include >
        <c:if test="${usuario.id == 0}">
            <h1>Nuevo Resgitro Usuario</h1>        
        </c:if>
        <c:if test="${usuario.id != 0}">
            <h1>Editar Registro de un Usuario</h1>  
        </c:if>
        <br>
        <form action="UsuarioControlador" method="post">
            <div class="container">
                <input type="hidden" name="id" value="${usuario.id}">
            </div>   
            <div class="mb-3">
                <labe >Ingrese un correo electronico</label><br><br>
                    <input type="email" class="form-control" value="${usuario.email}" name="email">

                    </div>
                    <div class="mb-3">
                        <labe >Ingrese su contraseña</label><br><br>
                            <input type="password" class="form-control" value="${usuario.password}" name="password">

                            </div>

                            <button type="submit" >GUARDAR</button>

                            </form>



                    </div>
                    </body>
                    </html>

