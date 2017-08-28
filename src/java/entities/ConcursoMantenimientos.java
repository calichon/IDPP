/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
 * @author maria
 */
@Entity
@Table(name = "concurso_mantenimientos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ConcursoMantenimientos.findAll", query = "SELECT c FROM ConcursoMantenimientos c"),
    @NamedQuery(name = "ConcursoMantenimientos.findByCodConcursoMantenimiento", query = "SELECT c FROM ConcursoMantenimientos c WHERE c.codConcursoMantenimiento = :codConcursoMantenimiento"),
    @NamedQuery(name = "ConcursoMantenimientos.findByNoConcurso", query = "SELECT c FROM ConcursoMantenimientos c WHERE c.noConcurso = :noConcurso"),
    @NamedQuery(name = "ConcursoMantenimientos.findByFechaConcurso", query = "SELECT c FROM ConcursoMantenimientos c WHERE c.fechaConcurso = :fechaConcurso"),
    @NamedQuery(name = "ConcursoMantenimientos.findByPlacaVehiculo", query = "SELECT c FROM ConcursoMantenimientos c WHERE c.placaVehiculo = :placaVehiculo"),
    @NamedQuery(name = "ConcursoMantenimientos.findByRealizado", query = "SELECT c FROM ConcursoMantenimientos c WHERE c.realizado = :realizado"),
    @NamedQuery(name = "ConcursoMantenimientos.findByCodEmpleadoAutoriza", query = "SELECT c FROM ConcursoMantenimientos c WHERE c.codEmpleadoAutoriza = :codEmpleadoAutoriza"),
    @NamedQuery(name = "ConcursoMantenimientos.findByCodCargoEmpleadoAutoriza", query = "SELECT c FROM ConcursoMantenimientos c WHERE c.codCargoEmpleadoAutoriza = :codCargoEmpleadoAutoriza"),
    @NamedQuery(name = "ConcursoMantenimientos.findByActivo", query = "SELECT c FROM ConcursoMantenimientos c WHERE c.activo = :activo")})
public class ConcursoMantenimientos implements Serializable {

    @OneToMany(mappedBy = "codNoConcurso")
    private Collection<MantenimientoReparacion> mantenimientoReparacionCollection;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_concurso_mantenimiento")
    private Integer codConcursoMantenimiento;
    @Size(max = 200)
    @Column(name = "no_concurso")
    private String noConcurso;
    @Column(name = "fecha_concurso")
    @Temporal(TemporalType.DATE)
    private Date fechaConcurso;
    @Size(max = 15)
    @Column(name = "placa_vehiculo")
    private String placaVehiculo;
    @Column(name = "realizado")
    private Short realizado;
    @Column(name = "cod_empleado_autoriza")
    private BigInteger codEmpleadoAutoriza;
    @Column(name = "cod_cargo_empleado_autoriza")
    private BigInteger codCargoEmpleadoAutoriza;
    @Column(name = "activo")
    private Short activo;

    public ConcursoMantenimientos() {
    }

    public ConcursoMantenimientos(Integer codConcursoMantenimiento) {
        this.codConcursoMantenimiento = codConcursoMantenimiento;
    }

    public Integer getCodConcursoMantenimiento() {
        return codConcursoMantenimiento;
    }

    public void setCodConcursoMantenimiento(Integer codConcursoMantenimiento) {
        this.codConcursoMantenimiento = codConcursoMantenimiento;
    }

    public String getNoConcurso() {
        return noConcurso;
    }

    public void setNoConcurso(String noConcurso) {
        this.noConcurso = noConcurso;
    }

    public Date getFechaConcurso() {
        return fechaConcurso;
    }

    public void setFechaConcurso(Date fechaConcurso) {
        this.fechaConcurso = fechaConcurso;
    }

    public String getPlacaVehiculo() {
        return placaVehiculo;
    }

    public void setPlacaVehiculo(String placaVehiculo) {
        this.placaVehiculo = placaVehiculo;
    }

    public Short getRealizado() {
        return realizado;
    }

    public void setRealizado(Short realizado) {
        this.realizado = realizado;
    }

    public BigInteger getCodEmpleadoAutoriza() {
        return codEmpleadoAutoriza;
    }

    public void setCodEmpleadoAutoriza(BigInteger codEmpleadoAutoriza) {
        this.codEmpleadoAutoriza = codEmpleadoAutoriza;
    }

    public BigInteger getCodCargoEmpleadoAutoriza() {
        return codCargoEmpleadoAutoriza;
    }

    public void setCodCargoEmpleadoAutoriza(BigInteger codCargoEmpleadoAutoriza) {
        this.codCargoEmpleadoAutoriza = codCargoEmpleadoAutoriza;
    }

    public Short getActivo() {
        return activo;
    }

    public void setActivo(Short activo) {
        this.activo = activo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codConcursoMantenimiento != null ? codConcursoMantenimiento.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ConcursoMantenimientos)) {
            return false;
        }
        ConcursoMantenimientos other = (ConcursoMantenimientos) object;
        if ((this.codConcursoMantenimiento == null && other.codConcursoMantenimiento != null) || (this.codConcursoMantenimiento != null && !this.codConcursoMantenimiento.equals(other.codConcursoMantenimiento))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.ConcursoMantenimientos[ codConcursoMantenimiento=" + codConcursoMantenimiento + " ]";
    }

    @XmlTransient
    public Collection<MantenimientoReparacion> getMantenimientoReparacionCollection() {
        return mantenimientoReparacionCollection;
    }

    public void setMantenimientoReparacionCollection(Collection<MantenimientoReparacion> mantenimientoReparacionCollection) {
        this.mantenimientoReparacionCollection = mantenimientoReparacionCollection;
    }
    
}
