/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
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
@Table(name = "kilometraje_comision")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "KilometrajeComision.findAll", query = "SELECT k FROM KilometrajeComision k")
    , @NamedQuery(name = "KilometrajeComision.findLastByVehiculo", query = "SELECT k FROM KilometrajeComision k where k.codVehiculo = :vehiculo ORDER BY k.fechaHoraEntrada desc")
    , @NamedQuery(name = "KilometrajeComision.findByCodKilometrajeComision", query = "SELECT k FROM KilometrajeComision k WHERE k.codKilometrajeComision = :codKilometrajeComision")
    , @NamedQuery(name = "KilometrajeComision.findByPlaca", query = "SELECT k FROM KilometrajeComision k WHERE k.placa = :placa")
    , @NamedQuery(name = "KilometrajeComision.findByKilometrajeInicial", query = "SELECT k FROM KilometrajeComision k WHERE k.kilometrajeInicial = :kilometrajeInicial")
    , @NamedQuery(name = "KilometrajeComision.findByFechaHoraSalida", query = "SELECT k FROM KilometrajeComision k WHERE k.fechaHoraSalida = :fechaHoraSalida")
    , @NamedQuery(name = "KilometrajeComision.findByKilometrajeFinal", query = "SELECT k FROM KilometrajeComision k WHERE k.kilometrajeFinal = :kilometrajeFinal")
    , @NamedQuery(name = "KilometrajeComision.findByFechaHoraEntrada", query = "SELECT k FROM KilometrajeComision k WHERE k.fechaHoraEntrada = :fechaHoraEntrada")
    , @NamedQuery(name = "KilometrajeComision.findByComisionRealizada", query = "SELECT k FROM KilometrajeComision k WHERE k.comisionRealizada = :comisionRealizada")
    , @NamedQuery(name = "KilometrajeComision.findByCausa1", query = "SELECT k FROM KilometrajeComision k WHERE k.causa1 = :causa1")
    , @NamedQuery(name = "KilometrajeComision.findByCausa2", query = "SELECT k FROM KilometrajeComision k WHERE k.causa2 = :causa2")
    , @NamedQuery(name = "KilometrajeComision.findByCausa3", query = "SELECT k FROM KilometrajeComision k WHERE k.causa3 = :causa3")
    , @NamedQuery(name = "KilometrajeComision.findByDiligenciasRealizadas", query = "SELECT k FROM KilometrajeComision k WHERE k.diligenciasRealizadas = :diligenciasRealizadas")})
public class KilometrajeComision implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_kilometraje_comision")
    private Integer codKilometrajeComision;
    @Size(max = 15)
    @Column(name = "placa")
    private String placa;
    @Column(name = "kilometraje_inicial")
    private BigInteger kilometrajeInicial;
    @Column(name = "fecha_hora_salida")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaHoraSalida;
    @Column(name = "kilometraje_final")
    private BigInteger kilometrajeFinal;
    @Column(name = "fecha_hora_entrada")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaHoraEntrada;
    @Size(max = 2147483647)
    @Column(name = "comision_realizada")
    private String comisionRealizada;
    @Size(max = 50)
    @Column(name = "causa1")
    private String causa1;
    @Size(max = 50)
    @Column(name = "causa2")
    private String causa2;
    @Size(max = 50)
    @Column(name = "causa3")
    private String causa3;
    @Size(max = 2147483647)
    @Column(name = "diligencias_realizadas")
    private String diligenciasRealizadas;
    @JoinColumn(name = "cod_dependencia_institucion", referencedColumnName = "cod_dependencia_institucion")
    @ManyToOne
    private DependenciaInstitucion codDependenciaInstitucion;
    @JoinColumn(name = "cod_persona_piloto", referencedColumnName = "cod_persona")
    @ManyToOne
    private Persona codPersonaPiloto;
    @JoinColumn(name = "cod_vehiculo", referencedColumnName = "cod_vehiculo")
    @ManyToOne
    private Vehiculo codVehiculo;

    public KilometrajeComision() {
    }

    public KilometrajeComision(Integer codKilometrajeComision) {
        this.codKilometrajeComision = codKilometrajeComision;
    }

    public Integer getCodKilometrajeComision() {
        return codKilometrajeComision;
    }

    public void setCodKilometrajeComision(Integer codKilometrajeComision) {
        this.codKilometrajeComision = codKilometrajeComision;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public BigInteger getKilometrajeInicial() {
        return kilometrajeInicial;
    }

    public void setKilometrajeInicial(BigInteger kilometrajeInicial) {
        this.kilometrajeInicial = kilometrajeInicial;
    }

    public Date getFechaHoraSalida() {
        return fechaHoraSalida;
    }

    public void setFechaHoraSalida(Date fechaHoraSalida) {
        this.fechaHoraSalida = fechaHoraSalida;
    }

    public BigInteger getKilometrajeFinal() {
        return kilometrajeFinal;
    }

    public void setKilometrajeFinal(BigInteger kilometrajeFinal) {
        this.kilometrajeFinal = kilometrajeFinal;
    }

    public Date getFechaHoraEntrada() {
        return fechaHoraEntrada;
    }

    public void setFechaHoraEntrada(Date fechaHoraEntrada) {
        this.fechaHoraEntrada = fechaHoraEntrada;
    }

    public String getComisionRealizada() {
        return comisionRealizada;
    }

    public void setComisionRealizada(String comisionRealizada) {
        this.comisionRealizada = comisionRealizada;
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

    public String getDiligenciasRealizadas() {
        return diligenciasRealizadas;
    }

    public void setDiligenciasRealizadas(String diligenciasRealizadas) {
        this.diligenciasRealizadas = diligenciasRealizadas;
    }

    public DependenciaInstitucion getCodDependenciaInstitucion() {
        return codDependenciaInstitucion;
    }

    public void setCodDependenciaInstitucion(DependenciaInstitucion codDependenciaInstitucion) {
        this.codDependenciaInstitucion = codDependenciaInstitucion;
    }

    public Persona getCodPersonaPiloto() {
        return codPersonaPiloto;
    }

    public void setCodPersonaPiloto(Persona codPersonaPiloto) {
        this.codPersonaPiloto = codPersonaPiloto;
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
        hash += (codKilometrajeComision != null ? codKilometrajeComision.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof KilometrajeComision)) {
            return false;
        }
        KilometrajeComision other = (KilometrajeComision) object;
        if ((this.codKilometrajeComision == null && other.codKilometrajeComision != null) || (this.codKilometrajeComision != null && !this.codKilometrajeComision.equals(other.codKilometrajeComision))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.KilometrajeComision[ codKilometrajeComision=" + codKilometrajeComision + " ]";
    }

}
