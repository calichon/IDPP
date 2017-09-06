package entities;

import entities.DetalleMantRep;
import entities.MantenimientoReparacion;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-06T16:56:14")
@StaticMetamodel(TipoMantenimientoReparacion.class)
public class TipoMantenimientoReparacion_ { 

    public static volatile SingularAttribute<TipoMantenimientoReparacion, String> descripcion;
    public static volatile CollectionAttribute<TipoMantenimientoReparacion, DetalleMantRep> detalleMantRepCollection;
    public static volatile SingularAttribute<TipoMantenimientoReparacion, Short> mantRepa;
    public static volatile CollectionAttribute<TipoMantenimientoReparacion, MantenimientoReparacion> mantenimientoReparacionCollection;
    public static volatile SingularAttribute<TipoMantenimientoReparacion, Integer> codTipoMantRep;

}