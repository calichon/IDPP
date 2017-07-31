/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
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
@Table(name = "region")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Region.findAll", query = "SELECT r FROM Region r")
    , @NamedQuery(name = "Region.findByCodRegion", query = "SELECT r FROM Region r WHERE r.codRegion = :codRegion")
    , @NamedQuery(name = "Region.findByDescripcion", query = "SELECT r FROM Region r WHERE r.descripcion = :descripcion")
    , @NamedQuery(name = "Region.findByCodEstatus", query = "SELECT r FROM Region r WHERE r.codEstatus = :codEstatus")})
public class Region implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_region")
    private Integer codRegion;
    @Size(max = 60)
    @Column(name = "descripcion")
    private String descripcion;
    @Size(max = 2)
    @Column(name = "cod_estatus")
    private String codEstatus;
    @OneToMany(mappedBy = "codRegion")
    private List<Departamento> departamentoList;

    public Region() {
    }

    public Region(Integer codRegion) {
        this.codRegion = codRegion;
    }

    public Integer getCodRegion() {
        return codRegion;
    }

    public void setCodRegion(Integer codRegion) {
        this.codRegion = codRegion;
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

    @XmlTransient
    public List<Departamento> getDepartamentoList() {
        return departamentoList;
    }

    public void setDepartamentoList(List<Departamento> departamentoList) {
        this.departamentoList = departamentoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codRegion != null ? codRegion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Region)) {
            return false;
        }
        Region other = (Region) object;
        if ((this.codRegion == null && other.codRegion != null) || (this.codRegion != null && !this.codRegion.equals(other.codRegion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Region[ codRegion=" + codRegion + " ]";
    }
    
}
