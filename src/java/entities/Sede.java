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
@Table(name = "sede")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sede.findAll", query = "SELECT s FROM Sede s")
    , @NamedQuery(name = "Sede.findByCodSede", query = "SELECT s FROM Sede s WHERE s.codSede = :codSede")
    , @NamedQuery(name = "Sede.findByCodTipoSede", query = "SELECT s FROM Sede s WHERE s.codTipoSede = :codTipoSede")
    , @NamedQuery(name = "Sede.findByNombreSede", query = "SELECT s FROM Sede s WHERE s.nombreSede = :nombreSede")
    , @NamedQuery(name = "Sede.findByDireccion", query = "SELECT s FROM Sede s WHERE s.direccion = :direccion")
    , @NamedQuery(name = "Sede.findByTelefono1", query = "SELECT s FROM Sede s WHERE s.telefono1 = :telefono1")
    , @NamedQuery(name = "Sede.findByTelefono2", query = "SELECT s FROM Sede s WHERE s.telefono2 = :telefono2")
    , @NamedQuery(name = "Sede.findByCodOrganigrama", query = "SELECT s FROM Sede s WHERE s.codOrganigrama = :codOrganigrama")
    , @NamedQuery(name = "Sede.findByCodEstatus", query = "SELECT s FROM Sede s WHERE s.codEstatus = :codEstatus")
    , @NamedQuery(name = "Sede.findByCodRegionSupervision", query = "SELECT s FROM Sede s WHERE s.codRegionSupervision = :codRegionSupervision")
    , @NamedQuery(name = "Sede.findByCorreoElectronico", query = "SELECT s FROM Sede s WHERE s.correoElectronico = :correoElectronico")
    , @NamedQuery(name = "Sede.findByZona", query = "SELECT s FROM Sede s WHERE s.zona = :zona")})
public class Sede implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_sede")
    private Integer codSede;
    @Column(name = "cod_tipo_sede")
    private Integer codTipoSede;
    @Size(max = 60)
    @Column(name = "nombre_sede")
    private String nombreSede;
    @Size(max = 250)
    @Column(name = "direccion")
    private String direccion;
    @Size(max = 50)
    @Column(name = "telefono_1")
    private String telefono1;
    @Size(max = 50)
    @Column(name = "telefono_2")
    private String telefono2;
    @Column(name = "cod_organigrama")
    private Integer codOrganigrama;
    @Size(max = 2)
    @Column(name = "cod_estatus")
    private String codEstatus;
    @Column(name = "cod_region_supervision")
    private Integer codRegionSupervision;
    @Size(max = 100)
    @Column(name = "correo_electronico")
    private String correoElectronico;
    @Size(max = 2)
    @Column(name = "zona")
    private String zona;
    @OneToMany(mappedBy = "codSede")
    private List<CombustibleComision> combustibleComisionList;
    
    @OneToMany(mappedBy = "codSedeLugarSalida")
    private List<AsignacionVehiculo> asignacionVehiculoList;
    @JoinColumn(name = "cod_municipio", referencedColumnName = "cod_municipio")
    @ManyToOne
    private Municipio codMunicipio;
    @JoinColumn(name = "cod_coordindor", referencedColumnName = "cod_persona")
    @ManyToOne
    private Persona codCoordindor;
    @OneToMany(mappedBy = "codSede")
    private List<Puesto> puestoList;

    public Sede() {
    }

    public Sede(Integer codSede) {
        this.codSede = codSede;
    }

    public Integer getCodSede() {
        return codSede;
    }

    public void setCodSede(Integer codSede) {
        this.codSede = codSede;
    }

    public Integer getCodTipoSede() {
        return codTipoSede;
    }

    public void setCodTipoSede(Integer codTipoSede) {
        this.codTipoSede = codTipoSede;
    }

    public String getNombreSede() {
        return nombreSede;
    }

    public void setNombreSede(String nombreSede) {
        this.nombreSede = nombreSede;
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

    public String getTelefono2() {
        return telefono2;
    }

    public void setTelefono2(String telefono2) {
        this.telefono2 = telefono2;
    }

    public Integer getCodOrganigrama() {
        return codOrganigrama;
    }

    public void setCodOrganigrama(Integer codOrganigrama) {
        this.codOrganigrama = codOrganigrama;
    }

    public String getCodEstatus() {
        return codEstatus;
    }

    public void setCodEstatus(String codEstatus) {
        this.codEstatus = codEstatus;
    }

    public Integer getCodRegionSupervision() {
        return codRegionSupervision;
    }

    public void setCodRegionSupervision(Integer codRegionSupervision) {
        this.codRegionSupervision = codRegionSupervision;
    }

    public String getCorreoElectronico() {
        return correoElectronico;
    }

    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    public String getZona() {
        return zona;
    }

    public void setZona(String zona) {
        this.zona = zona;
    }

    @XmlTransient
    public List<CombustibleComision> getCombustibleComisionList() {
        return combustibleComisionList;
    }

    public void setCombustibleComisionList(List<CombustibleComision> combustibleComisionList) {
        this.combustibleComisionList = combustibleComisionList;
    }

    @XmlTransient
    public List<AsignacionVehiculo> getAsignacionVehiculoList() {
        return asignacionVehiculoList;
    }

    public void setAsignacionVehiculoList(List<AsignacionVehiculo> asignacionVehiculoList) {
        this.asignacionVehiculoList = asignacionVehiculoList;
    }

    public Municipio getCodMunicipio() {
        return codMunicipio;
    }

    public void setCodMunicipio(Municipio codMunicipio) {
        this.codMunicipio = codMunicipio;
    }

    public Persona getCodCoordindor() {
        return codCoordindor;
    }

    public void setCodCoordindor(Persona codCoordindor) {
        this.codCoordindor = codCoordindor;
    }

    @XmlTransient
    public List<Puesto> getPuestoList() {
        return puestoList;
    }

    public void setPuestoList(List<Puesto> puestoList) {
        this.puestoList = puestoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codSede != null ? codSede.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sede)) {
            return false;
        }
        Sede other = (Sede) object;
        if ((this.codSede == null && other.codSede != null) || (this.codSede != null && !this.codSede.equals(other.codSede))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.Sede[ codSede=" + codSede + " ]";
        return nombreSede;
    }
    
}
