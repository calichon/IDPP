package entities;

import entities.Marca;
import entities.Vehiculo;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-11T13:33:09")
@StaticMetamodel(Linea.class)
public class Linea_ { 

    public static volatile SingularAttribute<Linea, Marca> codMarca;
    public static volatile SingularAttribute<Linea, String> nombreLinea;
    public static volatile SingularAttribute<Linea, Integer> codLinea;
    public static volatile SingularAttribute<Linea, Integer> orden;
    public static volatile ListAttribute<Linea, Vehiculo> vehiculoList;
    public static volatile SingularAttribute<Linea, Boolean> activo;

}