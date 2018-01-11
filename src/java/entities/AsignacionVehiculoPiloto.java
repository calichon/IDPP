/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Carlos
 */
@Entity
@Table(name = "asignacion_vehiculo_piloto")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AsignacionVehiculoPiloto.findAll", query = "SELECT a FROM AsignacionVehiculoPiloto a")
    , @NamedQuery(name = "AsignacionVehiculoPiloto.findByCodAsignacionVehiculoPiloto", query = "SELECT a FROM AsignacionVehiculoPiloto a WHERE a.codAsignacionVehiculoPiloto = :codAsignacionVehiculoPiloto")
    , @NamedQuery(name = "AsignacionVehiculoPiloto.findByCodAsignacionVehiculo", query = "SELECT a FROM AsignacionVehiculoPiloto a WHERE a.codAsignacionVehiculo = :codAsignacionVehiculo")
    , @NamedQuery(name = "AsignacionVehiculoPiloto.findByFechaHoraUsoVehiculo", query = "SELECT a FROM AsignacionVehiculoPiloto a WHERE a.fechaHoraUsoVehiculo = :fechaHoraUsoVehiculo")
    , @NamedQuery(name = "AsignacionVehiculoPiloto.findByFechaHoraRetornoVehiculo", query = "SELECT a FROM AsignacionVehiculoPiloto a WHERE a.fechaHoraRetornoVehiculo = :fechaHoraRetornoVehiculo")
    , @NamedQuery(name = "AsignacionVehiculoPiloto.findByFechaHoraAsignacion", query = "SELECT a FROM AsignacionVehiculoPiloto a WHERE a.fechaHoraAsignacion = :fechaHoraAsignacion")
    , @NamedQuery(name = "AsignacionVehiculoPiloto.findByEstatusAsignacion", query = "SELECT a FROM AsignacionVehiculoPiloto a WHERE a.estatusAsignacion = :estatusAsignacion")})
public class AsignacionVehiculoPiloto implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_asignacion_vehiculo_piloto")
    private Integer codAsignacionVehiculoPiloto;
    @Column(name = "fecha_hora_uso_vehiculo")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaHoraUsoVehiculo;
    @Column(name = "fecha_hora_retorno_vehiculo")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaHoraRetornoVehiculo;
    @Column(name = "fecha_hora_asignacion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaHoraAsignacion;
    @Size(max = 2)
    @Column(name = "estatus_asignacion")
    private String estatusAsignacion;
    
    @JoinColumn(name = "cod_asignacion_vehiculo", referencedColumnName = "cod_asignacion_vehiculo")
    @ManyToOne(targetEntity=AsignacionVehiculo.class, cascade = CascadeType.ALL)
    private AsignacionVehiculo codAsignacionVehiculo;
    
    @JoinColumn(name = "cod_persona_piloto_asignado", referencedColumnName = "cod_persona")
    @ManyToOne
    private Persona codPersonaPilotoAsignado;
    @JoinColumn(name = "cod_vehiculo", referencedColumnName = "cod_vehiculo")
    @ManyToOne
    private Vehiculo codVehiculo;

    public AsignacionVehiculoPiloto() {
    }

    public AsignacionVehiculoPiloto(Integer codAsignacionVehiculoPiloto) {
        this.codAsignacionVehiculoPiloto = codAsignacionVehiculoPiloto;
    }

    public Integer getCodAsignacionVehiculoPiloto() {
        return codAsignacionVehiculoPiloto;
    }

    public void setCodAsignacionVehiculoPiloto(Integer codAsignacionVehiculoPiloto) {
        this.codAsignacionVehiculoPiloto = codAsignacionVehiculoPiloto;
    }

    public Date getFechaHoraUsoVehiculo() {
        return fechaHoraUsoVehiculo;
    }

    public void setFechaHoraUsoVehiculo(Date fechaHoraUsoVehiculo) {
        this.fechaHoraUsoVehiculo = fechaHoraUsoVehiculo;
    }

    public Date getFechaHoraRetornoVehiculo() {
        return fechaHoraRetornoVehiculo;
    }

    public void setFechaHoraRetornoVehiculo(Date fechaHoraRetornoVehiculo) {
        this.fechaHoraRetornoVehiculo = fechaHoraRetornoVehiculo;
    }

    public Date getFechaHoraAsignacion() {
        return fechaHoraAsignacion;
    }

    public void setFechaHoraAsignacion(Date fechaHoraAsignacion) {
        this.fechaHoraAsignacion = fechaHoraAsignacion;
    }

    public String getEstatusAsignacion() {
        return estatusAsignacion;
    }

    public void setEstatusAsignacion(String estatusAsignacion) {
        this.estatusAsignacion = estatusAsignacion;
    }

    public AsignacionVehiculo getCodAsignacionVehiculo() {
        return codAsignacionVehiculo;
    }

    public void setCodAsignacionVehiculo(AsignacionVehiculo codAsignacionVehiculo) {
        this.codAsignacionVehiculo = codAsignacionVehiculo;
    }

    public Persona getCodPersonaPilotoAsignado() {
        return codPersonaPilotoAsignado;
    }

    public void setCodPersonaPilotoAsignado(Persona codPersonaPilotoAsignado){        
        this.codPersonaPilotoAsignado = codPersonaPilotoAsignado;
    }

    public Vehiculo getCodVehiculo() {
        return codVehiculo;
    }

    public void setCodVehiculo(Vehiculo codVehiculo) {
        this.codVehiculo = codVehiculo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codAsignacionVehiculoPiloto != null ? codAsignacionVehiculoPiloto.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AsignacionVehiculoPiloto)) {
            return false;
        }
        AsignacionVehiculoPiloto other = (AsignacionVehiculoPiloto) object;
        if ((this.codAsignacionVehiculoPiloto == null && other.codAsignacionVehiculoPiloto != null) || (this.codAsignacionVehiculoPiloto != null && !this.codAsignacionVehiculoPiloto.equals(other.codAsignacionVehiculoPiloto))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.AsignacionVehiculoPiloto[ codAsignacionVehiculoPiloto=" + codAsignacionVehiculoPiloto + " ]";
    }
    
}
