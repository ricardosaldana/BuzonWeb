<%-- 
    Document   : listarDenuncias
    Created on : 12/05/2023, 12:54:39 PM
    Author     : USER
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Denuncia"%>
<%@page import="implementacion.DenunciasImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
        
    <!-- Image and text -->
    <nav class="navbar navbar-light bg-light">
        <a class="navbar-brand" href="#">         
            <img src="imagenes/logo_canal_mdb_400x400.jpg" width="60" height="60" class="d-inline-block align-top" alt=""/>
            Buzón Anticorrupción
        </a>
    </nav>
        
        
    </head>
    <body>
        <div class="table-responsive">
        <h3>Denuncias</h3>
        <a href="Controlador?accion=registrarDenunciasA">Agregar Nuevo</a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="text-center">Código</th>
                    <th class="text-center">Tipo</th>
                    <th class="text-center">Fecha</th>
                    <th class="text-center">Denunciado</th>
                    <th class="text-center">Acciones</th>
                </tr>
            </thead>
            <%
                DenunciasImpl denuImpl = new DenunciasImpl();
                List<Denuncia> list = denuImpl.listar();
                Iterator<Denuncia> iter = list.iterator();
                Denuncia denu = null;
                while(iter.hasNext()){
                    denu=iter.next();
                
            %>
            <tbody>
                 <tr>
                    <td class="text-center"><%=denu.getCodi_denu()%></td>
                    <td class="text-center"><%=denu.getTipo()%></td>
                    <td class="text-center"><%=denu.getFe_crea()%></td>
                    <td class="text-center"><%=denu.getInfo()%></td>
                    <td lass="text-center">
                        <a href="Controlador?accion=detalleDenuncia&id=<%=denu.getCodi_denu()%>" class="btn btn-warning">Detalle</a>
                        <!--<a class="btn btn-danger">Denegar</a>-->
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>
      </div>
    </body>
</html>
