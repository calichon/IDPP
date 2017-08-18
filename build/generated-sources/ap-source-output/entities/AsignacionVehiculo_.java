package entities;

import entities.AsignacionVehiculoPiloto;
import entities.DependenciaInstitucion;
import entities.Persona;
import entities.Puesto;
import entities.Sede;
import entities.Unidad;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-18T12:36:20")
@StaticMetamodel(AsignacionVehiculo.class)
public class AsignacionVehiculo_ { 

    public static volatile SingularAttribute<AsignacionVehiculo, Integer> noSolicitud;
    public static volatile SingularAttribute<AsignacionVehiculo, Integer> yearSolicitud;
    public static volatile SingularAttribute<AsignacionVehiculo, Puesto> codPuestoAsignadorVehiculo;
    public static volatile SingularAttribute<AsignacionVehiculo, Puesto> codPuestoSolicitante;
    public static volatile SingularAttribute<AsignacionVehiculo, Integer> numPersonasViaje;
    public static volatile SingularAttribute<AsignacionVehiculo, Boolean> utilizaVehiculo;
    public static volatile SingularAttribute<AsignacionVehiculo, Persona> codPersonaAsignadorVehiculo;
    public static volatile SingularAttribute<AsignacionVehiculo, DependenciaInstitucion> codDependenciaInstitucionJuzgado;
    public static volatile SingularAttribute<AsignacionVehiculo, String> causa2;
    public static volatile SingularAttribute<AsignacionVehiculo, String> causa1;
    public static volatile SingularAttribute<AsignacionVehiculo, Boolean> cargaVoluminosa;
    public static volatile SingularAttribute<AsignacionVehiculo, String> causa3;
    public static volatile SingularAttribute<AsignacionVehiculo, Integer> codAsignacionVehiculo;
    public static volatile SingularAttribute<AsignacionVehiculo, Integer> diasAsignacion;
    public static volatile SingularAttribute<AsignacionVehiculo, String> diligencia;
    public static volatile SingularAttribute<AsignacionVehiculo, String> destino;
    public static volatile SingularAttribute<AsignacionVehiculo, Sede> codSedeLugarSalida;
    public static volatile SingularAttribute<AsignacionVehiculo, Puesto> codPuestoCoordinadorJefe;
    public static volatile SingularAttribute<AsignacionVehiculo, Boolean> utilizaPiloto;
    public static volatile SingularAttribute<AsignacionVehiculo, Persona> codPersonaPasajero;
    public static volatile SingularAttribute<AsignacionVehiculo, Date> fechaAsignacion;
    public static volatile SingularAttribute<AsignacionVehiculo, Date> fechaHoraRetornoVehiculo;
    public static volatile ListAttribute<AsignacionVehiculo, AsignacionVehiculoPiloto> asignacionVehiculoPilotoList;
    public static volatile SingularAttribute<AsignacionVehiculo, Date> fechaHoraUsoVehiculo;
    public static volatile SingularAttribute<AsignacionVehiculo, Unidad> codUnidadSolicitante;
    public static volatile SingularAttribute<AsignacionVehiculo, Persona> codPersonaCoordinadorJefe;
    public static volatile SingularAttribute<AsignacionVehiculo, String> observaciones;
    public static volatile SingularAttribute<AsignacionVehiculo, Persona> codPersonaSolicitante;

}