import spark.ModelAndView;
import spark.Session;
import static spark.Spark.*;
import spark.template.freemarker.FreeMarkerEngine;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Main {

    private static ArrayList<Estudiante> misEstudiantes = new ArrayList<>();

    public static ArrayList<Estudiante> getMisEstudiantes() {
        return misEstudiantes;
    }

    public static void borrarEstudiante(String mat)
    {
        int i = 0;
        boolean borrado = false;

        while(!borrado || i<getMisEstudiantes().size())
        {
            if(getMisEstudiantes().get(i).getMatriStr().equalsIgnoreCase(mat))
            {
               getMisEstudiantes().remove(i);
               borrado = true;
            }
            i++;
        }
    }

    public static Estudiante buscarEstudiante(String mat)
    {
        int i = 0;
        Estudiante est = null;

        while(i<getMisEstudiantes().size())
        {
            if(getMisEstudiantes().get(i).getMatriStr().equalsIgnoreCase(mat))
            {
                est= getMisEstudiantes().get(i);
                break;
            }
            i++;
        }

        return est;
    }

    public static void modificarEstudiante(String mat, String nombre, String apellido, String telefono)
    {
        Estudiante est = buscarEstudiante(mat);
        est.setNombre(nombre);
        est.setApellido(apellido);
        est.setTelefono(telefono);
    }
    public static void main(String[] args) {
        //port(5040);

        staticFileLocation("public");

        get("/saludo", (request, response) -> {
            return "saludo";
        });

        new Rutas().manejoRutas();
    }
}
