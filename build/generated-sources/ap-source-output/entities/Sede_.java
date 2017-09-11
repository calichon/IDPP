package entities;

import entities.AsignacionVehiculo;
import entities.CombustibleComision;
import entities.Municipio;
import entities.Persona;
import entities.Puesto;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-11T16:47:15")
@StaticMetamodel(Sede.class)
public class Sede_ { 

    public static volatile SingularAttribute<Sede, String> nombreSede;
    public static volatile ListAttribute<Sede, CombustibleComision> combustibleComisionList;
    public static volatile SingularAttribute<Sede, Integer> codTipoSede;
    public static volatile SingularAttribute<Sede, String> direccion;
    public static volatile ListAttribute<Sede, AsignacionVehiculo> asignacionVehiculoList;
    public static volatile SingularAttribute<Sede, Integer> codOrganigrama;
    public static volatile SingularAttribute<Sede, Integer> codSede;
    public static volatile SingularAttribute<Sede, Persona> codCoordindor;
    public static volatile SingularAttribute<Sede, String> zona;
    public static volatile ListAttribute<Sede, Puesto> puestoList;
    public static volatile SingularAttribute<Sede, String> telefono1;
    public static volatile SingularAttribute<Sede, String> telefono2;
    public static volatile SingularAttribute<Sede, String> codEstatus;
    public static volatile SingularAttribute<Sede, Integer> codRegionSupervision;
    public static volatile SingularAttribute<Sede, String> correoElectronico;
    public static volatile SingularAttribute<Sede, Municipio> codMunicipio;

}