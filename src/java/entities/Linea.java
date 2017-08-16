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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "linea")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Linea.findAll", query = "SELECT l FROM Linea l")
    , @NamedQuery(name = "Linea.findByCodLinea", query = "SELECT l FROM Linea l WHERE l.codLinea = :codLinea")
    , @NamedQuery(name = "Linea.findByCodMarca", query = "SELECT l FROM Linea l WHERE l.codMarca = :codMarca ORDER BY l.nombreLinea")
    , @NamedQuery(name = "Linea.findByNombreLinea", query = "SELECT l FROM Linea l WHERE l.nombreLinea = :nombreLinea")
    , @NamedQuery(name = "Linea.findByOrden", query = "SELECT l FROM Linea l WHERE l.orden = :orden")
    , @NamedQuery(name = "Linea.findByActivo", query = "SELECT l FROM Linea l WHERE l.activo = :activo")})
public class Linea implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_linea")
    private Integer codLinea;
    @Size(max = 150)
    @Column(name = "nombre_linea")
    private String nombreLinea;
    @Column(name = "orden")
    private Integer orden;
    @Column(name = "activo")
    private Boolean activo;
    @OneToMany(mappedBy = "codLinea")
    private List<Vehiculo> vehiculoList;
    @JoinColumn(name = "cod_marca", referencedColumnName = "cod_marca")
    @ManyToOne
    private Marca codMarca;

    public Linea() {
    }

    public Linea(Integer codLinea) {
        this.codLinea = codLinea;
    }

    public Integer getCodLinea() {
        return codLinea;
    }

    public void setCodLinea(Integer codLinea) {
        this.codLinea = codLinea;
    }

    public String getNombreLinea() {
        return nombreLinea;
    }

    public void setNombreLinea(String nombreLinea) {
        this.nombreLinea = nombreLinea;
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

    public Marca getCodMarca() {
        return codMarca;
    }

    public void setCodMarca(Marca codMarca) {
        this.codMarca = codMarca;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codLinea != null ? codLinea.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Linea)) {
            return false;
        }
        Linea other = (Linea) object;
        if ((this.codLinea == null && other.codLinea != null) || (this.codLinea != null && !this.codLinea.equals(other.codLinea))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.Linea[ codLinea=" + codLinea + " ]";
        return nombreLinea;
    }
    
}
