/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.math.BigInteger;
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
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Carlos
 */
@Entity
@Table(name = "combustible_cupon")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CombustibleCupon.findAll", query = "SELECT c FROM CombustibleCupon c")
    , @NamedQuery(name = "CombustibleCupon.findByCodCombustibleCupon", query = "SELECT c FROM CombustibleCupon c WHERE c.codCombustibleCupon = :codCombustibleCupon")
    , @NamedQuery(name = "CombustibleCupon.findByCantidadCupones", query = "SELECT c FROM CombustibleCupon c WHERE c.cantidadCupones = :cantidadCupones")
    , @NamedQuery(name = "CombustibleCupon.findByNumeroCuponInicial", query = "SELECT c FROM CombustibleCupon c WHERE c.numeroCuponInicial = :numeroCuponInicial")
    , @NamedQuery(name = "CombustibleCupon.findByNumeroCuponFinal", query = "SELECT c FROM CombustibleCupon c WHERE c.numeroCuponFinal = :numeroCuponFinal")
    , @NamedQuery(name = "CombustibleCupon.findBySumaTotal", query = "SELECT c FROM CombustibleCupon c WHERE c.sumaTotal = :sumaTotal")})
public class CombustibleCupon implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_combustible_cupon")
    private Integer codCombustibleCupon;
    @Column(name = "cantidad_cupones")
    private Integer cantidadCupones;
    @Column(name = "numero_cupon_inicial")
    private BigInteger numeroCuponInicial;
    @Column(name = "numero_cupon_final")
    private BigInteger numeroCuponFinal;
    @Column(name = "suma_total")
    private BigInteger sumaTotal;
    @JoinColumn(name = "cod_combustible_comision", referencedColumnName = "cod_combustible_comision")
    @ManyToOne
    private CombustibleComision codCombustibleComision;
    @JoinColumn(name = "cod_cupon_denominancion", referencedColumnName = "cod_cupon_denominacion")
    @ManyToOne
    private CuponDenominacion codCuponDenominancion;

    public CombustibleCupon() {
    }

    public CombustibleCupon(Integer codCombustibleCupon) {
        this.codCombustibleCupon = codCombustibleCupon;
    }

    public Integer getCodCombustibleCupon() {
        return codCombustibleCupon;
    }

    public void setCodCombustibleCupon(Integer codCombustibleCupon) {
        this.codCombustibleCupon = codCombustibleCupon;
    }

    public Integer getCantidadCupones() {
        return cantidadCupones;
    }

    public void setCantidadCupones(Integer cantidadCupones) {
        this.cantidadCupones = cantidadCupones;
    }

    public BigInteger getNumeroCuponInicial() {
        return numeroCuponInicial;
    }

    public void setNumeroCuponInicial(BigInteger numeroCuponInicial) {
        this.numeroCuponInicial = numeroCuponInicial;
    }

    public BigInteger getNumeroCuponFinal() {
        return numeroCuponFinal;
    }

    public void setNumeroCuponFinal(BigInteger numeroCuponFinal) {
        this.numeroCuponFinal = numeroCuponFinal;
    }

    public BigInteger getSumaTotal() {
        return sumaTotal;
    }

    public void setSumaTotal(BigInteger sumaTotal) {
        this.sumaTotal = sumaTotal;
    }

    public CombustibleComision getCodCombustibleComision() {
        return codCombustibleComision;
    }

    public void setCodCombustibleComision(CombustibleComision codCombustibleComision) {
        this.codCombustibleComision = codCombustibleComision;
    }

    public CuponDenominacion getCodCuponDenominancion() {
        return codCuponDenominancion;
    }

    public void setCodCuponDenominancion(CuponDenominacion codCuponDenominancion) {
        this.codCuponDenominancion = codCuponDenominancion;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codCombustibleCupon != null ? codCombustibleCupon.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CombustibleCupon)) {
            return false;
        }
        CombustibleCupon other = (CombustibleCupon) object;
        if ((this.codCombustibleCupon == null && other.codCombustibleCupon != null) || (this.codCombustibleCupon != null && !this.codCombustibleCupon.equals(other.codCombustibleCupon))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.CombustibleCupon[ codCombustibleCupon=" + codCombustibleCupon + " ]";
    }
    
}
