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
@Table(name = "tipo_dependencia_institucion")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TipoDependenciaInstitucion.findAll", query = "SELECT t FROM TipoDependenciaInstitucion t")
    , @NamedQuery(name = "TipoDependenciaInstitucion.findByCodTipoDependenciaInstitucion", query = "SELECT t FROM TipoDependenciaInstitucion t WHERE t.codTipoDependenciaInstitucion = :codTipoDependenciaInstitucion")
    , @NamedQuery(name = "TipoDependenciaInstitucion.findByDescripcion", query = "SELECT t FROM TipoDependenciaInstitucion t WHERE t.descripcion = :descripcion")
    , @NamedQuery(name = "TipoDependenciaInstitucion.findByCodEstatus", query = "SELECT t FROM TipoDependenciaInstitucion t WHERE t.codEstatus = :codEstatus")
    , @NamedQuery(name = "TipoDependenciaInstitucion.findByAbreviatura", query = "SELECT t FROM TipoDependenciaInstitucion t WHERE t.abreviatura = :abreviatura")})
public class TipoDependenciaInstitucion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_tipo_dependencia_institucion")
    private Integer codTipoDependenciaInstitucion;
    @Size(max = 50)
    @Column(name = "descripcion")
    private String descripcion;
    @Size(max = 2)
    @Column(name = "cod_estatus")
    private String codEstatus;
    @Size(max = 30)
    @Column(name = "abreviatura")
    private String abreviatura;
    @OneToMany(mappedBy = "codTipoDependenciaInstitucion")
    private List<DependenciaInstitucion> dependenciaInstitucionList;

    public TipoDependenciaInstitucion() {
    }

    public TipoDependenciaInstitucion(Integer codTipoDependenciaInstitucion) {
        this.codTipoDependenciaInstitucion = codTipoDependenciaInstitucion;
    }

    public Integer getCodTipoDependenciaInstitucion() {
        return codTipoDependenciaInstitucion;
    }

    public void setCodTipoDependenciaInstitucion(Integer codTipoDependenciaInstitucion) {
        this.codTipoDependenciaInstitucion = codTipoDependenciaInstitucion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCodEstatus() {
        return codEstatus;
    }

    public void setCodEstatus(String codEstatus) {
        this.codEstatus = codEstatus;
    }

    public String getAbreviatura() {
        return abreviatura;
    }

    public void setAbreviatura(String abreviatura) {
        this.abreviatura = abreviatura;
    }

    @XmlTransient
    public List<DependenciaInstitucion> getDependenciaInstitucionList() {
        return dependenciaInstitucionList;
    }

    public void setDependenciaInstitucionList(List<DependenciaInstitucion> dependenciaInstitucionList) {
        this.dependenciaInstitucionList = dependenciaInstitucionList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codTipoDependenciaInstitucion != null ? codTipoDependenciaInstitucion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TipoDependenciaInstitucion)) {
            return false;
        }
        TipoDependenciaInstitucion other = (TipoDependenciaInstitucion) object;
        if ((this.codTipoDependenciaInstitucion == null && other.codTipoDependenciaInstitucion != null) || (this.codTipoDependenciaInstitucion != null && !this.codTipoDependenciaInstitucion.equals(other.codTipoDependenciaInstitucion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.TipoDependenciaInstitucion[ codTipoDependenciaInstitucion=" + codTipoDependenciaInstitucion + " ]";
    }
    
}
