package entities;

import entities.CombustibleCupon;
import entities.Persona;
import entities.Puesto;
import entities.Sede;
import entities.Unidad;
import entities.Vehiculo;
import java.math.BigInteger;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-07T13:59:27")
@StaticMetamodel(CombustibleComision.class)
public class CombustibleComision_ { 

    public static volatile SingularAttribute<CombustibleComision, Persona> codPersonaReceptor;
    public static volatile SingularAttribute<CombustibleComision, BigInteger> cantidadEstimadaCarga;
    public static volatile SingularAttribute<CombustibleComision, Puesto> codPuestoSolicitante;
    public static volatile ListAttribute<CombustibleComision, CombustibleCupon> combustibleCuponList;
    public static volatile SingularAttribute<CombustibleComision, Puesto> codPuestoReceptor;
    public static volatile SingularAttribute<CombustibleComision, String> importeTotalLetras;
    public static volatile SingularAttribute<CombustibleComision, BigInteger> kilometrajeActual;
    public static volatile SingularAttribute<CombustibleComision, Sede> codSede;
    public static volatile SingularAttribute<CombustibleComision, Vehiculo> codVehiculo;
    public static volatile SingularAttribute<CombustibleComision, String> comisionA;
    public static volatile SingularAttribute<CombustibleComision, Persona> codPersonaEncargadoTransporte;
    public static volatile SingularAttribute<CombustibleComision, Date> fechaEntrega;
    public static volatile SingularAttribute<CombustibleComision, String> observaciones;
    public static volatile SingularAttribute<CombustibleComision, Persona> codPersonaSolicitante;
    public static volatile SingularAttribute<CombustibleComision, Unidad> codUnidad;
    public static volatile SingularAttribute<CombustibleComision, Integer> codCombustibleComision;
    public static volatile SingularAttribute<CombustibleComision, String> placa;

}