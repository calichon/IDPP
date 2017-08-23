/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Carlos
 */
@Entity
@Table(name = "unidad")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Unidad.findAll", query = "SELECT u FROM Unidad u")
    , @NamedQuery(name = "Unidad.findByCodUnidad", query = "SELECT u FROM Unidad u WHERE u.codUnidad = :codUnidad")
    , @NamedQuery(name = "Unidad.findByDescripcion", query = "SELECT u FROM Unidad u WHERE u.descripcion = :descripcion")
    , @NamedQuery(name = "Unidad.findByCodEstatus", query = "SELECT u FROM Unidad u WHERE u.codEstatus = :codEstatus")
    , @NamedQuery(name = "Unidad.findByTieneDependencia", query = "SELECT u FROM Unidad u WHERE u.tieneDependencia = :tieneDependencia")
    , @NamedQuery(name = "Unidad.findByNomenclatura", query = "SELECT u FROM Unidad u WHERE u.nomenclatura = :nomenclatura")})
public class Unidad implements Serializable {

    @OneToMany(mappedBy = "codUnidad")
    private Collection<Organigrama> organigramaCollection;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_unidad")
    private Integer codUnidad;
    @Size(max = 100)
    @Column(name = "descripcion")
    private String descripcion;
    @Size(max = 2)
    @Column(name = "cod_estatus")
    private String codEstatus;
    @Column(name = "tiene_dependencia")
    private Boolean tieneDependencia;
    @Size(max = 3)
    @Column(name = "nomenclatura")
    private String nomenclatura;
    @OneToMany(mappedBy = "codUnidad")
    private List<CombustibleComision> combustibleComisionList;
    @OneToMany(mappedBy = "codUnidadSolicitante")
    private List<AsignacionVehiculo> asignacionVehiculoList;

    public Unidad() {
    }

    public Unidad(Integer codUnidad) {
        this.codUnidad = codUnidad;
    }

    public Integer getCodUnidad() {
        return codUnidad;
    }

    public void setCodUnidad(Integer codUnidad) {
        this.codUnidad = codUnidad;
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

    public Boolean getTieneDependencia() {
        return tieneDependencia;
    }

    public void setTieneDependencia(Boolean tieneDependencia) {
        this.tieneDependencia = tieneDependencia;
    }

    public String getNomenclatura() {
        return nomenclatura;
    }

    public void setNomenclatura(String nomenclatura) {
        this.nomenclatura = nomenclatura;
    }

    @XmlTransient
    public List<CombustibleComision> getCombustibleComisionList() {
        return combustibleComisionList;
    }

    public void setCombustibleComisionList(List<CombustibleComision> combustibleComisionList) {
        this.combustibleComisionList = combustibleComisionList;
    }

    @XmlTransient
    public List<AsignacionVehiculo> getAsignacionVehiculoList() {
        return asignacionVehiculoList;
    }

    public void setAsignacionVehiculoList(List<AsignacionVehiculo> asignacionVehiculoList) {
        this.asignacionVehiculoList = asignacionVehiculoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codUnidad != null ? codUnidad.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Unidad)) {
            return false;
        }
        Unidad other = (Unidad) object;
        if ((this.codUnidad == null && other.codUnidad != null) || (this.codUnidad != null && !this.codUnidad.equals(other.codUnidad))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.Unidad[ codUnidad=" + codUnidad + " ]";
        return descripcion;
    }

    @XmlTransient
    public Collection<Organigrama> getOrganigramaCollection() {
        return organigramaCollection;
    }

    public void setOrganigramaCollection(Collection<Organigrama> organigramaCollection) {
        this.organigramaCollection = organigramaCollection;
    }
    
}
