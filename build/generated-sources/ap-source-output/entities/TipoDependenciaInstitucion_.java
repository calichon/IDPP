package entities;

import entities.DependenciaInstitucion;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-18T12:36:20")
@StaticMetamodel(TipoDependenciaInstitucion.class)
public class TipoDependenciaInstitucion_ { 

    public static volatile SingularAttribute<TipoDependenciaInstitucion, String> descripcion;
    public static volatile SingularAttribute<TipoDependenciaInstitucion, String> abreviatura;
    public static volatile ListAttribute<TipoDependenciaInstitucion, DependenciaInstitucion> dependenciaInstitucionList;
    public static volatile SingularAttribute<TipoDependenciaInstitucion, String> codEstatus;
    public static volatile SingularAttribute<TipoDependenciaInstitucion, Integer> codTipoDependenciaInstitucion;

}