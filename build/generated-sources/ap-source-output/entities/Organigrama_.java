package entities;

import entities.Puesto;
import entities.Unidad;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-06T11:11:39")
@StaticMetamodel(Organigrama.class)
public class Organigrama_ { 

    public static volatile SingularAttribute<Organigrama, String> codStatus;
    public static volatile CollectionAttribute<Organigrama, Puesto> puestoCollection;
    public static volatile SingularAttribute<Organigrama, Integer> codOrganigramaPadre;
    public static volatile SingularAttribute<Organigrama, Integer> codOrganigrama;
    public static volatile SingularAttribute<Organigrama, Unidad> codUnidad;

}