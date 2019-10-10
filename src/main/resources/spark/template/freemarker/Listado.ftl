<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>ListadoEstudiantes</title>
    <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">-->
    <link rel="stylesheet" type="text/css" href="../css/micss.css">
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
    <table border="1" id="table100">
        <caption>Listado de estudiantes</caption>
        <thead>
            <tr>
                <th class="column1">ID</th>
                <th class="column2">Apellido</th>
                <th class="column3">Nombre</th>
                <th class="column4">Matricula</th>
                <th class="column5">Telefono</th>
                <th class="column6">Accion</th>
            </tr>
        </thead>
        <tbody>
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
        </tbody>

    </table>
</div>
</body>
</html>