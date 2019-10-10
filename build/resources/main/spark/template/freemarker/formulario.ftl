<!DOCTYPE html>
<html lang="en">
<head>
    <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">-->
    <link rel="stylesheet" type="text/css" href="../css/micss.css">

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
        <form action="/modificar/" method="post"  enctype="application/x-www-form-urlencoded" class="form-style-8">
            Apellido: <input name="apellido" type="text" id="apellido" value=${estudiante.apellido}/><br/><br/>
            Nombre: <input name="nombre" type="text" id="nombre" value=${estudiante.nombre}/><br/><br/>
            Matricula: <input name="matricula" type="number" id="matricula" value=${estudiante.matricula}/><br/><br/>
            Telefono: <input name="telefono" type="text" id="telefono" value=${estudiante.telefono}/><br/><br/>
            <button name="Modificar" type="submit" class="modificar">Modificar</button>
        </form>
        <#else>
            <form action="/procesarFormulario/" method="post"  enctype="application/x-www-form-urlencoded" class="form-style-8">
                Apellido: <input name="apellido" type="text" id="apellido"/><br/><br/>
                Nombre: <input name="nombre" type="text" id="nombre"/><br/><br/>
                Matricula: <input name="matricula" type="number" id="matricula"/><br/><br/>
                Telefono: <input name="telefono" type="text" id="telefono"/><br/><br/>
                <button name="Guardar" type="submit" class="guardar">Guardar</button>
            </form>
    </#if>
</div>
</body>
</html>