package entities;

import entities.ConcursoMantenimientos;
import entities.DetalleMantRep;
import entities.Proveedores;
import entities.Sede;
import entities.TipoMantenimientoReparacion;
import entities.Vehiculo;
import java.math.BigInteger;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-06T16:56:14")
@StaticMetamodel(MantenimientoReparacion.class)
public class MantenimientoReparacion_ { 

    public static volatile SingularAttribute<MantenimientoReparacion, Date> fechaRetornoVehiculo;
    public static volatile SingularAttribute<MantenimientoReparacion, Date> fechaRecepcionVehiculo;
    public static volatile SingularAttribute<MantenimientoReparacion, BigInteger> codEmpleadoDigita;
    public static volatile SingularAttribute<MantenimientoReparacion, TipoMantenimientoReparacion> codTipoMantenimiento;
    public static volatile SingularAttribute<MantenimientoReparacion, BigInteger> codEmpleadoRecepcion;
    public static volatile SingularAttribute<MantenimientoReparacion, Vehiculo> codVehiculo;
    public static volatile SingularAttribute<MantenimientoReparacion, BigInteger> diasMantenimiento;
    public static volatile CollectionAttribute<MantenimientoReparacion, DetalleMantRep> detalleMantRepCollection;
    public static volatile SingularAttribute<MantenimientoReparacion, Integer> codMantenimientoReparacion;
    public static volatile SingularAttribute<MantenimientoReparacion, String> serieFactura;
    public static volatile SingularAttribute<MantenimientoReparacion, Short> registroPago;
    public static volatile SingularAttribute<MantenimientoReparacion, BigInteger> codCargoEmpleadoRecepcionFact;
    public static volatile SingularAttribute<MantenimientoReparacion, BigInteger> noFactura;
    public static volatile SingularAttribute<MantenimientoReparacion, Date> fechaEmisionFactura;
    public static volatile SingularAttribute<MantenimientoReparacion, BigInteger> codCargoEmpleadoRecepcion;
    public static volatile SingularAttribute<MantenimientoReparacion, Date> fechaRecepcionFactura;
    public static volatile SingularAttribute<MantenimientoReparacion, String> placa;
    public static volatile SingularAttribute<MantenimientoReparacion, ConcursoMantenimientos> codNoConcurso;
    public static volatile SingularAttribute<MantenimientoReparacion, Date> fechaEnvioVehiculo;
    public static volatile SingularAttribute<MantenimientoReparacion, Proveedores> codProveedor;
    public static volatile SingularAttribute<MantenimientoReparacion, BigInteger> codEmpleadoRecepcionFact;
    public static volatile SingularAttribute<MantenimientoReparacion, Double> totalMantenimientoReparaQ;
    public static volatile SingularAttribute<MantenimientoReparacion, Sede> codSede;
    public static volatile SingularAttribute<MantenimientoReparacion, BigInteger> mantRep;
    public static volatile SingularAttribute<MantenimientoReparacion, Short> utilizoSeguro;
    public static volatile SingularAttribute<MantenimientoReparacion, BigInteger> codControlMantRep;
    public static volatile SingularAttribute<MantenimientoReparacion, Boolean> activo;

}