package entities;

import entities.DependenciaInstitucion;
import entities.Municipio;
import entities.Region;
import entities.Vehiculo;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-11T16:47:15")
@StaticMetamodel(Departamento.class)
public class Departamento_ { 

    public static volatile SingularAttribute<Departamento, String> descripcion;
    public static volatile SingularAttribute<Departamento, String> clasificacionGeografica;
    public static volatile SingularAttribute<Departamento, Integer> codDepartamento;
    public static volatile ListAttribute<Departamento, DependenciaInstitucion> dependenciaInstitucionList;
    public static volatile SingularAttribute<Departamento, Region> codRegion;
    public static volatile SingularAttribute<Departamento, String> codEstatus;
    public static volatile ListAttribute<Departamento, Municipio> municipioList;
    public static volatile ListAttribute<Departamento, Vehiculo> vehiculoList;
    public static volatile SingularAttribute<Departamento, Integer> codGeoestadistico;

}