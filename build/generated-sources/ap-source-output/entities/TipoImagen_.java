package entities;

import entities.Imagen;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-11T16:47:15")
@StaticMetamodel(TipoImagen.class)
public class TipoImagen_ { 

    public static volatile ListAttribute<TipoImagen, Imagen> imagenList;
    public static volatile SingularAttribute<TipoImagen, Integer> codTipoImagen;
    public static volatile SingularAttribute<TipoImagen, Integer> orden;
    public static volatile SingularAttribute<TipoImagen, String> nombreTipoImagen;
    public static volatile SingularAttribute<TipoImagen, Boolean> activo;

}