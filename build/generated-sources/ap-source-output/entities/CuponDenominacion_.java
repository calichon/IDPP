package entities;

import entities.CombustibleCupon;
import java.math.BigInteger;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-18T12:36:20")
@StaticMetamodel(CuponDenominacion.class)
public class CuponDenominacion_ { 

    public static volatile SingularAttribute<CuponDenominacion, String> descripcion;
    public static volatile SingularAttribute<CuponDenominacion, BigInteger> denominacion;
    public static volatile ListAttribute<CuponDenominacion, CombustibleCupon> combustibleCuponList;
    public static volatile SingularAttribute<CuponDenominacion, Integer> codCuponDenominacion;

}