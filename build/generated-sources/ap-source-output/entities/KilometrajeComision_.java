package entities;

import entities.DependenciaInstitucion;
import entities.Persona;
import entities.Vehiculo;
import java.math.BigInteger;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-18T12:36:20")
@StaticMetamodel(KilometrajeComision.class)
public class KilometrajeComision_ { 

    public static volatile SingularAttribute<KilometrajeComision, DependenciaInstitucion> codDependenciaInstitucion;
    public static volatile SingularAttribute<KilometrajeComision, Integer> codKilometrajeComision;
    public static volatile SingularAttribute<KilometrajeComision, BigInteger> kilometrajeInicial;
    public static volatile SingularAttribute<KilometrajeComision, Date> fechaHoraEntrada;
    public static volatile SingularAttribute<KilometrajeComision, BigInteger> kilometrajeFinal;
    public static volatile SingularAttribute<KilometrajeComision, String> causa2;
    public static volatile SingularAttribute<KilometrajeComision, Vehiculo> codVehiculo;
    public static volatile SingularAttribute<KilometrajeComision, String> causa1;
    public static volatile SingularAttribute<KilometrajeComision, String> causa3;
    public static volatile SingularAttribute<KilometrajeComision, Date> fechaHoraSalida;
    public static volatile SingularAttribute<KilometrajeComision, String> diligenciasRealizadas;
    public static volatile SingularAttribute<KilometrajeComision, String> comisionRealizada;
    public static volatile SingularAttribute<KilometrajeComision, String> placa;
    public static volatile SingularAttribute<KilometrajeComision, Persona> codPersonaPiloto;

}