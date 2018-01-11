/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Carlos
 */
@Entity
@Table(name = "persona")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Persona.findAll", query = "SELECT p FROM Persona p ORDER BY p.nombre1, p.apellido1, p.apellido2")
    ,@NamedQuery(name = "Persona.findBySection", query = "SELECT DISTINCT(per) FROM Puesto p, Persona per where "
            +"per.codPuesto IN :Puesto ORDER BY per.nombre1, per.apellido1, per.apellido2")
    //, @NamedQuery(name = "Persona.findByDate", query = "Select DISTINCT(p) from Persona p left outer join p.asignacionVehiculoPilotoList avp WHERE (NOT(:fecha_inicio <= avp.fechaHoraRetornoVehiculo AND avp.fechaHoraUsoVehiculo <= :fecha_fin AND avp.estatusAsignacion='A') OR avp.fechaHoraRetornoVehiculo IS NULL) ORDER BY p.codPersona")
    , @NamedQuery(name = "Persona.findByDate", query = "Select DISTINCT(p) \n" +
"from Persona p \n" +
"left outer join p.asignacionVehiculoPilotoList avp \n" +
"WHERE \n" +
"p.codPersona NOT IN (\n" +
"    SELECT p.codPersona\n" +
"    FROM Persona p\n" +
"    left outer join p.asignacionVehiculoPilotoList avp \n" +
"    WHERE \n" +
"    ((:fecha_inicio <= avp.fechaHoraRetornoVehiculo AND avp.fechaHoraUsoVehiculo <= :fecha_fin AND avp.estatusAsignacion='A') \n" +
"    AND avp.fechaHoraRetornoVehiculo IS NOT NULL) \n" +
")"+
"AND p.codPuesto IN :puesto\n" +
"ORDER BY p.nombre1, p.apellido1, p.apellido2")

    //, @NamedQuery(name = "Persona.findByDateAndId", query = "Select DISTINCT(p) from Persona p left outer join p.asignacionVehiculoPilotoList avp WHERE (NOT(:fecha_inicio <= avp.fechaHoraRetornoVehiculo AND avp.fechaHoraUsoVehiculo <= :fecha_fin AND avp.estatusAsignacion='A') OR avp.fechaHoraRetornoVehiculo IS NULL) OR avp.codAsignacionVehiculo = :codAsignacionVehiculo ORDER BY p.codPersona")
    , @NamedQuery(name = "Persona.findByDateAndId", query = "Select DISTINCT(p) \n" +
"from Persona p \n" +
"left outer join p.asignacionVehiculoPilotoList avp \n" +
"WHERE \n" +
"p.codPersona NOT IN (\n" +
"    SELECT p.codPersona\n" +
"    FROM Persona p\n" +
"    left outer join p.asignacionVehiculoPilotoList avp \n" +
"    WHERE \n" +
"    ((:fecha_inicio <= avp.fechaHoraRetornoVehiculo AND avp.fechaHoraUsoVehiculo <= :fecha_fin AND avp.estatusAsignacion='A') \n" +
"    AND avp.fechaHoraRetornoVehiculo IS NOT NULL AND avp.codAsignacionVehiculo != :codAsignacionVehiculo ) \n" +
")\n" +
"AND p.codPuesto IN :puesto\n" +            
"ORDER BY p.nombre1, p.apellido1, p.apellido2")
        //left outer join p.asignacionVehiculoPilotoList avp
        //WHERE NOT(:fecha_inicio <= av.fechaHoraRetornoVehiculo AND av.fechaHoraUsoVehiculo <= :fecha_fin) OR av.fechaHoraRetornoVehiculo IS NULL ORDER BY p.codPersona
    , @NamedQuery(name = "Persona.findByPuesto", query = "SELECT DISTINCT(p) FROM Persona p WHERE p.codPuesto IN :puesto ORDER BY p.nombre1, p.apellido1, p.apellido2")
    , @NamedQuery(name = "Persona.findByUnidad", query = "SELECT DISTINCT(p) FROM Persona p join p.puestoList pl join pl.codOrganigrama o join o.codUnidad u WHERE u = :unidad ORDER BY p.nombre1, p.apellido1, p.apellido2")
    , @NamedQuery(name = "Persona.findByCodPersona", query = "SELECT p FROM Persona p WHERE p.codPersona = :codPersona")
    , @NamedQuery(name = "Persona.findByNombre1", query = "SELECT p FROM Persona p WHERE p.nombre1 = :nombre1")
    , @NamedQuery(name = "Persona.findByNombre2", query = "SELECT p FROM Persona p WHERE p.nombre2 = :nombre2")
    , @NamedQuery(name = "Persona.findByApellido1", query = "SELECT p FROM Persona p WHERE p.apellido1 = :apellido1")
    , @NamedQuery(name = "Persona.findByApellido2", query = "SELECT p FROM Persona p WHERE p.apellido2 = :apellido2")
    , @NamedQuery(name = "Persona.findByApellidoCasada", query = "SELECT p FROM Persona p WHERE p.apellidoCasada = :apellidoCasada")
    , @NamedQuery(name = "Persona.findByNit", query = "SELECT p FROM Persona p WHERE p.nit = :nit")
    , @NamedQuery(name = "Persona.findByEstadoCivil", query = "SELECT p FROM Persona p WHERE p.estadoCivil = :estadoCivil")
    , @NamedQuery(name = "Persona.findByCodEstatus", query = "SELECT p FROM Persona p WHERE p.codEstatus = :codEstatus")
    , @NamedQuery(name = "Persona.findByCodRelojPersona", query = "SELECT p FROM Persona p WHERE p.codRelojPersona = :codRelojPersona")
})
public class Persona implements Serializable {


