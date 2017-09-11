package entities;

import entities.Vehiculo;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-11T16:47:15")
@StaticMetamodel(Color.class)
public class Color_ { 

    public static volatile SingularAttribute<Color, Integer> codColor;
    public static volatile SingularAttribute<Color, Integer> orden;
    public static volatile SingularAttribute<Color, String> nombreColor;
    public static volatile ListAttribute<Color, Vehiculo> vehiculoList;
    public static volatile SingularAttribute<Color, Boolean> activo;

}