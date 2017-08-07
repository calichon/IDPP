package entities;

import entities.AsignacionVehiculo;
import entities.Departamento;
import entities.KilometrajeComision;
import entities.Municipio;
import entities.TipoDependenciaInstitucion;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-07T13:59:27")
@StaticMetamodel(DependenciaInstitucion.class)
public class DependenciaInstitucion_ { 

    public static volatile SingularAttribute<DependenciaInstitucion, Integer> codDependenciaInstitucion;
    public static volatile SingularAttribute<DependenciaInstitucion, Date> fechaSistema;
    public static volatile SingularAttribute<DependenciaInstitucion, Integer> codTipoOrgano;
    public static volatile SingularAttribute<DependenciaInstitucion, Integer> codigoCausa;
    public static volatile SingularAttribute<DependenciaInstitucion, Departamento> codDepartamento;
    public static volatile SingularAttribute<DependenciaInstitucion, String> direccion;
    public static volatile ListAttribute<DependenciaInstitucion, AsignacionVehiculo> asignacionVehiculoList;
    public static volatile ListAttribute<DependenciaInstitucion, KilometrajeComision> kilometrajeComisionList;
    public static volatile SingularAttribute<DependenciaInstitucion, String> nombre;
    public static volatile SingularAttribute<DependenciaInstitucion, TipoDependenciaInstitucion> codTipoDependenciaInstitucion;
    public static volatile SingularAttribute<DependenciaInstitucion, Integer> codInstitucion;
    public static volatile SingularAttribute<DependenciaInstitucion, String> telefono1;
    public static volatile SingularAttribute<DependenciaInstitucion, String> codEstatus;
    public static volatile SingularAttribute<DependenciaInstitucion, Municipio> codMunicipio;

}