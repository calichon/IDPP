package entities;

import entities.Departamento;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-07T13:59:27")
@StaticMetamodel(Region.class)
public class Region_ { 

    public static volatile SingularAttribute<Region, String> descripcion;
    public static volatile ListAttribute<Region, Departamento> departamentoList;
    public static volatile SingularAttribute<Region, Integer> codRegion;
    public static volatile SingularAttribute<Region, String> codEstatus;

}