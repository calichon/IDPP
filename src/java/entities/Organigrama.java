/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Collection;
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
 * @author Victor
 */
@Entity
@Table(name = "organigrama")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Organigrama.findAll", query = "SELECT o FROM Organigrama o")
    , @NamedQuery(name = "Organigrama.findByCodOrganigrama", query = "SELECT o FROM Organigrama o WHERE o.codOrganigrama = :codOrganigrama")
    , @NamedQuery(name = "Organigrama.findByCodOrganigramaPadre", query = "SELECT o FROM Organigrama o WHERE o.codOrganigramaPadre = :codOrganigramaPadre")
    , @NamedQuery(name = "Organigrama.findByCodStatus", query = "SELECT o FROM Organigrama o WHERE o.codStatus = :codStatus")})
public class Organigrama implements Serializable {

    @OneToMany(mappedBy = "codOrganigrama")
    private Collection<Puesto> puestoCollection;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_organigrama")
    private Integer codOrganigrama;
    @Column(name = "cod_organigrama_padre")
    private Integer codOrganigramaPadre;
    @Size(max = 2)
    @Column(name = "cod_status")
    private String codStatus;
    @JoinColumn(name = "cod_unidad", referencedColumnName = "cod_unidad")
    @ManyToOne
    private Unidad codUnidad;

    public Organigrama() {
    }

    public Organigrama(Integer codOrganigrama) {
        this.codOrganigrama = codOrganigrama;
    }

    public Integer getCodOrganigrama() {
        return codOrganigrama;
    }

    public void setCodOrganigrama(Integer codOrganigrama) {
        this.codOrganigrama = codOrganigrama;
    }

    public Integer getCodOrganigramaPadre() {
        return codOrganigramaPadre;
    }

    public void setCodOrganigramaPadre(Integer codOrganigramaPadre) {
        this.codOrganigramaPadre = codOrganigramaPadre;
    }

    public String getCodStatus() {
        return codStatus;
    }

    public void setCodStatus(String codStatus) {
        this.codStatus = codStatus;
    }

    public Unidad getCodUnidad() {
        return codUnidad;
    }

    public void setCodUnidad(Unidad codUnidad) {
        this.codUnidad = codUnidad;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codOrganigrama != null ? codOrganigrama.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Organigrama)) {
            return false;
        }
        Organigrama other = (Organigrama) object;
        if ((this.codOrganigrama == null && other.codOrganigrama != null) || (this.codOrganigrama != null && !this.codOrganigrama.equals(other.codOrganigrama))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Organigrama[ codOrganigrama=" + codOrganigrama + " ]";
    }

    @XmlTransient
    public Collection<Puesto> getPuestoCollection() {
        return puestoCollection;
    }

    public void setPuestoCollection(Collection<Puesto> puestoCollection) {
        this.puestoCollection = puestoCollection;
    }
    
}
