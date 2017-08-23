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
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
@Table(name = "asignacion_vehiculo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AsignacionVehiculo.findAll", query = "SELECT a FROM AsignacionVehiculo a")
    , @NamedQuery(name = "AsignacionVehiculo.findAllDestino", query = "SELECT DISTINCT(a.destino) FROM AsignacionVehiculo a WHERE a.destino LIKE CONCAT('%',:search,'%') ORDER BY a.destino")
    , @NamedQuery(name = "AsignacionVehiculo.findByCodAsignacionVehiculo", query = "SELECT a FROM AsignacionVehiculo a WHERE a.codAsignacionVehiculo = :codAsignacionVehiculo")
    , @NamedQuery(name = "AsignacionVehiculo.findByFechaAsignacion", query = "SELECT a FROM AsignacionVehiculo a WHERE a.fechaAsignacion = :fechaAsignacion")
    , @NamedQuery(name = "AsignacionVehiculo.findByNoSolicitud", query = "SELECT a FROM AsignacionVehiculo a WHERE a.noSolicitud = :noSolicitud")
    , @NamedQuery(name = "AsignacionVehiculo.findByYearSolicitud", query = "SELECT a FROM AsignacionVehiculo a WHERE a.yearSolicitud = :yearSolicitud")
    , @NamedQuery(name = "AsignacionVehiculo.findByFechaHoraUsoVehiculo", query = "SELECT a FROM AsignacionVehiculo a WHERE a.fechaHoraUsoVehiculo = :fechaHoraUsoVehiculo")
    , @NamedQuery(name = "AsignacionVehiculo.findByFechaHoraRetornoVehiculo", query = "SELECT a FROM AsignacionVehiculo a WHERE a.fechaHoraRetornoVehiculo = :fechaHoraRetornoVehiculo")
    , @NamedQuery(name = "AsignacionVehiculo.findByDiasAsignacion", query = "SELECT a FROM AsignacionVehiculo a WHERE a.diasAsignacion = :diasAsignacion")
    , @NamedQuery(name = "AsignacionVehiculo.findByNumPersonasViaje", query = "SELECT a FROM AsignacionVehiculo a WHERE a.numPersonasViaje = :numPersonasViaje")
    , @NamedQuery(name = "AsignacionVehiculo.findByDestino", query = "SELECT a FROM AsignacionVehiculo a WHERE a.destino = :destino")
    , @NamedQuery(name = "AsignacionVehiculo.findByDiligencia", query = "SELECT a FROM AsignacionVehiculo a WHERE a.diligencia = :diligencia")
    , @NamedQuery(name = "AsignacionVehiculo.findByCausa1", query = "SELECT a FROM AsignacionVehiculo a WHERE a.causa1 = :causa1")
    , @NamedQuery(name = "AsignacionVehiculo.findByCausa2", query = "SELECT a FROM AsignacionVehiculo a WHERE a.causa2 = :causa2")
    , @NamedQuery(name = "AsignacionVehiculo.findByCausa3", query = "SELECT a FROM AsignacionVehiculo a WHERE a.causa3 = :causa3")
    , @NamedQuery(name = "AsignacionVehiculo.findByUtilizaPiloto", query = "SELECT a FROM AsignacionVehiculo a WHERE a.utilizaPiloto = :utilizaPiloto")
    , @NamedQuery(name = "AsignacionVehiculo.findByUtilizaVehiculo", query = "SELECT a FROM AsignacionVehiculo a WHERE a.utilizaVehiculo = :utilizaVehiculo")
    , @NamedQuery(name = "AsignacionVehiculo.findByCargaVoluminosa", query = "SELECT a FROM AsignacionVehiculo a WHERE a.cargaVoluminosa = :cargaVoluminosa")
    , @NamedQuery(name = "AsignacionVehiculo.findByObservaciones", query = "SELECT a FROM AsignacionVehiculo a WHERE a.observaciones = :observaciones")})
