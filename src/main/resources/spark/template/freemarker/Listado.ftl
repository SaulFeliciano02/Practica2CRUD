<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ListadoEstudiantes</title>
    <link rel="stylesheet" type = "text/css" href="sb-admin-2.css">
</head>
<body>
<div class="topnav">
    <a href="/formulario/">Agregar Estudiante</a>
    <a href="/borrar/">Borrar Estudiante</a>
</div>
<div>
    <form action="/formulario/" method="get" enctype="application/x-www-form-urlencoded">
       Busqueda por matricula: <input name="matriculaBusquda" type="number">
        <button name="Buscar" type="submit" class="buscar">Buscar</button>
    </form>
</div>
<div class="list">
    <table border="1" class="tabla">
        <caption>Listado de estudiantes</caption>
        <tr>
            <th>ID</th>
            <th>Apellido</th>
            <th>Nombre</th>
            <th>Matricula</th>
            <th>Telefono</th>
            <th>Acción</th>
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