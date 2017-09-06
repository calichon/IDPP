package entities;

import entities.AsignacionVehiculo;
import entities.AsignacionVehiculoPiloto;
import entities.CombustibleComision;
import entities.KilometrajeComision;
import entities.Municipio;
import entities.Pais;
import entities.Puesto;
import entities.Sede;
import entities.Vehiculo;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-06T11:11:39")
@StaticMetamodel(Persona.class)
public class Persona_ { 

    public static volatile SingularAttribute<Persona, String> clasificacionGeografica;
    public static volatile SingularAttribute<Persona, String> apellidoCasada;
    public static volatile SingularAttribute<Persona, String> providad;
    public static volatile SingularAttribute<Persona, Integer> codPersona;
    public static volatile SingularAttribute<Persona, Date> fechaNacimiento;
    public static volatile ListAttribute<Persona, Sede> sedeList;
    public static volatile ListAttribute<Persona, CombustibleComision> combustibleComisionList;
    public static volatile SingularAttribute<Persona, String> urlFoto;
    public static volatile ListAttribute<Persona, KilometrajeComision> kilometrajeComisionList;
    public static volatile SingularAttribute<Persona, String> nombre2;
    public static volatile SingularAttribute<Persona, String> nombre1;
    public static volatile ListAttribute<Persona, CombustibleComision> combustibleComisionList2;
    public static volatile ListAttribute<Persona, AsignacionVehiculo> asignacionVehiculoList2;
    public static volatile SingularAttribute<Persona, String> partidaNacimiento;
    public static volatile ListAttribute<Persona, AsignacionVehiculo> asignacionVehiculoList1;
    public static volatile ListAttribute<Persona, CombustibleComision> combustibleComisionList1;
    public static volatile SingularAttribute<Persona, String> domicilio;
    public static volatile SingularAttribute<Persona, Integer> codProfesion;
    public static volatile SingularAttribute<Persona, String> nit;
    public static volatile SingularAttribute<Persona, String> codEstatus;
    public static volatile SingularAttribute<Persona, Municipio> codMunicipio;
    public static volatile ListAttribute<Persona, AsignacionVehiculo> asignacionVehiculoList3;
    public static volatile SingularAttribute<Persona, String> apellido2;
    public static volatile SingularAttribute<Persona, String> apellido1;
    public static volatile SingularAttribute<Persona, String> numeroCedula;
    public static volatile ListAttribute<Persona, AsignacionVehiculo> asignacionVehiculoList;
    public static volatile SingularAttribute<Persona, Puesto> codPuesto;
    public static volatile SingularAttribute<Persona, String> estadoCivil;
    public static volatile SingularAttribute<Persona, Pais> codPais;
    public static volatile SingularAttribute<Persona, String> codRegistro;
    public static volatile SingularAttribute<Persona, Integer> codRelojPersona;
    public static volatile SingularAttribute<Persona, Date> fecha;
    public static volatile ListAttribute<Persona, Puesto> puestoList;
    public static volatile ListAttribute<Persona, AsignacionVehiculoPiloto> asignacionVehiculoPilotoList;
    public static volatile SingularAttribute<Persona, Pais> codPaisPasaporte;
    public static volatile SingularAttribute<Persona, byte[]> foto;
    public static volatile SingularAttribute<Persona, String> pasaporte;
    public static volatile SingularAttribute<Persona, String> cuentaBanco;
    public static volatile SingularAttribute<Persona, String> sexo;
    public static volatile SingularAttribute<Persona, String> lugarNacimiento;
    public static volatile SingularAttribute<Persona, Integer> codTipoPersona;
    public static volatile ListAttribute<Persona, Vehiculo> vehiculoList;

}