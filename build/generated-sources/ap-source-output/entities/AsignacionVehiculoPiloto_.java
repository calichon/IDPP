package entities;

import entities.AsignacionVehiculo;
import entities.Persona;
import entities.Vehiculo;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-06T16:56:14")
@StaticMetamodel(AsignacionVehiculoPiloto.class)
public class AsignacionVehiculoPiloto_ { 

    public static volatile SingularAttribute<AsignacionVehiculoPiloto, Vehiculo> codVehiculo;
    public static volatile SingularAttribute<AsignacionVehiculoPiloto, Date> fechaHoraUsoVehiculo;
    public static volatile SingularAttribute<AsignacionVehiculoPiloto, AsignacionVehiculo> codAsignacionVehiculo;
    public static volatile SingularAttribute<AsignacionVehiculoPiloto, String> estatusAsignacion;
    public static volatile SingularAttribute<AsignacionVehiculoPiloto, Persona> codPersonaPilotoAsignado;
    public static volatile SingularAttribute<AsignacionVehiculoPiloto, Integer> codAsignacionVehiculoPiloto;
    public static volatile SingularAttribute<AsignacionVehiculoPiloto, Date> fechaHoraRetornoVehiculo;
    public static volatile SingularAttribute<AsignacionVehiculoPiloto, Date> fechaHoraAsignacion;

}