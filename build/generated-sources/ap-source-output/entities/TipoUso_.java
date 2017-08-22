package entities;

import entities.Vehiculo;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-18T12:36:20")
@StaticMetamodel(TipoUso.class)
public class TipoUso_ { 

    public static volatile SingularAttribute<TipoUso, String> nombreTipoUso;
    public static volatile SingularAttribute<TipoUso, Integer> codTipoUso;
    public static volatile SingularAttribute<TipoUso, Integer> orden;
    public static volatile ListAttribute<TipoUso, Vehiculo> vehiculoList;
    public static volatile SingularAttribute<TipoUso, Boolean> activo;

}