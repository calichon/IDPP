/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.math.BigInteger;
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
@Table(name = "cupon_denominacion")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CuponDenominacion.findAll", query = "SELECT c FROM CuponDenominacion c")
    , @NamedQuery(name = "CuponDenominacion.findByCodCuponDenominacion", query = "SELECT c FROM CuponDenominacion c WHERE c.codCuponDenominacion = :codCuponDenominacion")
    , @NamedQuery(name = "CuponDenominacion.findByDescripcion", query = "SELECT c FROM CuponDenominacion c WHERE c.descripcion = :descripcion")
    , @NamedQuery(name = "CuponDenominacion.findByDenominacion", query = "SELECT c FROM CuponDenominacion c WHERE c.denominacion = :denominacion")})
public class CuponDenominacion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_cupon_denominacion")
    private Integer codCuponDenominacion;
    @Size(max = 100)
    @Column(name = "descripcion")
    private String descripcion;
    @Column(name = "denominacion")
    private BigInteger denominacion;
    @OneToMany(mappedBy = "codCuponDenominancion")
    private List<CombustibleCupon> combustibleCuponList;

    public CuponDenominacion() {
    }

    public CuponDenominacion(Integer codCuponDenominacion) {
        this.codCuponDenominacion = codCuponDenominacion;
    }

    public Integer getCodCuponDenominacion() {
        return codCuponDenominacion;
    }

    public void setCodCuponDenominacion(Integer codCuponDenominacion) {
        this.codCuponDenominacion = codCuponDenominacion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public BigInteger getDenominacion() {
        return denominacion;
    }

    public void setDenominacion(BigInteger denominacion) {
        this.denominacion = denominacion;
    }

    @XmlTransient
    public List<CombustibleCupon> getCombustibleCuponList() {
        return combustibleCuponList;
    }

    public void setCombustibleCuponList(List<CombustibleCupon> combustibleCuponList) {
        this.combustibleCuponList = combustibleCuponList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codCuponDenominacion != null ? codCuponDenominacion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CuponDenominacion)) {
            return false;
        }
        CuponDenominacion other = (CuponDenominacion) object;
        if ((this.codCuponDenominacion == null && other.codCuponDenominacion != null) || (this.codCuponDenominacion != null && !this.codCuponDenominacion.equals(other.codCuponDenominacion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return descripcion;
    }
    
}
