/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
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
@Table(name = "combustible_comision")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CombustibleComision.findAll", query = "SELECT c FROM CombustibleComision c")
    , @NamedQuery(name = "CombustibleComision.findByCodCombustibleComision", query = "SELECT c FROM CombustibleComision c WHERE c.codCombustibleComision = :codCombustibleComision")
    , @NamedQuery(name = "CombustibleComision.findByFechaEntrega", query = "SELECT c FROM CombustibleComision c WHERE c.fechaEntrega = :fechaEntrega")
    , @NamedQuery(name = "CombustibleComision.findByPlaca", query = "SELECT c FROM CombustibleComision c WHERE c.placa = :placa")
    , @NamedQuery(name = "CombustibleComision.findByCodVehiculo", query = "SELECT c FROM CombustibleComision c WHERE c.codVehiculo = :vehiculo ORDER BY c.codCombustibleComision desc")
    , @NamedQuery(name = "CombustibleComision.findByKilometrajeActual", query = "SELECT c FROM CombustibleComision c WHERE c.kilometrajeActual = :kilometrajeActual")
    , @NamedQuery(name = "CombustibleComision.findByComisionA", query = "SELECT c FROM CombustibleComision c WHERE c.comisionA = :comisionA")
    , @NamedQuery(name = "CombustibleComision.findByObservaciones", query = "SELECT c FROM CombustibleComision c WHERE c.observaciones = :observaciones")
    , @NamedQuery(name = "CombustibleComision.findByImporteTotalLetras", query = "SELECT c FROM CombustibleComision c WHERE c.importeTotalLetras = :importeTotalLetras")
    , @NamedQuery(name = "CombustibleComision.findByCantidadEstimadaCarga", query = "SELECT c FROM CombustibleComision c WHERE c.cantidadEstimadaCarga = :cantidadEstimadaCarga")})
public class CombustibleComision implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_combustible_comision")
    private Integer codCombustibleComision;
    @Column(name = "fecha_entrega")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaEntrega;
    @Size(max = 15)
    @Column(name = "placa")
    private String placa;
    @Column(name = "kilometraje_actual")
    private BigInteger kilometrajeActual;
    @Size(max = 2147483647)
    @Column(name = "comision_a")
    private String comisionA;
    @Size(max = 2147483647)
    @Column(name = "observaciones")
    private String observaciones;
    @Size(max = 2147483647)
    @Column(name = "importe_total_letras")
    private String importeTotalLetras;
    @Column(name = "cantidad_estimada_carga")
    private BigInteger cantidadEstimadaCarga;
    @JoinColumn(name = "cod_persona_encargado_transporte", referencedColumnName = "cod_persona")
    @ManyToOne
    private Persona codPersonaEncargadoTransporte;
    @JoinColumn(name = "cod_persona_receptor", referencedColumnName = "cod_persona")
    @ManyToOne
    private Persona codPersonaReceptor;
    @JoinColumn(name = "cod_persona_solicitante", referencedColumnName = "cod_persona")
    @ManyToOne
    private Persona codPersonaSolicitante;
    @JoinColumn(name = "cod_puesto_receptor", referencedColumnName = "cod_puesto")
    @ManyToOne
    private Puesto codPuestoReceptor;
    @JoinColumn(name = "cod_puesto_solicitante", referencedColumnName = "cod_puesto")
    @ManyToOne
    private Puesto codPuestoSolicitante;
    @JoinColumn(name = "cod_sede", referencedColumnName = "cod_sede")
    @ManyToOne
    private Sede codSede;
    @JoinColumn(name = "cod_unidad", referencedColumnName = "cod_unidad")
    @ManyToOne
    private Unidad codUnidad;
    @JoinColumn(name = "cod_vehiculo", referencedColumnName = "cod_vehiculo")
    @ManyToOne
    private Vehiculo codVehiculo;
    @OneToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH},mappedBy = "codCombustibleComision",orphanRemoval=true)
    private List<CombustibleCupon> combustibleCuponList;

    public CombustibleComision() {
    }

    public CombustibleComision(Integer codCombustibleComision) {
        this.codCombustibleComision = codCombustibleComision;
    }

    public Integer getCodCombustibleComision() {
        return codCombustibleComision;
    }

    public void setCodCombustibleComision(Integer codCombustibleComision) {
        this.codCombustibleComision = codCombustibleComision;
    }

    public Date getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(Date fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public BigInteger getKilometrajeActual() {
        return kilometrajeActual;
    }

    public void setKilometrajeActual(BigInteger kilometrajeActual) {
        this.kilometrajeActual = kilometrajeActual;
    }

    public String getComisionA() {
        return comisionA;
    }

    public void setComisionA(String comisionA) {
        this.comisionA = comisionA;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public String getImporteTotalLetras() {
        return importeTotalLetras;
    }

    public void setImporteTotalLetras(String importeTotalLetras) {
        this.importeTotalLetras = importeTotalLetras;
    }

    public BigInteger getCantidadEstimadaCarga() {
        return cantidadEstimadaCarga;
    }

    public void setCantidadEstimadaCarga(BigInteger cantidadEstimadaCarga) {
        this.cantidadEstimadaCarga = cantidadEstimadaCarga;
    }

    public Persona getCodPersonaEncargadoTransporte() {
        return codPersonaEncargadoTransporte;
    }

    public void setCodPersonaEncargadoTransporte(Persona codPersonaEncargadoTransporte) {
        this.codPersonaEncargadoTransporte = codPersonaEncargadoTransporte;
    }

    public Persona getCodPersonaReceptor() {
        return codPersonaReceptor;
    }

    public void setCodPersonaReceptor(Persona codPersonaReceptor) {
        this.codPersonaReceptor = codPersonaReceptor;
    }

    public Persona getCodPersonaSolicitante() {
        return codPersonaSolicitante;
    }

    public void setCodPersonaSolicitante(Persona codPersonaSolicitante) {
        this.codPersonaSolicitante = codPersonaSolicitante;
    }

    public Puesto getCodPuestoReceptor() {
        return codPuestoReceptor;
    }

    public void setCodPuestoReceptor(Puesto codPuestoReceptor) {
        this.codPuestoReceptor = codPuestoReceptor;
    }

    public Puesto getCodPuestoSolicitante() {
        return codPuestoSolicitante;
    }

    public void setCodPuestoSolicitante(Puesto codPuestoSolicitante) {
        this.codPuestoSolicitante = codPuestoSolicitante;
    }

    public Sede getCodSede() {
        return codSede;
    }

    public void setCodSede(Sede codSede) {
        this.codSede = codSede;
    }

    public Unidad getCodUnidad() {
        return codUnidad;
    }

    public void setCodUnidad(Unidad codUnidad) {
        this.codUnidad = codUnidad;
    }

    public Vehiculo getCodVehiculo() {
        return codVehiculo;
    }

    public void setCodVehiculo(Vehiculo codVehiculo) {
        this.codVehiculo = codVehiculo;
    }

    @XmlTransient
    public List<CombustibleCupon> getCombustibleCuponList() {
        return combustibleCuponList;
    }

    public void setCombustibleCuponList(List<CombustibleCupon> combustibleCuponList) {
        this.combustibleCuponList = combustibleCuponList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codCombustibleComision != null ? codCombustibleComision.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CombustibleComision)) {
            return false;
        }
        CombustibleComision other = (CombustibleComision) object;
        if ((this.codCombustibleComision == null && other.codCombustibleComision != null) || (this.codCombustibleComision != null && !this.codCombustibleComision.equals(other.codCombustibleComision))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.CombustibleComision[ codCombustibleComision=" + codCombustibleComision + " ]";
    }

}
