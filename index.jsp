<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="img/escudobarranco.jpg">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
<body style="background-image: url(&quot;/images/fondoWeb01.png&quot;);">
<div id="content">            
 <div class="container-fluid">
    <div class="row">
         <div class="col-md-12" style="text-align:center">
             <img src="img/escudobarranco.jpg" height="80" width="80"/>
			</div><br>
		<div id="cuadro" class="col-xs-12 col-xs-offset-0 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">
            <div class="panel-primary">
                <div class="panel-heading" style="text-align: center;"><br>AVISO IMPORTANTE</div>
                <div class="panel-body"><br>
                    <h4 style="text-align: center;margin-top: 0px">Registro de Denuncias por Web</h4>
                    <br>
                    <b>Estimado Usuario:</b><br>
                    <br>
                    La Municipalidad del Distrito de Barranco pone en su conocimiento los siguientes puntos que debe considerar antes de registrar su denuncia:<br>
                    <br>
                    * Ser mayor de edad<br>
                    * Describir los hechos en forma clara y coherente<br>                
                    * Identificar el lugar donde ocurrieron los hechos<br>
                    * Indicar información concreta que permita su verificación<br>
					
                    <br>
                    Recuerde
                    <br>
                    <br>
                    <p style="text-align: justify;">Al registrar su denuncia mantenga la confidencialidad de la misma.<span style="font-style:italic;font-weight:bold; text-decoration: underline">La Municipalidad del Distrito de Barranco garantiza el adecuado trámite de su denuncia conforme al debido proceso y a la normatividad vigente</span>. Asimismo se hace de su conocimiento que el hecho de interponer una denuncia trae consigo obligaciones legales implícitas y que en caso de falsificar información puede ser denunciado penalmente por Delito contra la Administración de Justicia - Falsa Denuncia.</p>
                     <br>
					  <b>Nota:</b> El registro de la denuncia esta habilitado las 24 horas de todo el año, pero la recepcion y atencion sera de L-V de 8:00 AM hasta las 4:45 PM
					<br><br><hr><br><br>

                    <div id="ultimo" style="text-align:center">                
                        <button id="boton"><a id="boton" onclick="return confiramarCancelar();" href="Controlador?accion=anonimo">Anonimo</a></button>     
                        <button id="boton"><a id="boton" class="btn btn-info" href="Controlador?accion=Login">Login</a></button>                        
                    </div>                         

                </div>
            </div>
            <div class="col-md-12" style="text-align:center"></div>		
            </div>
		</div> 

</div>        </div>  

        <script type="text/javascript">
        </script> 

    
</body>
</html>
