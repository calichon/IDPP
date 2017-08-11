package entities;

import entities.Vehiculo;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-11T13:33:09")
@StaticMetamodel(TipoTipo.class)
public class TipoTipo_ { 

    public static volatile SingularAttribute<TipoTipo, String> nombreTipoTipo;
    public static volatile SingularAttribute<TipoTipo, Integer> codTipoTipo;
    public static volatile SingularAttribute<TipoTipo, Integer> orden;
    public static volatile ListAttribute<TipoTipo, Vehiculo> vehiculoList;
    public static volatile SingularAttribute<TipoTipo, Boolean> activo;

}