public class AsignacionVehiculo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_asignacion_vehiculo")
    private Integer codAsignacionVehiculo;
    @Column(name = "fecha_asignacion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaAsignacion;    
//    @SequenceGenerator(name="asignacion_vehiculo_no_solicitud",sequenceName="asignacion_vehiculo_no_solicitud")            
//    @GeneratedValue(strategy=GenerationType.AUTO, generator="asignacion_vehiculo_no_solicitud")         
    @Column(name = "no_solicitud", insertable = false)
    private Integer noSolicitud;
    @Column(name = "year_solicitud")
    private Integer yearSolicitud;
    @Column(name = "fecha_hora_uso_vehiculo")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaHoraUsoVehiculo;
    @Column(name = "fecha_hora_retorno_vehiculo")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaHoraRetornoVehiculo;
    @Column(name = "dias_asignacion")
    private Integer diasAsignacion;
    @Column(name = "num_personas_viaje")
    private Integer numPersonasViaje;
    @Size(max = 512)
    @Column(name = "destino")
    private String destino;
    @Size(max = 2147483647)
    @Column(name = "diligencia")
    private String diligencia;
    @Size(max = 50)
    @Column(name = "causa_1")
    private String causa1;
    @Size(max = 50)
    @Column(name = "causa_2")
    private String causa2;
    @Size(max = 50)
    @Column(name = "causa_3")
    private String causa3;
    @Column(name = "utiliza_piloto")
    private Boolean utilizaPiloto;
    @Column(name = "utiliza_vehiculo")
    private Boolean utilizaVehiculo;
    @Column(name = "carga_voluminosa")
    private Boolean cargaVoluminosa;
    @Size(max = 2147483647)
    @Column(name = "observaciones")
    private String observaciones;
    @JoinColumn(name = "cod_dependencia_institucion_juzgado", referencedColumnName = "cod_dependencia_institucion")
    @ManyToOne
    private DependenciaInstitucion codDependenciaInstitucionJuzgado;
    @JoinColumn(name = "cod_persona_asignador_vehiculo", referencedColumnName = "cod_persona")
    @ManyToOne
    private Persona codPersonaAsignadorVehiculo;
    @JoinColumn(name = "cod_persona_coordinador_jefe", referencedColumnName = "cod_persona")
    @ManyToOne
    private Persona codPersonaCoordinadorJefe;
    @JoinColumn(name = "cod_persona_pasajero", referencedColumnName = "cod_persona")
    @ManyToOne
    private Persona codPersonaPasajero;
    @JoinColumn(name = "cod_persona_solicitante", referencedColumnName = "cod_persona")
    @ManyToOne
    private Persona codPersonaSolicitante;
    @JoinColumn(name = "cod_puesto_asignador_vehiculo", referencedColumnName = "cod_puesto")
    @ManyToOne
    private Puesto codPuestoAsignadorVehiculo;
    @JoinColumn(name = "cod_puesto_coordinador_jefe", referencedColumnName = "cod_puesto")
    @ManyToOne
    private Puesto codPuestoCoordinadorJefe;
    @JoinColumn(name = "cod_puesto_solicitante", referencedColumnName = "cod_puesto")
    @ManyToOne
    private Puesto codPuestoSolicitante;
    @JoinColumn(name = "cod_sede_lugar_salida", referencedColumnName = "cod_sede")
    @ManyToOne
    private Sede codSedeLugarSalida;
    @JoinColumn(name = "cod_unidad_solicitante", referencedColumnName = "cod_unidad")
    @ManyToOne
    private Unidad codUnidadSolicitante;
    
    @OneToMany(mappedBy = "codAsignacionVehiculo",fetch=FetchType.EAGER, cascade = CascadeType.ALL)
    private List<AsignacionVehiculoPiloto> asignacionVehiculoPilotoList;

    public AsignacionVehiculo() {
    }

    public AsignacionVehiculo(Integer codAsignacionVehiculo) {
        this.codAsignacionVehiculo = codAsignacionVehiculo;
    }

    public Integer getCodAsignacionVehiculo() {
        return codAsignacionVehiculo;
    }

    public void setCodAsignacionVehiculo(Integer codAsignacionVehiculo) {
        this.codAsignacionVehiculo = codAsignacionVehiculo;
    }

    public Date getFechaAsignacion() {
        return fechaAsignacion;
    }

    public void setFechaAsignacion(Date fechaAsignacion) {
        this.fechaAsignacion = fechaAsignacion;
    }

    public Integer getNoSolicitud() {
        return noSolicitud;
    }

    public void setNoSolicitud(Integer noSolicitud) {
        this.noSolicitud = noSolicitud;
    }

    public Integer getYearSolicitud() {
        return yearSolicitud;
    }

    public void setYearSolicitud(Integer yearSolicitud) {
        this.yearSolicitud = yearSolicitud;
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

    public Integer getDiasAsignacion() {
        return diasAsignacion;
    }

    public void setDiasAsignacion(Integer diasAsignacion) {
        this.diasAsignacion = diasAsignacion;
    }

    public Integer getNumPersonasViaje() {
        return numPersonasViaje;
    }

    public void setNumPersonasViaje(Integer numPersonasViaje) {
        this.numPersonasViaje = numPersonasViaje;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public String getDiligencia() {
        return diligencia;
    }

    public void setDiligencia(String diligencia) {
        this.diligencia = diligencia;
    }

    public String getCausa1() {
        return causa1;
    }

    public void setCausa1(String causa1) {
        this.causa1 = causa1;
    }

    public String getCausa2() {
        return causa2;
    }

    public void setCausa2(String causa2) {
        this.causa2 = causa2;
    }

    public String getCausa3() {
        return causa3;
    }

    public void setCausa3(String causa3) {
        this.causa3 = causa3;
    }

    public Boolean getUtilizaPiloto() {
        return utilizaPiloto;
    }

    public void setUtilizaPiloto(Boolean utilizaPiloto) {
        this.utilizaPiloto = utilizaPiloto;
    }

    public Boolean getUtilizaVehiculo() {
        return utilizaVehiculo;
    }

    public void setUtilizaVehiculo(Boolean utilizaVehiculo) {
        this.utilizaVehiculo = utilizaVehiculo;
    }

    public Boolean getCargaVoluminosa() {
        return cargaVoluminosa;
    }

    public void setCargaVoluminosa(Boolean cargaVoluminosa) {
        this.cargaVoluminosa = cargaVoluminosa;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public DependenciaInstitucion getCodDependenciaInstitucionJuzgado() {
        return codDependenciaInstitucionJuzgado;
    }

    public void setCodDependenciaInstitucionJuzgado(DependenciaInstitucion codDependenciaInstitucionJuzgado) {
        this.codDependenciaInstitucionJuzgado = codDependenciaInstitucionJuzgado;
    }

    public Persona getCodPersonaAsignadorVehiculo() {
        return codPersonaAsignadorVehiculo;
    }

    public void setCodPersonaAsignadorVehiculo(Persona codPersonaAsignadorVehiculo) {
        this.codPersonaAsignadorVehiculo = codPersonaAsignadorVehiculo;
    }

    public Persona getCodPersonaCoordinadorJefe() {
        return codPersonaCoordinadorJefe;
    }

    public void setCodPersonaCoordinadorJefe(Persona codPersonaCoordinadorJefe) {
        this.codPersonaCoordinadorJefe = codPersonaCoordinadorJefe;
    }

    public Persona getCodPersonaPasajero() {
        return codPersonaPasajero;
    }

    public void setCodPersonaPasajero(Persona codPersonaPasajero) {
        this.codPersonaPasajero = codPersonaPasajero;
    }

    public Persona getCodPersonaSolicitante() {
        return codPersonaSolicitante;
    }

    public void setCodPersonaSolicitante(Persona codPersonaSolicitante) {
        this.codPersonaSolicitante = codPersonaSolicitante;
    }

    public Puesto getCodPuestoAsignadorVehiculo() {
        return codPuestoAsignadorVehiculo;
    }

    public void setCodPuestoAsignadorVehiculo(Puesto codPuestoAsignadorVehiculo) {
        this.codPuestoAsignadorVehiculo = codPuestoAsignadorVehiculo;
    }

    public Puesto getCodPuestoCoordinadorJefe() {
        return codPuestoCoordinadorJefe;
    }

    public void setCodPuestoCoordinadorJefe(Puesto codPuestoCoordinadorJefe) {
        this.codPuestoCoordinadorJefe = codPuestoCoordinadorJefe;
    }

    public Puesto getCodPuestoSolicitante() {
        return codPuestoSolicitante;
    }

    public void setCodPuestoSolicitante(Puesto codPuestoSolicitante) {
        this.codPuestoSolicitante = codPuestoSolicitante;
    }

    public Sede getCodSedeLugarSalida() {
        return codSedeLugarSalida;
    }

    public void setCodSedeLugarSalida(Sede codSedeLugarSalida) {
        this.codSedeLugarSalida = codSedeLugarSalida;
    }

    public Unidad getCodUnidadSolicitante() {
        return codUnidadSolicitante;
    }

    public void setCodUnidadSolicitante(Unidad codUnidadSolicitante) {
        this.codUnidadSolicitante = codUnidadSolicitante;
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
        hash += (codAsignacionVehiculo != null ? codAsignacionVehiculo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AsignacionVehiculo)) {
            return false;
        }
        AsignacionVehiculo other = (AsignacionVehiculo) object;
        if ((this.codAsignacionVehiculo == null && other.codAsignacionVehiculo != null) || (this.codAsignacionVehiculo != null && !this.codAsignacionVehiculo.equals(other.codAsignacionVehiculo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.AsignacionVehiculo[ codAsignacionVehiculo=" + codAsignacionVehiculo + " ]";
    }
    
}
