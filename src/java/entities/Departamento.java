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
@Table(name = "departamento")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Departamento.findAll", query = "SELECT d FROM Departamento d ORDER BY d.descripcion")
    , @NamedQuery(name = "Departamento.findByCodDepartamento", query = "SELECT d FROM Departamento d WHERE d.codDepartamento = :codDepartamento")
    , @NamedQuery(name = "Departamento.findByDescripcion", query = "SELECT d FROM Departamento d WHERE d.descripcion = :descripcion")
    , @NamedQuery(name = "Departamento.findByCodEstatus", query = "SELECT d FROM Departamento d WHERE d.codEstatus = :codEstatus")
    , @NamedQuery(name = "Departamento.findByCodGeoestadistico", query = "SELECT d FROM Departamento d WHERE d.codGeoestadistico = :codGeoestadistico")
    , @NamedQuery(name = "Departamento.findByClasificacionGeografica", query = "SELECT d FROM Departamento d WHERE d.clasificacionGeografica = :clasificacionGeografica")})
public class Departamento implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_departamento")
    private Integer codDepartamento;
    @Size(max = 50)
    @Column(name = "descripcion")
    private String descripcion;
    @Size(max = 2)
    @Column(name = "cod_estatus")
    private String codEstatus;
    @Column(name = "cod_geoestadistico")
    private Integer codGeoestadistico;
    @Size(max = 2)
    @Column(name = "clasificacion_geografica")
    private String clasificacionGeografica;
    @OneToMany(mappedBy = "codDepartamento")
    private List<DependenciaInstitucion> dependenciaInstitucionList;
    @OneToMany(mappedBy = "codDepartamento")
    private List<Municipio> municipioList;
    @OneToMany(mappedBy = "codDepartamento")
    private List<Vehiculo> vehiculoList;
    @JoinColumn(name = "cod_region", referencedColumnName = "cod_region")
    @ManyToOne
    private Region codRegion;

    public Departamento() {
    }

    public Departamento(Integer codDepartamento) {
        this.codDepartamento = codDepartamento;
    }

    public Integer getCodDepartamento() {
        return codDepartamento;
    }

    public void setCodDepartamento(Integer codDepartamento) {
        this.codDepartamento = codDepartamento;
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

    public Integer getCodGeoestadistico() {
        return codGeoestadistico;
    }

    public void setCodGeoestadistico(Integer codGeoestadistico) {
        this.codGeoestadistico = codGeoestadistico;
    }

    public String getClasificacionGeografica() {
        return clasificacionGeografica;
    }

    public void setClasificacionGeografica(String clasificacionGeografica) {
        this.clasificacionGeografica = clasificacionGeografica;
    }

    @XmlTransient
    public List<DependenciaInstitucion> getDependenciaInstitucionList() {
        return dependenciaInstitucionList;
    }

    public void setDependenciaInstitucionList(List<DependenciaInstitucion> dependenciaInstitucionList) {
        this.dependenciaInstitucionList = dependenciaInstitucionList;
    }

    @XmlTransient
    public List<Municipio> getMunicipioList() {
        return municipioList;
    }

    public void setMunicipioList(List<Municipio> municipioList) {
        this.municipioList = municipioList;
    }

    @XmlTransient
    public List<Vehiculo> getVehiculoList() {
        return vehiculoList;
    }

    public void setVehiculoList(List<Vehiculo> vehiculoList) {
        this.vehiculoList = vehiculoList;
    }

    public Region getCodRegion() {
        return codRegion;
    }

    public void setCodRegion(Region codRegion) {
        this.codRegion = codRegion;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codDepartamento != null ? codDepartamento.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Departamento)) {
            return false;
        }
        Departamento other = (Departamento) object;
        if ((this.codDepartamento == null && other.codDepartamento != null) || (this.codDepartamento != null && !this.codDepartamento.equals(other.codDepartamento))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.Departamento[ codDepartamento=" + codDepartamento + " ]";
        return descripcion;
    }
    
}
