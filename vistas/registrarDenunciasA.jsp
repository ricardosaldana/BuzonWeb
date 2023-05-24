<%-- 
    Document   : registrarDenuncias
    Created on : 13/05/2023, 01:27:05 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <h1>Datos de la denuncia</h1>
            <br>
            <form action="Controlador">
                Denunciado: Ingrese el nombre del denunciado<br>
                <textarea class="form-control" type="text" name="txtInfo"></textarea><br>           
                Descripción de la denuncia:<br>
                <textarea class="form-control" type="text" name="txtDesc"></textarea><br>
                Comentarios adicionales:<br>
                <textarea class="form-control" type="text" name="txtComent"></textarea><br>
                <input class="btn btn-success" type="submit" name="accion" value="Agregar"><br>
            </form>
        </div>
    </body>
</html>
