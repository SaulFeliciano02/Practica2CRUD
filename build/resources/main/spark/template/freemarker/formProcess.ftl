<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formulario Procesado</title>
</head>
<body>
<div class="topnavigation">
    <a class="active" href="/menu/">Listado Estudiantes</a>
    <a href="/formulario/">Agregar Estudiante</a>
</div>
<h1>Formulario Procesado</h1>
<table>
    <tbody>
    <tr><td>Matricula</td><td>${estudiante.matriStr}</td></tr>
    <tr><td>Nombre</td><td>${estudiante.nombre}</td></tr>
    <tr><td>Apellido</td><td>${estudiante.apellido}</td></tr>
    <tr><td>Telefono</td><td>${estudiante.telefono}</td></tr>
    </tbody>
</table>
</body>
</html>