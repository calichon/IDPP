package entities;

import entities.Departamento;
import entities.DependenciaInstitucion;
import entities.Persona;
import entities.Sede;
import entities.Vehiculo;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-06T16:56:14")
@StaticMetamodel(Municipio.class)
public class Municipio_ { 

    public static volatile SingularAttribute<Municipio, String> descripcion;
    public static volatile SingularAttribute<Municipio, String> clasificacionGeografica;
    public static volatile ListAttribute<Municipio, Sede> sedeList;
    public static volatile ListAttribute<Municipio, Persona> personaList;
    public static volatile ListAttribute<Municipio, DependenciaInstitucion> dependenciaInstitucionList;
    public static volatile SingularAttribute<Municipio, Departamento> codDepartamento;
    public static volatile SingularAttribute<Municipio, String> codEstatus;
    public static volatile ListAttribute<Municipio, Vehiculo> vehiculoList;
    public static volatile SingularAttribute<Municipio, Integer> codMunicipio;
    public static volatile SingularAttribute<Municipio, Integer> codGeoestadistico;

}