package entities;

import entities.CombustibleComision;
import entities.CuponDenominacion;
import java.math.BigInteger;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-06T11:11:39")
@StaticMetamodel(CombustibleCupon.class)
public class CombustibleCupon_ { 

    public static volatile SingularAttribute<CombustibleCupon, BigInteger> numeroCuponInicial;
    public static volatile SingularAttribute<CombustibleCupon, BigInteger> sumaTotal;
    public static volatile SingularAttribute<CombustibleCupon, BigInteger> numeroCuponFinal;
    public static volatile SingularAttribute<CombustibleCupon, CombustibleComision> codCombustibleComision;
    public static volatile SingularAttribute<CombustibleCupon, Integer> cantidadCupones;
    public static volatile SingularAttribute<CombustibleCupon, Integer> codCombustibleCupon;
    public static volatile SingularAttribute<CombustibleCupon, CuponDenominacion> codCuponDenominancion;

}