/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Carlos
 */
@Entity
@Table(name = "dependencia_institucion")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DependenciaInstitucion.findAll", query = "SELECT d FROM DependenciaInstitucion d")
    , @NamedQuery(name = "DependenciaInstitucion.findByCodDependenciaInstitucion", query = "SELECT d FROM DependenciaInstitucion d WHERE d.codDependenciaInstitucion = :codDependenciaInstitucion")
    , @NamedQuery(name = "DependenciaInstitucion.findByCodInstitucion", query = "SELECT d FROM DependenciaInstitucion d WHERE d.codInstitucion = :codInstitucion")
    , @NamedQuery(name = "DependenciaInstitucion.findByCodEstatus", query = "SELECT d FROM DependenciaInstitucion d WHERE d.codEstatus = :codEstatus")
    , @NamedQuery(name = "DependenciaInstitucion.findByNombre", query = "SELECT d FROM DependenciaInstitucion d WHERE d.nombre = :nombre")
    , @NamedQuery(name = "DependenciaInstitucion.findByDireccion", query = "SELECT d FROM DependenciaInstitucion d WHERE d.direccion = :direccion")
    , @NamedQuery(name = "DependenciaInstitucion.findByTelefono1", query = "SELECT d FROM DependenciaInstitucion d WHERE d.telefono1 = :telefono1")
    , @NamedQuery(name = "DependenciaInstitucion.findByCodTipoOrgano", query = "SELECT d FROM DependenciaInstitucion d WHERE d.codTipoOrgano = :codTipoOrgano")
    , @NamedQuery(name = "DependenciaInstitucion.findByCodigoCausa", query = "SELECT d FROM DependenciaInstitucion d WHERE d.codigoCausa = :codigoCausa")
    , @NamedQuery(name = "DependenciaInstitucion.findByFechaSistema", query = "SELECT d FROM DependenciaInstitucion d WHERE d.fechaSistema = :fechaSistema")})
public class DependenciaInstitucion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_dependencia_institucion")
    private Integer codDependenciaInstitucion;
    @Column(name = "cod_institucion")
    private Integer codInstitucion;
    @Size(max = 2)
    @Column(name = "cod_estatus")
    private String codEstatus;
    @Size(max = 100)
    @Column(name = "nombre")
    private String nombre;
    @Size(max = 150)
    @Column(name = "direccion")
    private String direccion;
    @Size(max = 50)
    @Column(name = "telefono_1")
    private String telefono1;
    @Column(name = "cod_tipo_organo")
    private Integer codTipoOrgano;
    @Column(name = "codigo_causa")
    private Integer codigoCausa;
    @Column(name = "fecha_sistema")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaSistema;
    @JoinColumn(name = "cod_departamento", referencedColumnName = "cod_departamento")
    @ManyToOne
    private Departamento codDepartamento;
    @JoinColumn(name = "cod_municipio", referencedColumnName = "cod_municipio")
    @ManyToOne
    private Municipio codMunicipio;
    @JoinColumn(name = "cod_tipo_dependencia_institucion", referencedColumnName = "cod_tipo_dependencia_institucion")
    @ManyToOne
    private TipoDependenciaInstitucion codTipoDependenciaInstitucion;
    @OneToMany(mappedBy = "codDependenciaInstitucionJuzgado")
    private List<AsignacionVehiculo> asignacionVehiculoList;
    @OneToMany(mappedBy = "codDependenciaInstitucion")
    private List<KilometrajeComision> kilometrajeComisionList;

    public DependenciaInstitucion() {
    }

    public DependenciaInstitucion(Integer codDependenciaInstitucion) {
        this.codDependenciaInstitucion = codDependenciaInstitucion;
    }

    public Integer getCodDependenciaInstitucion() {
        return codDependenciaInstitucion;
    }

    public void setCodDependenciaInstitucion(Integer codDependenciaInstitucion) {
        this.codDependenciaInstitucion = codDependenciaInstitucion;
    }

    public Integer getCodInstitucion() {
        return codInstitucion;
    }

    public void setCodInstitucion(Integer codInstitucion) {
        this.codInstitucion = codInstitucion;
    }

    public String getCodEstatus() {
        return codEstatus;
    }

    public void setCodEstatus(String codEstatus) {
        this.codEstatus = codEstatus;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono1() {
        return telefono1;
    }

    public void setTelefono1(String telefono1) {
        this.telefono1 = telefono1;
    }

    public Integer getCodTipoOrgano() {
        return codTipoOrgano;
    }

    public void setCodTipoOrgano(Integer codTipoOrgano) {
        this.codTipoOrgano = codTipoOrgano;
    }

    public Integer getCodigoCausa() {
        return codigoCausa;
    }

    public void setCodigoCausa(Integer codigoCausa) {
        this.codigoCausa = codigoCausa;
    }

    public Date getFechaSistema() {
        return fechaSistema;
    }

    public void setFechaSistema(Date fechaSistema) {
        this.fechaSistema = fechaSistema;
    }

    public Departamento getCodDepartamento() {
        return codDepartamento;
    }

    public void setCodDepartamento(Departamento codDepartamento) {
        this.codDepartamento = codDepartamento;
    }

    public Municipio getCodMunicipio() {
        return codMunicipio;
    }

    public void setCodMunicipio(Municipio codMunicipio) {
        this.codMunicipio = codMunicipio;
    }

    public TipoDependenciaInstitucion getCodTipoDependenciaInstitucion() {
        return codTipoDependenciaInstitucion;
    }

    public void setCodTipoDependenciaInstitucion(TipoDependenciaInstitucion codTipoDependenciaInstitucion) {
        this.codTipoDependenciaInstitucion = codTipoDependenciaInstitucion;
    }

    @XmlTransient
    public List<AsignacionVehiculo> getAsignacionVehiculoList() {
        return asignacionVehiculoList;
    }

    public void setAsignacionVehiculoList(List<AsignacionVehiculo> asignacionVehiculoList) {
        this.asignacionVehiculoList = asignacionVehiculoList;
    }

    @XmlTransient
    public List<KilometrajeComision> getKilometrajeComisionList() {
        return kilometrajeComisionList;
    }

    public void setKilometrajeComisionList(List<KilometrajeComision> kilometrajeComisionList) {
        this.kilometrajeComisionList = kilometrajeComisionList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codDependenciaInstitucion != null ? codDependenciaInstitucion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DependenciaInstitucion)) {
            return false;
        }
        DependenciaInstitucion other = (DependenciaInstitucion) object;
        if ((this.codDependenciaInstitucion == null && other.codDependenciaInstitucion != null) || (this.codDependenciaInstitucion != null && !this.codDependenciaInstitucion.equals(other.codDependenciaInstitucion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.DependenciaInstitucion[ codDependenciaInstitucion=" + codDependenciaInstitucion + " ]";
        return nombre;
    }
    
}
