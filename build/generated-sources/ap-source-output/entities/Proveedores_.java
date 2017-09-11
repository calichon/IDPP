package entities;

import entities.MantenimientoReparacion;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-11T16:47:15")
@StaticMetamodel(Proveedores.class)
public class Proveedores_ { 

    public static volatile SingularAttribute<Proveedores, String> nombreContacto;
    public static volatile SingularAttribute<Proveedores, Integer> codProveedor;
    public static volatile CollectionAttribute<Proveedores, MantenimientoReparacion> mantenimientoReparacionCollection;
    public static volatile SingularAttribute<Proveedores, String> nit;
    public static volatile SingularAttribute<Proveedores, String> direccion;
    public static volatile SingularAttribute<Proveedores, String> telefono;
    public static volatile SingularAttribute<Proveedores, Boolean> activo;

}