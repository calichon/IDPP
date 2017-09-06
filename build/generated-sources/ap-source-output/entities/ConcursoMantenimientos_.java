package entities;

import entities.MantenimientoReparacion;
import java.math.BigInteger;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-06T16:56:14")
@StaticMetamodel(ConcursoMantenimientos.class)
public class ConcursoMantenimientos_ { 

    public static volatile SingularAttribute<ConcursoMantenimientos, String> placaVehiculo;
    public static volatile SingularAttribute<ConcursoMantenimientos, Short> realizado;
    public static volatile CollectionAttribute<ConcursoMantenimientos, MantenimientoReparacion> mantenimientoReparacionCollection;
    public static volatile SingularAttribute<ConcursoMantenimientos, Date> fechaConcurso;
    public static volatile SingularAttribute<ConcursoMantenimientos, String> noConcurso;
    public static volatile SingularAttribute<ConcursoMantenimientos, BigInteger> codCargoEmpleadoAutoriza;
    public static volatile SingularAttribute<ConcursoMantenimientos, Integer> codConcursoMantenimiento;
    public static volatile SingularAttribute<ConcursoMantenimientos, BigInteger> codEmpleadoAutoriza;
    public static volatile SingularAttribute<ConcursoMantenimientos, Short> activo;

}