    @JoinColumn(name = "cod_puesto", referencedColumnName = "cod_puesto")
    @ManyToOne
    private Puesto codPuesto;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_persona")
    private Integer codPersona;
    @Size(max = 50)
    @Column(name = "nombre_1")
    private String nombre1;
    @Size(max = 50)
    @Column(name = "nombre_2")
    private String nombre2;
    @Size(max = 50)
    @Column(name = "apellido_1")
    private String apellido1;
    @Size(max = 50)
    @Column(name = "apellido_2")
    private String apellido2;
    @Size(max = 50)
    @Column(name = "apellido_casada")
    private String apellidoCasada;
    @Size(max = 15)
    @Column(name = "nit")
    private String nit;

    @Size(max = 50)
    @Column(name = "estado_civil")
    private String estadoCivil;
    @Size(max = 2)
    @Column(name = "cod_estatus")
    private String codEstatus;



    @Column(name = "cod_reloj_persona")
    private Integer codRelojPersona;
    @OneToMany(mappedBy = "codPersonaEncargadoTransporte")
    private List<CombustibleComision> combustibleComisionList;
    @OneToMany(mappedBy = "codPersonaReceptor")
    private List<CombustibleComision> combustibleComisionList1;
    @OneToMany(mappedBy = "codPersonaSolicitante")
    private List<CombustibleComision> combustibleComisionList2;



    @OneToMany(mappedBy = "codPersonaAsignadorVehiculo")
    private List<AsignacionVehiculo> asignacionVehiculoList;
    @OneToMany(mappedBy = "codPersonaCoordinadorJefe")
    private List<AsignacionVehiculo> asignacionVehiculoList1;
    @OneToMany(mappedBy = "codPersonaPasajero")
    private List<AsignacionVehiculo> asignacionVehiculoList2;

    @OneToMany(mappedBy = "codPersonaSolicitante")
    private List<AsignacionVehiculo> asignacionVehiculoList3;
    @OneToMany(mappedBy = "codCoordindor")
    private List<Sede> sedeList;
    @OneToMany(mappedBy = "codPersonaAsignacion")
    private List<Vehiculo> vehiculoList;
    @OneToMany(mappedBy = "codPersona")
    private List<Puesto> puestoList;
    @OneToMany(mappedBy = "codPersonaPiloto")
    private List<KilometrajeComision> kilometrajeComisionList;
    @OneToMany(mappedBy = "codPersonaPilotoAsignado")
    private List<AsignacionVehiculoPiloto> asignacionVehiculoPilotoList;

    public Persona() {
    }

    public Persona(Integer codPersona) {
        this.codPersona = codPersona;
    }

    public Integer getCodPersona() {
        return codPersona;
    }

    public void setCodPersona(Integer codPersona) {
        this.codPersona = codPersona;
    }


    public String getNombre1() {
        return nombre1;
    }

    public void setNombre1(String nombre1) {
        this.nombre1 = nombre1;
    }

    public String getNombre2() {
        return nombre2;
    }

