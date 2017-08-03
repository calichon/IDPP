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
@Table(name = "tipo_uso")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TipoUso.findAll", query = "SELECT t FROM TipoUso t")
    , @NamedQuery(name = "TipoUso.findByCodTipoUso", query = "SELECT t FROM TipoUso t WHERE t.codTipoUso = :codTipoUso")
    , @NamedQuery(name = "TipoUso.findByNombreTipoUso", query = "SELECT t FROM TipoUso t WHERE t.nombreTipoUso = :nombreTipoUso")
    , @NamedQuery(name = "TipoUso.findByOrden", query = "SELECT t FROM TipoUso t WHERE t.orden = :orden")
    , @NamedQuery(name = "TipoUso.findByActivo", query = "SELECT t FROM TipoUso t WHERE t.activo = :activo")})
public class TipoUso implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_tipo_uso")
    private Integer codTipoUso;
    @Size(max = 50)
    @Column(name = "nombre_tipo_uso")
    private String nombreTipoUso;
    @Column(name = "orden")
    private Integer orden;
    @Column(name = "activo")
    private Boolean activo;
    @OneToMany(mappedBy = "codTipoUso")
    private List<Vehiculo> vehiculoList;

    public TipoUso() {
    }

    public TipoUso(Integer codTipoUso) {
        this.codTipoUso = codTipoUso;
    }

    public Integer getCodTipoUso() {
        return codTipoUso;
    }

    public void setCodTipoUso(Integer codTipoUso) {
        this.codTipoUso = codTipoUso;
    }

    public String getNombreTipoUso() {
        return nombreTipoUso;
    }

    public void setNombreTipoUso(String nombreTipoUso) {
        this.nombreTipoUso = nombreTipoUso;
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
        hash += (codTipoUso != null ? codTipoUso.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TipoUso)) {
            return false;
        }
        TipoUso other = (TipoUso) object;
        if ((this.codTipoUso == null && other.codTipoUso != null) || (this.codTipoUso != null && !this.codTipoUso.equals(other.codTipoUso))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.TipoUso[ codTipoUso=" + codTipoUso + " ]";
        return nombreTipoUso;
    }
    
}
