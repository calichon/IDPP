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
@Table(name = "marca")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Marca.findAll", query = "SELECT m FROM Marca m ORDER BY m.nombreMarca")
    , @NamedQuery(name = "Marca.findByCodMarca", query = "SELECT m FROM Marca m WHERE m.codMarca = :codMarca")
    , @NamedQuery(name = "Marca.findByNombreMarca", query = "SELECT m FROM Marca m WHERE m.nombreMarca = :nombreMarca")
    , @NamedQuery(name = "Marca.findByOrden", query = "SELECT m FROM Marca m WHERE m.orden = :orden")
    , @NamedQuery(name = "Marca.findByActivo", query = "SELECT m FROM Marca m WHERE m.activo = :activo")})
public class Marca implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_marca")
    private Integer codMarca;
    @Size(max = 150)
    @Column(name = "nombre_marca")
    private String nombreMarca;
    @Column(name = "orden")
    private Integer orden;
    @Column(name = "activo")
    private Boolean activo;
    @OneToMany(mappedBy = "codMarca")
    private List<Vehiculo> vehiculoList;
    @OneToMany(mappedBy = "codMarca")
    private List<Linea> lineaList;

    public Marca() {
    }

    public Marca(Integer codMarca) {
        this.codMarca = codMarca;
    }

    public Integer getCodMarca() {
        return codMarca;
    }

    public void setCodMarca(Integer codMarca) {
        this.codMarca = codMarca;
    }

    public String getNombreMarca() {
        return nombreMarca;
    }

    public void setNombreMarca(String nombreMarca) {
        this.nombreMarca = nombreMarca;
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

    @XmlTransient
    public List<Linea> getLineaList() {
        return lineaList;
    }

    public void setLineaList(List<Linea> lineaList) {
        this.lineaList = lineaList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codMarca != null ? codMarca.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Marca)) {
            return false;
        }
        Marca other = (Marca) object;
        if ((this.codMarca == null && other.codMarca != null) || (this.codMarca != null && !this.codMarca.equals(other.codMarca))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.Marca[ codMarca=" + codMarca + " ]";
        return nombreMarca;
    }
    
}
