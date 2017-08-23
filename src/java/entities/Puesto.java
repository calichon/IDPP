/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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
@Table(name = "puesto")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Puesto.findAll", query = "SELECT p FROM Puesto p")
    , @NamedQuery(name = "Puesto.findByCodPuesto", query = "SELECT p FROM Puesto p WHERE p.codPuesto = :codPuesto")
    , @NamedQuery(name = "Puesto.findByCodTipoPuesto", query = "SELECT p FROM Puesto p WHERE p.codTipoPuesto = :codTipoPuesto")
    , @NamedQuery(name = "Puesto.findByCodOrganigrama", query = "SELECT p FROM Puesto p WHERE p.codOrganigrama = :codOrganigrama")
    , @NamedQuery(name = "Puesto.findByDescripcion", query = "SELECT p FROM Puesto p WHERE p.descripcion = :descripcion")
    , @NamedQuery(name = "Puesto.findByCodEstatus", query = "SELECT p FROM Puesto p WHERE p.codEstatus = :codEstatus")
    , @NamedQuery(name = "Puesto.findByNoDocCreacion", query = "SELECT p FROM Puesto p WHERE p.noDocCreacion = :noDocCreacion")
    , @NamedQuery(name = "Puesto.findByNoDocFinalizacion", query = "SELECT p FROM Puesto p WHERE p.noDocFinalizacion = :noDocFinalizacion")
    , @NamedQuery(name = "Puesto.findByDescripcionFemenino", query = "SELECT p FROM Puesto p WHERE p.descripcionFemenino = :descripcionFemenino")
    , @NamedQuery(name = "Puesto.findByFechaSistema", query = "SELECT p FROM Puesto p WHERE p.fechaSistema = :fechaSistema")})
public class Puesto implements Serializable {

    @JoinColumn(name = "cod_organigrama", referencedColumnName = "cod_organigrama")
    @ManyToOne
    private Organigrama codOrganigrama;
    @OneToMany(mappedBy = "codPuesto")
    private Collection<Persona> personaCollection;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_puesto")
    private Integer codPuesto;
    @Column(name = "cod_tipo_puesto")
    private Integer codTipoPuesto;    
    @Size(max = 100)
    @Column(name = "descripcion")
    private String descripcion;
    @Size(max = 2)
    @Column(name = "cod_estatus")
    private String codEstatus;
    @Size(max = 200)
    @Column(name = "no_doc_creacion")
    private String noDocCreacion;
    @Size(max = 200)
    @Column(name = "no_doc_finalizacion")
    private String noDocFinalizacion;
    @Size(max = 100)
    @Column(name = "descripcion_femenino")
    private String descripcionFemenino;
    @Column(name = "fecha_sistema")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaSistema;
    @OneToMany(mappedBy = "codPuestoReceptor")
    private List<CombustibleComision> combustibleComisionList;
    @OneToMany(mappedBy = "codPuestoSolicitante")
    private List<CombustibleComision> combustibleComisionList1;
    @OneToMany(mappedBy = "codPuestoAsignadorVehiculo")
    private List<AsignacionVehiculo> asignacionVehiculoList;
    @OneToMany(mappedBy = "codPuestoCoordinadorJefe")
    private List<AsignacionVehiculo> asignacionVehiculoList1;
    @OneToMany(mappedBy = "codPuestoSolicitante")
    private List<AsignacionVehiculo> asignacionVehiculoList2;
    @OneToMany(mappedBy = "codPueston")
    private List<Vehiculo> vehiculoList;
    @JoinColumn(name = "cod_persona", referencedColumnName = "cod_persona")
    @ManyToOne
    private Persona codPersona;
    @OneToMany(mappedBy = "codPuestoReemplazo")
    private List<Puesto> puestoList;
    @JoinColumn(name = "cod_puesto_reemplazo", referencedColumnName = "cod_puesto")
    @ManyToOne
    private Puesto codPuestoReemplazo;
    @JoinColumn(name = "cod_sede", referencedColumnName = "cod_sede")
    @ManyToOne
    private Sede codSede;

    public Puesto() {
    }

    public Puesto(Integer codPuesto) {
        this.codPuesto = codPuesto;
    }

    public Integer getCodPuesto() {
        return codPuesto;
    }

    public void setCodPuesto(Integer codPuesto) {
        this.codPuesto = codPuesto;
    }

    public Integer getCodTipoPuesto() {
        return codTipoPuesto;
    }

    public void setCodTipoPuesto(Integer codTipoPuesto) {
        this.codTipoPuesto = codTipoPuesto;
    }    

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCodEstatus() {
        return codEstatus;
    }

    public void setCodEstatus(String codEstatus) {
        this.codEstatus = codEstatus;
    }

    public String getNoDocCreacion() {
        return noDocCreacion;
    }

    public void setNoDocCreacion(String noDocCreacion) {
        this.noDocCreacion = noDocCreacion;
    }

    public String getNoDocFinalizacion() {
        return noDocFinalizacion;
    }

    public void setNoDocFinalizacion(String noDocFinalizacion) {
        this.noDocFinalizacion = noDocFinalizacion;
    }

    public String getDescripcionFemenino() {
        return descripcionFemenino;
    }

    public void setDescripcionFemenino(String descripcionFemenino) {
        this.descripcionFemenino = descripcionFemenino;
    }

    public Date getFechaSistema() {
        return fechaSistema;
    }

    public void setFechaSistema(Date fechaSistema) {
        this.fechaSistema = fechaSistema;
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
    public List<Vehiculo> getVehiculoList() {
        return vehiculoList;
    }

    public void setVehiculoList(List<Vehiculo> vehiculoList) {
        this.vehiculoList = vehiculoList;
    }

    public Persona getCodPersona() {
        return codPersona;
    }

    public void setCodPersona(Persona codPersona) {
        this.codPersona = codPersona;
    }

    @XmlTransient
    public List<Puesto> getPuestoList() {
        return puestoList;
    }

    public void setPuestoList(List<Puesto> puestoList) {
        this.puestoList = puestoList;
    }

    public Puesto getCodPuestoReemplazo() {
        return codPuestoReemplazo;
    }

    public void setCodPuestoReemplazo(Puesto codPuestoReemplazo) {
        this.codPuestoReemplazo = codPuestoReemplazo;
    }

    public Sede getCodSede() {
        return codSede;
    }

    public void setCodSede(Sede codSede) {
        this.codSede = codSede;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codPuesto != null ? codPuesto.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Puesto)) {
            return false;
        }
        Puesto other = (Puesto) object;
        if ((this.codPuesto == null && other.codPuesto != null) || (this.codPuesto != null && !this.codPuesto.equals(other.codPuesto))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.Puesto[ codPuesto=" + codPuesto + " ]";
        return descripcion;
    }

    public Organigrama getCodOrganigrama() {
        return codOrganigrama;
    }

    public void setCodOrganigrama(Organigrama codOrganigrama) {
        this.codOrganigrama = codOrganigrama;
    }

    @XmlTransient
    public Collection<Persona> getPersonaCollection() {
        return personaCollection;
    }

    public void setPersonaCollection(Collection<Persona> personaCollection) {
        this.personaCollection = personaCollection;
    }
    
}
