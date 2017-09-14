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
@Table(name = "pais")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Pais.findAll", query = "SELECT p FROM Pais p")
    , @NamedQuery(name = "Pais.findByCodPais", query = "SELECT p FROM Pais p WHERE p.codPais = :codPais")
    , @NamedQuery(name = "Pais.findByNombrePais", query = "SELECT p FROM Pais p WHERE p.nombrePais = :nombrePais")
    , @NamedQuery(name = "Pais.findByGentilicio", query = "SELECT p FROM Pais p WHERE p.gentilicio = :gentilicio")
    , @NamedQuery(name = "Pais.findByCodigoTelefonico", query = "SELECT p FROM Pais p WHERE p.codigoTelefonico = :codigoTelefonico")
    , @NamedQuery(name = "Pais.findByCodigoIso", query = "SELECT p FROM Pais p WHERE p.codigoIso = :codigoIso")
    , @NamedQuery(name = "Pais.findByCodEstatus", query = "SELECT p FROM Pais p WHERE p.codEstatus = :codEstatus")})
public class Pais implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_pais")
    private Integer codPais;
    @Size(max = 60)
    @Column(name = "nombre_pais")
    private String nombrePais;
    @Size(max = 60)
    @Column(name = "gentilicio")
    private String gentilicio;
    @Size(max = 3)
    @Column(name = "codigo_telefonico")
    private String codigoTelefonico;
    @Size(max = 3)
    @Column(name = "codigo_iso")
    private String codigoIso;
    @Size(max = 2)
    @Column(name = "cod_estatus")
    private String codEstatus;


    public Pais() {
    }

    public Pais(Integer codPais) {
        this.codPais = codPais;
    }

    public Integer getCodPais() {
        return codPais;
    }

    public void setCodPais(Integer codPais) {
        this.codPais = codPais;
    }

    public String getNombrePais() {
        return nombrePais;
    }

    public void setNombrePais(String nombrePais) {
        this.nombrePais = nombrePais;
    }

    public String getGentilicio() {
        return gentilicio;
    }

    public void setGentilicio(String gentilicio) {
        this.gentilicio = gentilicio;
    }

    public String getCodigoTelefonico() {
        return codigoTelefonico;
    }

    public void setCodigoTelefonico(String codigoTelefonico) {
        this.codigoTelefonico = codigoTelefonico;
    }

    public String getCodigoIso() {
        return codigoIso;
    }

    public void setCodigoIso(String codigoIso) {
        this.codigoIso = codigoIso;
    }

    public String getCodEstatus() {
        return codEstatus;
    }

    public void setCodEstatus(String codEstatus) {
        this.codEstatus = codEstatus;
    }


    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codPais != null ? codPais.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Pais)) {
            return false;
        }
        Pais other = (Pais) object;
        if ((this.codPais == null && other.codPais != null) || (this.codPais != null && !this.codPais.equals(other.codPais))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.Pais[ codPais=" + codPais + " ]";
        return nombrePais;
    }

}
