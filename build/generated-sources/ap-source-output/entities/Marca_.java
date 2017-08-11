package entities;

import entities.Linea;
import entities.Vehiculo;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-11T13:33:09")
@StaticMetamodel(Marca.class)
public class Marca_ { 

    public static volatile SingularAttribute<Marca, Integer> codMarca;
    public static volatile ListAttribute<Marca, Linea> lineaList;
    public static volatile SingularAttribute<Marca, Integer> orden;
    public static volatile SingularAttribute<Marca, String> nombreMarca;
    public static volatile ListAttribute<Marca, Vehiculo> vehiculoList;
    public static volatile SingularAttribute<Marca, Boolean> activo;

}