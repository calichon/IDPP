/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author maria
 */
@Entity
@Table(name = "detalle_mant_rep")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DetalleMantRep.findAll", query = "SELECT d FROM DetalleMantRep d"),
    @NamedQuery(name = "DetalleMantRep.findByCodDetalleMantRepara", query = "SELECT d FROM DetalleMantRep d WHERE d.codDetalleMantRepara = :codDetalleMantRepara"),
    @NamedQuery(name = "DetalleMantRep.findByCostoReparacionDetalle", query = "SELECT d FROM DetalleMantRep d WHERE d.costoReparacionDetalle = :costoReparacionDetalle"),
    @NamedQuery(name = "DetalleMantRep.findByDescripcion", query = "SELECT d FROM DetalleMantRep d WHERE d.descripcion = :descripcion"),
    @NamedQuery(name = "DetalleMantRep.findByTiempoGarantia", query = "SELECT d FROM DetalleMantRep d WHERE d.tiempoGarantia = :tiempoGarantia")})
public class DetalleMantRep implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_detalle_mant_repara")
    private Integer codDetalleMantRepara;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "costo_reparacion_detalle")
    private Double costoReparacionDetalle;
    @Size(max = 400)
    @Column(name = "descripcion")
    private String descripcion;
    @Size(max = 100)
    @Column(name = "tiempo_garantia")
    private String tiempoGarantia;
    @JoinColumn(name = "cod_tipo_mant_rep", referencedColumnName = "cod_tipo_mant_rep")
    @ManyToOne(optional = false)
    private TipoMantenimientoReparacion codTipoMantRep;
    @JoinColumn(name = "cod_mantenimiento_reparacion", referencedColumnName = "cod_mantenimiento_reparacion")
    @ManyToOne(optional = false)
    private MantenimientoReparacion codMantenimientoReparacion;

    public DetalleMantRep() {
    }

    public DetalleMantRep(Integer codDetalleMantRepara) {
        this.codDetalleMantRepara = codDetalleMantRepara;
    }

    public Integer getCodDetalleMantRepara() {
        return codDetalleMantRepara;
    }

    public void setCodDetalleMantRepara(Integer codDetalleMantRepara) {
        this.codDetalleMantRepara = codDetalleMantRepara;
    }

    public Double getCostoReparacionDetalle() {
        return costoReparacionDetalle;
    }

    public void setCostoReparacionDetalle(Double costoReparacionDetalle) {
        this.costoReparacionDetalle = costoReparacionDetalle;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getTiempoGarantia() {
        return tiempoGarantia;
    }

    public void setTiempoGarantia(String tiempoGarantia) {
        this.tiempoGarantia = tiempoGarantia;
    }

    public TipoMantenimientoReparacion getCodTipoMantRep() {
        return codTipoMantRep;
    }

    public void setCodTipoMantRep(TipoMantenimientoReparacion codTipoMantRep) {
        this.codTipoMantRep = codTipoMantRep;
    }

    public MantenimientoReparacion getCodMantenimientoReparacion() {
        return codMantenimientoReparacion;
    }

    public void setCodMantenimientoReparacion(MantenimientoReparacion codMantenimientoReparacion) {
        this.codMantenimientoReparacion = codMantenimientoReparacion;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codDetalleMantRepara != null ? codDetalleMantRepara.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DetalleMantRep)) {
            return false;
        }
        DetalleMantRep other = (DetalleMantRep) object;
        if ((this.codDetalleMantRepara == null && other.codDetalleMantRepara != null) || (this.codDetalleMantRepara != null && !this.codDetalleMantRepara.equals(other.codDetalleMantRepara))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.DetalleMantRep[ codDetalleMantRepara=" + codDetalleMantRepara + " ]";
    }
    
}
