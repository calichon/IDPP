package entities;

import entities.TipoImagen;
import entities.Vehiculo;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-11T13:33:09")
@StaticMetamodel(Imagen.class)
public class Imagen_ { 

    public static volatile SingularAttribute<Imagen, Vehiculo> codVehiculo;
    public static volatile SingularAttribute<Imagen, TipoImagen> codTipoImagen;
    public static volatile SingularAttribute<Imagen, String> pathImagen;
    public static volatile SingularAttribute<Imagen, byte[]> imagenb;
    public static volatile SingularAttribute<Imagen, Integer> orden;
    public static volatile SingularAttribute<Imagen, Integer> codImagen;
    public static volatile SingularAttribute<Imagen, String> nombreImagen;
    public static volatile SingularAttribute<Imagen, Boolean> activo;

}