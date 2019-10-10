import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.Version;
import spark.ModelAndView;
import spark.Session;

import static spark.Spark.*;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.ArrayList;


public class Rutas {

    public void manejoRutas()
    {
        final Configuration configuration = new Configuration(new Version(2, 3, 0));
        //configuration.setClassForTemplateLoading(this.getClass(), "/");
        try {
            configuration.setDirectoryForTemplateLoading(new File(
                    "C:/ProyectosWeb/Practica2CRUD/src/main/resources/spark/template/freemarker"));
        } catch (IOException e) {
            e.printStackTrace();
        }

        get("/menu/", (request, response) -> {
            int i = 1;
            Template plantillaFormulario = configuration.getTemplate("Listado.ftl");
            StringWriter writer = new StringWriter();
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("estudiante", Main.getMisEstudiantes());
            attributes.put("id", i);
            plantillaFormulario.process(attributes, writer);
            return writer;
        });

        get("/formulario/", (request, response) -> {
            String matricula = request.queryParams("matriculaBusquda");
            Estudiante est = null;
            if(matricula != null)
            {
               est = Main.buscarEstudiante(matricula);
            }
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("estudiante", est);
            Template plantillaFormulario = configuration.getTemplate("formulario.ftl");
            StringWriter writer = new StringWriter();
            plantillaFormulario.process(attributes, writer);
            return writer;
            //return new FreeMarkerEngine().render(new ModelAndView(null, "formulario.ftl"));
        });

        post("/procesarFormulario/", (request, response) -> {
            Template plantillaFormProcess = configuration.getTemplate("formProcess.ftl");
            StringWriter writer = new StringWriter();

            //obteniendo la matricula.

            int matricula = Integer.parseInt(request.queryParams("matricula"));
            String nombre =request.queryParams("nombre");
            String apellido =request.queryParams("apellido");
            String telefono = request.queryParams("telefono");
            String matriStr = request.queryParams("matricula");

            Estudiante estudiante= new Estudiante(matricula, nombre, apellido, telefono);
            estudiante.setMatriStr(matriStr);
            Main.getMisEstudiantes().add(estudiante);
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("estudiante", estudiante);

            //enviando los parametros a la vista.
            //return new FreeMarkerEngine().render(new ModelAndView(attributes, "formProcess.ftl"));
            plantillaFormProcess.process(attributes, writer);
            return writer;
        });

        /*get("/borrar/", (request, response) -> {
           Template plantillaBorrar = configuration.getTemplate("borrar.ftl");
            StringWriter writer = new StringWriter();
            plantillaBorrar.process(null, writer);
            return writer;
        });*/

        get("/borrarEstudiante/:matricula", (request, response) -> {
            //obteniendo la matricula.
            Main.borrarEstudiante(request.params("matricula"));

            response.redirect("/menu/");
            return "";
        });

        post("/modificar/", (request, response) -> {
            //obteniendo la matricula.

            int matricula = Integer.parseInt(request.queryParams("matricula"));
            String nombre =request.queryParams("nombre");
            String apellido =request.queryParams("apellido");
            String telefono = request.queryParams("telefono");
            String matriStr = request.queryParams("matricula");

            Main.modificarEstudiante(matriStr, nombre, apellido, telefono);

            response.redirect("/menu/");
            return "";
        });

    }

}
