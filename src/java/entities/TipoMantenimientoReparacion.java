/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author maria
 */
@Entity
@Table(name = "tipo_mantenimiento_reparacion")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TipoMantenimientoReparacion.findAll", query = "SELECT t FROM TipoMantenimientoReparacion t"),
    @NamedQuery(name = "TipoMantenimientoReparacion.findByCodTipoMantRep", query = "SELECT t FROM TipoMantenimientoReparacion t WHERE t.codTipoMantRep = :codTipoMantRep"),
    @NamedQuery(name = "TipoMantenimientoReparacion.findByDescripcion", query = "SELECT t FROM TipoMantenimientoReparacion t WHERE t.descripcion = :descripcion"),
    @NamedQuery(name = "TipoMantenimientoReparacion.findByMantRepa", query = "SELECT t FROM TipoMantenimientoReparacion t WHERE t.mantRepa = :mantRepa")})
public class TipoMantenimientoReparacion implements Serializable {

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "codTipoMantRep")
    private Collection<DetalleMantRep> detalleMantRepCollection;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_tipo_mant_rep")
    private Integer codTipoMantRep;
    @Size(max = 350)
    @Column(name = "descripcion")
    private String descripcion;
    @Column(name = "mant_repa")
    private Short mantRepa;
    @OneToMany(mappedBy = "codTipoMantenimiento")
    private Collection<MantenimientoReparacion> mantenimientoReparacionCollection;

    public TipoMantenimientoReparacion() {
    }

    public TipoMantenimientoReparacion(Integer codTipoMantRep) {
        this.codTipoMantRep = codTipoMantRep;
    }

    public Integer getCodTipoMantRep() {
        return codTipoMantRep;
    }

    public void setCodTipoMantRep(Integer codTipoMantRep) {
        this.codTipoMantRep = codTipoMantRep;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Short getMantRepa() {
        return mantRepa;
    }

    public void setMantRepa(Short mantRepa) {
        this.mantRepa = mantRepa;
    }

    @XmlTransient
    public Collection<MantenimientoReparacion> getMantenimientoReparacionCollection() {
        return mantenimientoReparacionCollection;
    }

    public void setMantenimientoReparacionCollection(Collection<MantenimientoReparacion> mantenimientoReparacionCollection) {
        this.mantenimientoReparacionCollection = mantenimientoReparacionCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codTipoMantRep != null ? codTipoMantRep.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TipoMantenimientoReparacion)) {
            return false;
        }
        TipoMantenimientoReparacion other = (TipoMantenimientoReparacion) object;
        if ((this.codTipoMantRep == null && other.codTipoMantRep != null) || (this.codTipoMantRep != null && !this.codTipoMantRep.equals(other.codTipoMantRep))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.TipoMantenimientoReparacion[ codTipoMantRep=" + codTipoMantRep + " ]";
    }

    @XmlTransient
    public Collection<DetalleMantRep> getDetalleMantRepCollection() {
        return detalleMantRepCollection;
    }

    public void setDetalleMantRepCollection(Collection<DetalleMantRep> detalleMantRepCollection) {
        this.detalleMantRepCollection = detalleMantRepCollection;
    }
    
}
