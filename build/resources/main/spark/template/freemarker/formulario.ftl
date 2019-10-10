<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!--JQUERY-->
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script
            src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

    <!-- Los iconos tipo Solid de Fontawesome-->
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    <!-- Nuestro css-->
    <link rel="stylesheet" type="text/css" href="css/micss.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Registrar Estudiante</title>
</head>
<body>
<div class="topnavigation">
    <a class="active" href="/menu/">Listado Estudiantes</a>
</div>

<div class="divtabla">
    <#if estudiante??>
        <form action="/modificar/" method="post"  enctype="application/x-www-form-urlencoded">
            Apellido: <input name="apellido" type="text" id="apellido" value=${estudiante.apellido}/><br/>
            Nombre: <input name="nombre" type="text" id="nombre" value=${estudiante.nombre}/><br/>
            Matricula: <input name="matricula" type="number" id="matricula" value=${estudiante.matricula}/><br/>
            Telefono: <input name="telefono" type="text" id="telefono" value=${estudiante.telefono}/><br/>
            <button name="Modificar" type="submit" class="modificar">Modificar</button>
        </form>
        <#else>
            <form action="/procesarFormulario/" method="post"  enctype="application/x-www-form-urlencoded">
                Apellido: <input name="apellido" type="text" id="apellido"/><br/>
                Nombre: <input name="nombre" type="text" id="nombre"/><br/>
                Matricula: <input name="matricula" type="number" id="matricula"/><br/>
                Telefono: <input name="telefono" type="text" id="telefono"/><br/>
                <button name="Guardar" type="submit" class="guardar">Guardar</button>
            </form>
    </#if>
</div>
</body>
</html>