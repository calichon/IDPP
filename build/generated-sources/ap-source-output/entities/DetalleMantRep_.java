package entities;

import entities.MantenimientoReparacion;
import entities.TipoMantenimientoReparacion;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-11T16:47:15")
@StaticMetamodel(DetalleMantRep.class)
public class DetalleMantRep_ { 

    public static volatile SingularAttribute<DetalleMantRep, String> descripcion;
    public static volatile SingularAttribute<DetalleMantRep, MantenimientoReparacion> codMantenimientoReparacion;
    public static volatile SingularAttribute<DetalleMantRep, String> tiempoGarantia;
    public static volatile SingularAttribute<DetalleMantRep, TipoMantenimientoReparacion> codTipoMantRep;
    public static volatile SingularAttribute<DetalleMantRep, Double> costoReparacionDetalle;
    public static volatile SingularAttribute<DetalleMantRep, Integer> codDetalleMantRepara;

}