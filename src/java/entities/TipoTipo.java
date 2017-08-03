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
@Table(name = "tipo_tipo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TipoTipo.findAll", query = "SELECT t FROM TipoTipo t")
    , @NamedQuery(name = "TipoTipo.findByCodTipoTipo", query = "SELECT t FROM TipoTipo t WHERE t.codTipoTipo = :codTipoTipo")
    , @NamedQuery(name = "TipoTipo.findByNombreTipoTipo", query = "SELECT t FROM TipoTipo t WHERE t.nombreTipoTipo = :nombreTipoTipo")
    , @NamedQuery(name = "TipoTipo.findByOrden", query = "SELECT t FROM TipoTipo t WHERE t.orden = :orden")
    , @NamedQuery(name = "TipoTipo.findByActivo", query = "SELECT t FROM TipoTipo t WHERE t.activo = :activo")})
public class TipoTipo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_tipo_tipo")
    private Integer codTipoTipo;
    @Size(max = 50)
    @Column(name = "nombre_tipo_tipo")
    private String nombreTipoTipo;
    @Column(name = "orden")
    private Integer orden;
    @Column(name = "activo")
    private Boolean activo;
    @OneToMany(mappedBy = "codTipoTipo")
    private List<Vehiculo> vehiculoList;

    public TipoTipo() {
    }

    public TipoTipo(Integer codTipoTipo) {
        this.codTipoTipo = codTipoTipo;
    }

    public Integer getCodTipoTipo() {
        return codTipoTipo;
    }

    public void setCodTipoTipo(Integer codTipoTipo) {
        this.codTipoTipo = codTipoTipo;
    }

    public String getNombreTipoTipo() {
        return nombreTipoTipo;
    }

    public void setNombreTipoTipo(String nombreTipoTipo) {
        this.nombreTipoTipo = nombreTipoTipo;
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
        hash += (codTipoTipo != null ? codTipoTipo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TipoTipo)) {
            return false;
        }
        TipoTipo other = (TipoTipo) object;
        if ((this.codTipoTipo == null && other.codTipoTipo != null) || (this.codTipoTipo != null && !this.codTipoTipo.equals(other.codTipoTipo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.TipoTipo[ codTipoTipo=" + codTipoTipo + " ]";
        return nombreTipoTipo;
    }
    
}
