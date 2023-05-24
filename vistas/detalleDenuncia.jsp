<%-- 
    Document   : detalleDenuncia
    Created on : 15/05/2023, 09:37:07 PM
    Author     : USER
--%>

<%@page import="modelo.Denuncia"%>
<%@page import="implementacion.DenunciasImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle denuncia</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
         <div class="container">
             
             <%
                 DenunciasImpl denuImpl = new DenunciasImpl();
                 int codigo= Integer.parseInt((String)request.getAttribute("id_denu"));
                 System.out.println("Codigo del controler:"+codigo);
                 Denuncia d= (Denuncia) denuImpl.listaPorDenuncia(codigo);
                 System.out.println("Informacion:"+d.getInfo());
             %>
             
             
            <h1>Detalle de la denuncia</h1>
            <br>
            <form action="Controlador">
                Información del denunciado<br>
                <input type="text" name="txtInfo" class="form-control" value="<%= d.getInfo() %>" style="WIDTH: 1000px; HEIGHT: 98px" size=32> <br>                      
                Descripción de la denuncia:<br>
                <input type="text" name="txtDesc" class="form-control" value="<%= d.getDescripcion() %>" style="WIDTH: 1000px; HEIGHT: 98px" size=32> <br>                 
                Comentarios adicionales:<br>
                <input type="text" name="txtComent" class="form-control" value="<%= d.getComentario() %>" style="WIDTH: 1000px; HEIGHT: 98px" size=32> <br>                 
                <type type="hidden" name="txtCodiDenu" value="<%=d.getCodi_denu()%>">
                <input class="btn btn-success" type="submit" name="accion" value="Aceptar">
                <input class="btn btn-danger" type="submit" name="accion" value="Rechazar"><br>
                <br>
                <a href="Controlador?accion=listarDenuncias">Regresar</a>
            </form>
        </div>
    </body>
</html>
