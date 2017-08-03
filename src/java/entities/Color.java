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
@Table(name = "color")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Color.findAll", query = "SELECT c FROM Color c")
    , @NamedQuery(name = "Color.findByCodColor", query = "SELECT c FROM Color c WHERE c.codColor = :codColor")
    , @NamedQuery(name = "Color.findByNombreColor", query = "SELECT c FROM Color c WHERE c.nombreColor = :nombreColor")
    , @NamedQuery(name = "Color.findByOrden", query = "SELECT c FROM Color c WHERE c.orden = :orden")
    , @NamedQuery(name = "Color.findByActivo", query = "SELECT c FROM Color c WHERE c.activo = :activo")})
public class Color implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_color")
    private Integer codColor;
    @Size(max = 100)
    @Column(name = "nombre_color")
    private String nombreColor;
    @Column(name = "orden")
    private Integer orden;
    @Column(name = "activo")
    private Boolean activo;
    @OneToMany(mappedBy = "codColor")
    private List<Vehiculo> vehiculoList;

    public Color() {
    }

    public Color(Integer codColor) {
        this.codColor = codColor;
    }

    public Integer getCodColor() {
        return codColor;
    }

    public void setCodColor(Integer codColor) {
        this.codColor = codColor;
    }

    public String getNombreColor() {
        return nombreColor;
    }

    public void setNombreColor(String nombreColor) {
        this.nombreColor = nombreColor;
    }

    public Integer getOrden() {
        return orden;
    }

    public void setOrden(Integer orden) {
        this.orden = orden;
    }

    public Boolean getActivo() {
        return activo;
    }

    public void setActivo(Boolean activo) {
        this.activo = activo;
    }

    @XmlTransient
    public List<Vehiculo> getVehiculoList() {
        return vehiculoList;
    }

    public void setVehiculoList(List<Vehiculo> vehiculoList) {
        this.vehiculoList = vehiculoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codColor != null ? codColor.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Color)) {
            return false;
        }
        Color other = (Color) object;
        if ((this.codColor == null && other.codColor != null) || (this.codColor != null && !this.codColor.equals(other.codColor))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.Color[ codColor=" + codColor + " ]";
        return nombreColor;
    }
    
}
