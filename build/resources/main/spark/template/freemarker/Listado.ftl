<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>ListadoEstudiantes</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="css/micss.css" rel="stylesheet">
</head>
<body>
<div class="topnav">
    <a href="/formulario/">Agregar Estudiante</a>
</div>
<br>
<div>
    <form action="/formulario/" method="get" enctype="application/x-www-form-urlencoded">
       Busqueda por matricula: <input name="matriculaBusquda" type="number">
        <button name="Buscar" type="submit" class="buscar">Buscar</button>
    </form>
</div>
<br>
<div class="list">
    <table border="1" class="tabla">
        <caption>Listado de estudiantes</caption>
        <tr>
            <th>ID</th>
            <th>Apellido</th>
            <th>Nombre</th>
            <th>Matricula</th>
            <th>Telefono</th>
            <th>Accion</th>
        </tr>
        <#if estudiante?size != 0>
            <#list estudiante as est>
                <tr>
                    <td>${id}</td>
                    <td>${est.apellido}</td>
                    <td>${est.nombre}</td>
                    <td>${est.matriStr}</td>
                    <td>${est.telefono}</td>
                    <td><a href="/borrarEstudiante/${est.matriStr}">Borrar</a></td>
                </tr>
                <#assign id = id + 1>
            </#list>
        </#if>
    </table>
</div>
</body>
</html>