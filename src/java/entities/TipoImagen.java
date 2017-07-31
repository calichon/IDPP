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
@Table(name = "tipo_imagen")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TipoImagen.findAll", query = "SELECT t FROM TipoImagen t")
    , @NamedQuery(name = "TipoImagen.findByCodTipoImagen", query = "SELECT t FROM TipoImagen t WHERE t.codTipoImagen = :codTipoImagen")
    , @NamedQuery(name = "TipoImagen.findByNombreTipoImagen", query = "SELECT t FROM TipoImagen t WHERE t.nombreTipoImagen = :nombreTipoImagen")
    , @NamedQuery(name = "TipoImagen.findByOrden", query = "SELECT t FROM TipoImagen t WHERE t.orden = :orden")
    , @NamedQuery(name = "TipoImagen.findByActivo", query = "SELECT t FROM TipoImagen t WHERE t.activo = :activo")})
public class TipoImagen implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_tipo_imagen")
    private Integer codTipoImagen;
    @Size(max = 50)
    @Column(name = "nombre_tipo_imagen")
    private String nombreTipoImagen;
    @Column(name = "orden")
    private Integer orden;
    @Column(name = "activo")
    private Boolean activo;
    @OneToMany(mappedBy = "codTipoImagen")
    private List<Imagen> imagenList;

    public TipoImagen() {
    }

    public TipoImagen(Integer codTipoImagen) {
        this.codTipoImagen = codTipoImagen;
    }

    public Integer getCodTipoImagen() {
        return codTipoImagen;
    }

    public void setCodTipoImagen(Integer codTipoImagen) {
        this.codTipoImagen = codTipoImagen;
    }

    public String getNombreTipoImagen() {
        return nombreTipoImagen;
    }

    public void setNombreTipoImagen(String nombreTipoImagen) {
        this.nombreTipoImagen = nombreTipoImagen;
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
    public List<Imagen> getImagenList() {
        return imagenList;
    }

    public void setImagenList(List<Imagen> imagenList) {
        this.imagenList = imagenList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codTipoImagen != null ? codTipoImagen.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TipoImagen)) {
            return false;
        }
        TipoImagen other = (TipoImagen) object;
        if ((this.codTipoImagen == null && other.codTipoImagen != null) || (this.codTipoImagen != null && !this.codTipoImagen.equals(other.codTipoImagen))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.TipoImagen[ codTipoImagen=" + codTipoImagen + " ]";
    }
    
}