    public void setNombre2(String nombre2) {
        this.nombre2 = nombre2;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getApellidoCasada() {
        return apellidoCasada;
    }

    public void setApellidoCasada(String apellidoCasada) {
        this.apellidoCasada = apellidoCasada;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public String getCodEstatus() {
        return codEstatus;
    }

    public void setCodEstatus(String codEstatus) {
        this.codEstatus = codEstatus;
    }

    public Integer getCodRelojPersona() {
        return codRelojPersona;
    }

    public void setCodRelojPersona(Integer codRelojPersona) {
        this.codRelojPersona = codRelojPersona;
    }

    @XmlTransient
    public List<CombustibleComision> getCombustibleComisionList() {
        return combustibleComisionList;
    }

    public void setCombustibleComisionList(List<CombustibleComision> combustibleComisionList) {
        this.combustibleComisionList = combustibleComisionList;
    }

    @XmlTransient
    public List<CombustibleComision> getCombustibleComisionList1() {
        return combustibleComisionList1;
    }

    public void setCombustibleComisionList1(List<CombustibleComision> combustibleComisionList1) {
        this.combustibleComisionList1 = combustibleComisionList1;
    }

    @XmlTransient
    public List<CombustibleComision> getCombustibleComisionList2() {
        return combustibleComisionList2;
    }

    public void setCombustibleComisionList2(List<CombustibleComision> combustibleComisionList2) {
        this.combustibleComisionList2 = combustibleComisionList2;
    }


    @XmlTransient
    public List<AsignacionVehiculo> getAsignacionVehiculoList() {
        return asignacionVehiculoList;
    }

    public void setAsignacionVehiculoList(List<AsignacionVehiculo> asignacionVehiculoList) {
        this.asignacionVehiculoList = asignacionVehiculoList;
    }

    @XmlTransient
    public List<AsignacionVehiculo> getAsignacionVehiculoList1() {
        return asignacionVehiculoList1;
    }

    public void setAsignacionVehiculoList1(List<AsignacionVehiculo> asignacionVehiculoList1) {
        this.asignacionVehiculoList1 = asignacionVehiculoList1;
    }

    @XmlTransient
    public List<AsignacionVehiculo> getAsignacionVehiculoList2() {
        return asignacionVehiculoList2;
    }

    public void setAsignacionVehiculoList2(List<AsignacionVehiculo> asignacionVehiculoList2) {
        this.asignacionVehiculoList2 = asignacionVehiculoList2;
    }

    @XmlTransient
    public List<AsignacionVehiculo> getAsignacionVehiculoList3() {
        return asignacionVehiculoList3;
    }

    public void setAsignacionVehiculoList3(List<AsignacionVehiculo> asignacionVehiculoList3) {
        this.asignacionVehiculoList3 = asignacionVehiculoList3;
    }

    @XmlTransient
    public List<Sede> getSedeList() {
        return sedeList;
    }

    public void setSedeList(List<Sede> sedeList) {
        this.sedeList = sedeList;
    }

    @XmlTransient
    public List<Vehiculo> getVehiculoList() {
        return vehiculoList;
    }

    public void setVehiculoList(List<Vehiculo> vehiculoList) {
        this.vehiculoList = vehiculoList;
    }

    @XmlTransient
    public List<Puesto> getPuestoList() {
        return puestoList;
    }

    public void setPuestoList(List<Puesto> puestoList) {
        this.puestoList = puestoList;
    }

    @XmlTransient
    public List<KilometrajeComision> getKilometrajeComisionList() {
        return kilometrajeComisionList;
    }

    public void setKilometrajeComisionList(List<KilometrajeComision> kilometrajeComisionList) {
        this.kilometrajeComisionList = kilometrajeComisionList;
    }

    @XmlTransient
    public List<AsignacionVehiculoPiloto> getAsignacionVehiculoPilotoList() {
        return asignacionVehiculoPilotoList;
    }

    public void setAsignacionVehiculoPilotoList(List<AsignacionVehiculoPiloto> asignacionVehiculoPilotoList) {
        this.asignacionVehiculoPilotoList = asignacionVehiculoPilotoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codPersona != null ? codPersona.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Persona)) {
            return false;
        }
        Persona other = (Persona) object;
        if ((this.codPersona == null && other.codPersona != null) || (this.codPersona != null && !this.codPersona.equals(other.codPersona))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.Persona[ codPersona=" + codPersona + " ]";
        return  ((nombre1==null)?"":(nombre1)) + " " + ((nombre2==null)?"":(nombre2))+", "+((apellido1==null)?"":(apellido1)) + " " + ((apellido2==null)?"":(apellido2)) + " " + ((apellidoCasada==null)?"":(apellidoCasada));
        //return ((apellido1==null)?"":(apellido1)) + " " + ((apellido2==null)?"":(apellido2)) + " " + ((apellidoCasada==null)?"":(apellidoCasada)) + ", " + ((nombre1==null)?"":(nombre1)) + " " + ((nombre2==null)?"":(nombre2));
    }



    public Puesto getCodPuesto() {
        return codPuesto;
    }

    public void setCodPuesto(Puesto codPuesto) {
        this.codPuesto = codPuesto;
    }

}
