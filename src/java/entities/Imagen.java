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
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Carlos
 */
@Entity
@Table(name = "imagen")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Imagen.findAll", query = "SELECT i FROM Imagen i")
    , @NamedQuery(name = "Imagen.findByCodImagen", query = "SELECT i FROM Imagen i WHERE i.codImagen = :codImagen")
    , @NamedQuery(name = "Imagen.findByPathImagen", query = "SELECT i FROM Imagen i WHERE i.pathImagen = :pathImagen")
    , @NamedQuery(name = "Imagen.findByNombreImagen", query = "SELECT i FROM Imagen i WHERE i.nombreImagen = :nombreImagen")
    , @NamedQuery(name = "Imagen.findByOrden", query = "SELECT i FROM Imagen i WHERE i.orden = :orden")
    , @NamedQuery(name = "Imagen.findByActivo", query = "SELECT i FROM Imagen i WHERE i.activo = :activo")})
public class Imagen implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_imagen")
    private Integer codImagen;
    @Size(max = 2147483647)
    @Column(name = "path_imagen")
    private String pathImagen;
    @Lob
    @Column(name = "imagenb")
    private byte[] imagenb;
    @Size(max = 150)
    @Column(name = "nombre_imagen")
    private String nombreImagen;
    @Column(name = "orden")
    private Integer orden;
    @Column(name = "activo")
    private Boolean activo;
    @JoinColumn(name = "cod_tipo_imagen", referencedColumnName = "cod_tipo_imagen")
    @ManyToOne
    private TipoImagen codTipoImagen;
    @JoinColumn(name = "cod_vehiculo", referencedColumnName = "cod_vehiculo")
    @ManyToOne
    private Vehiculo codVehiculo;

    public Imagen() {
    }

    public Imagen(Integer codImagen) {
        this.codImagen = codImagen;
    }

    public Integer getCodImagen() {
        return codImagen;
    }

    public void setCodImagen(Integer codImagen) {
        this.codImagen = codImagen;
    }

    public String getPathImagen() {
        return pathImagen;
    }

    public void setPathImagen(String pathImagen) {
        this.pathImagen = pathImagen;
    }

    public byte[] getImagenb() {
        return imagenb;
    }

    public void setImagenb(byte[] imagenb) {
        this.imagenb = imagenb;
    }

    public String getNombreImagen() {
        return nombreImagen;
    }

    public void setNombreImagen(String nombreImagen) {
        this.nombreImagen = nombreImagen;
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

    public TipoImagen getCodTipoImagen() {
        return codTipoImagen;
    }

    public void setCodTipoImagen(TipoImagen codTipoImagen) {
        this.codTipoImagen = codTipoImagen;
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
        hash += (codImagen != null ? codImagen.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Imagen)) {
            return false;
        }
        Imagen other = (Imagen) object;
        if ((this.codImagen == null && other.codImagen != null) || (this.codImagen != null && !this.codImagen.equals(other.codImagen))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Imagen[ codImagen=" + codImagen + " ]";
    }
    
}
