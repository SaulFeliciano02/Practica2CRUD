<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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