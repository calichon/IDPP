package entities;

import entities.AsignacionVehiculoPiloto;
import entities.Color;
import entities.CombustibleComision;
import entities.Departamento;
import entities.Imagen;
import entities.KilometrajeComision;
import entities.Linea;
import entities.Marca;
import entities.Municipio;
import entities.Persona;
import entities.Puesto;
import entities.TipoTipo;
import entities.TipoUso;
import java.math.BigInteger;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-11T16:47:15")
@StaticMetamodel(Vehiculo.class)
public class Vehiculo_ { 

    public static volatile SingularAttribute<Vehiculo, Integer> cilindros;
    public static volatile SingularAttribute<Vehiculo, Integer> toneladas;
    public static volatile SingularAttribute<Vehiculo, String> noInventarioRegistro;
    public static volatile ListAttribute<Vehiculo, CombustibleComision> combustibleComisionList;
    public static volatile SingularAttribute<Vehiculo, String> titulo;
    public static volatile ListAttribute<Vehiculo, KilometrajeComision> kilometrajeComisionList;
    public static volatile SingularAttribute<Vehiculo, String> nombre;
    public static volatile SingularAttribute<Vehiculo, BigInteger> poliza;
    public static volatile SingularAttribute<Vehiculo, Puesto> codPueston;
    public static volatile SingularAttribute<Vehiculo, Integer> codVehiculo;
    public static volatile SingularAttribute<Vehiculo, Marca> codMarca;
    public static volatile SingularAttribute<Vehiculo, String> chasis;
    public static volatile SingularAttribute<Vehiculo, String> nit;
    public static volatile SingularAttribute<Vehiculo, TipoTipo> codTipoTipo;
    public static volatile SingularAttribute<Vehiculo, String> vin;
    public static volatile SingularAttribute<Vehiculo, Integer> noAsientos;
    public static volatile SingularAttribute<Vehiculo, Integer> orden;
    public static volatile SingularAttribute<Vehiculo, String> placa;
    public static volatile SingularAttribute<Vehiculo, Municipio> codMunicipio;
    public static volatile SingularAttribute<Vehiculo, Departamento> codDepartamento;
    public static volatile SingularAttribute<Vehiculo, String> direccion;
    public static volatile SingularAttribute<Vehiculo, String> tarjetaCirculacion;
    public static volatile SingularAttribute<Vehiculo, Integer> modelo;
    public static volatile SingularAttribute<Vehiculo, Persona> codPersonaAsignacion;
    public static volatile ListAttribute<Vehiculo, AsignacionVehiculoPiloto> asignacionVehiculoPilotoList;
    public static volatile ListAttribute<Vehiculo, Imagen> imagenList;
    public static volatile SingularAttribute<Vehiculo, Integer> centimetrosCubicos;
    public static volatile SingularAttribute<Vehiculo, Linea> codLinea;
    public static volatile SingularAttribute<Vehiculo, Color> codColor;
    public static volatile SingularAttribute<Vehiculo, TipoUso> codTipoUso;
    public static volatile SingularAttribute<Vehiculo, String> noMotor;
    public static volatile SingularAttribute<Vehiculo, Boolean> activo;

}