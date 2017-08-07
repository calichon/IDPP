package entities;

import entities.AsignacionVehiculo;
import entities.CombustibleComision;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-07T13:59:27")
@StaticMetamodel(Unidad.class)
public class Unidad_ { 

    public static volatile SingularAttribute<Unidad, String> descripcion;
    public static volatile SingularAttribute<Unidad, Boolean> tieneDependencia;
    public static volatile SingularAttribute<Unidad, String> nomenclatura;
    public static volatile ListAttribute<Unidad, CombustibleComision> combustibleComisionList;
    public static volatile ListAttribute<Unidad, AsignacionVehiculo> asignacionVehiculoList;
    public static volatile SingularAttribute<Unidad, String> codEstatus;
    public static volatile SingularAttribute<Unidad, Integer> codUnidad;

}