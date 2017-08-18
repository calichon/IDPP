package entities;

import entities.AsignacionVehiculo;
import entities.CombustibleComision;
import entities.Persona;
import entities.Puesto;
import entities.Sede;
import entities.Vehiculo;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-18T12:36:20")
@StaticMetamodel(Puesto.class)
public class Puesto_ { 

    public static volatile SingularAttribute<Puesto, String> descripcion;
    public static volatile SingularAttribute<Puesto, Date> fechaSistema;
    public static volatile SingularAttribute<Puesto, Persona> codPersona;
    public static volatile ListAttribute<Puesto, CombustibleComision> combustibleComisionList;
    public static volatile ListAttribute<Puesto, AsignacionVehiculo> asignacionVehiculoList;
    public static volatile SingularAttribute<Puesto, Integer> codPuesto;
    public static volatile SingularAttribute<Puesto, Integer> codOrganigrama;
    public static volatile SingularAttribute<Puesto, String> noDocFinalizacion;
    public static volatile ListAttribute<Puesto, AsignacionVehiculo> asignacionVehiculoList2;
    public static volatile SingularAttribute<Puesto, Sede> codSede;
    public static volatile SingularAttribute<Puesto, String> noDocCreacion;
    public static volatile ListAttribute<Puesto, AsignacionVehiculo> asignacionVehiculoList1;
    public static volatile ListAttribute<Puesto, CombustibleComision> combustibleComisionList1;
    public static volatile ListAttribute<Puesto, Puesto> puestoList;
    public static volatile SingularAttribute<Puesto, Integer> codTipoPuesto;
    public static volatile SingularAttribute<Puesto, String> codEstatus;
    public static volatile SingularAttribute<Puesto, String> descripcionFemenino;
    public static volatile ListAttribute<Puesto, Vehiculo> vehiculoList;
    public static volatile SingularAttribute<Puesto, Puesto> codPuestoReemplazo;

}