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
@Table(name = "municipio")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Municipio.findAll", query = "SELECT m FROM Municipio m ORDER BY m.descripcion")
    , @NamedQuery(name = "Municipio.findByCodMunicipio", query = "SELECT m FROM Municipio m WHERE m.codMunicipio = :codMunicipio")
    , @NamedQuery(name = "Municipio.findByCodDepartamento", query = "SELECT m FROM Municipio m WHERE m.codDepartamento = :codDepartamento ORDER BY m.descripcion")
    , @NamedQuery(name = "Municipio.findByDescripcion", query = "SELECT m FROM Municipio m WHERE m.descripcion = :descripcion")
    , @NamedQuery(name = "Municipio.findByCodEstatus", query = "SELECT m FROM Municipio m WHERE m.codEstatus = :codEstatus")
    , @NamedQuery(name = "Municipio.findByCodGeoestadistico", query = "SELECT m FROM Municipio m WHERE m.codGeoestadistico = :codGeoestadistico")
    , @NamedQuery(name = "Municipio.findByClasificacionGeografica", query = "SELECT m FROM Municipio m WHERE m.clasificacionGeografica = :clasificacionGeografica")})
public class Municipio implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_municipio")
    private Integer codMunicipio;
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
    @OneToMany(mappedBy = "codMunicipio")
    private List<DependenciaInstitucion> dependenciaInstitucionList;
    @JoinColumn(name = "cod_departamento", referencedColumnName = "cod_departamento")
    @ManyToOne
    private Departamento codDepartamento;
    @OneToMany(mappedBy = "codMunicipio")
    private List<Sede> sedeList;
    @OneToMany(mappedBy = "codMunicipio")
    private List<Vehiculo> vehiculoList;

    public Municipio() {
    }

    public Municipio(Integer codMunicipio) {
        this.codMunicipio = codMunicipio;
    }

    public Integer getCodMunicipio() {
        return codMunicipio;
    }

    public void setCodMunicipio(Integer codMunicipio) {
        this.codMunicipio = codMunicipio;
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


    public Departamento getCodDepartamento() {
        return codDepartamento;
    }

    public void setCodDepartamento(Departamento codDepartamento) {
        this.codDepartamento = codDepartamento;
    }

    @XmlTransient
    public List<Sede> getSedeList() {
        return sedeList;
    }

    public void setSedeList(List<Sede> sedeList) {
        this.sedeList = sedeList;
    }

    @XmlTransient
    public List<Vehiculo> getVehiculoList() {
        return vehiculoList;
    }

    public void setVehiculoList(List<Vehiculo> vehiculoList) {
        this.vehiculoList = vehiculoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codMunicipio != null ? codMunicipio.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Municipio)) {
            return false;
        }
        Municipio other = (Municipio) object;
        if ((this.codMunicipio == null && other.codMunicipio != null) || (this.codMunicipio != null && !this.codMunicipio.equals(other.codMunicipio))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.Municipio[ codMunicipio=" + codMunicipio + " ]";
        return descripcion;
    }

}
