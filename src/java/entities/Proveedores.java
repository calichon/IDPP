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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author maria
 */
@Entity
@Table(name = "proveedores")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Proveedores.findAll", query = "SELECT p FROM Proveedores p"),
    @NamedQuery(name = "Proveedores.findByCodProveedor", query = "SELECT p FROM Proveedores p WHERE p.codProveedor = :codProveedor"),
    @NamedQuery(name = "Proveedores.findByNit", query = "SELECT p FROM Proveedores p WHERE p.nit = :nit"),
    @NamedQuery(name = "Proveedores.findByDireccion", query = "SELECT p FROM Proveedores p WHERE p.direccion = :direccion"),
    @NamedQuery(name = "Proveedores.findByTelefono", query = "SELECT p FROM Proveedores p WHERE p.telefono = :telefono"),
    @NamedQuery(name = "Proveedores.findByNombreContacto", query = "SELECT p FROM Proveedores p WHERE p.nombreContacto = :nombreContacto"),
    @NamedQuery(name = "Proveedores.findByActivo", query = "SELECT p FROM Proveedores p WHERE p.activo = :activo")})
public class Proveedores implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_proveedor")
    private Integer codProveedor;
    @Size(max = 30)
    @Column(name = "nit")
    private String nit;
    @Size(max = 50)
    @Column(name = "direccion")
    private String direccion;
    @Size(max = 150)
    @Column(name = "telefono")
    private String telefono;
    @Size(max = 350)
    @Column(name = "nombre_contacto")
    private String nombreContacto;
    @Column(name = "activo")
    private Boolean activo;
    @OneToMany(mappedBy = "codProveedor")
    private Collection<MantenimientoReparacion> mantenimientoReparacionCollection;

    public Proveedores() {
    }

    public Proveedores(Integer codProveedor) {
        this.codProveedor = codProveedor;
    }

    public Integer getCodProveedor() {
        return codProveedor;
    }

    public void setCodProveedor(Integer codProveedor) {
        this.codProveedor = codProveedor;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getNombreContacto() {
        return nombreContacto;
    }

    public void setNombreContacto(String nombreContacto) {
        this.nombreContacto = nombreContacto;
    }

    public Boolean getActivo() {
        return activo;
    }

    public void setActivo(Boolean activo) {
        this.activo = activo;
    }

    @XmlTransient
    public Collection<MantenimientoReparacion> getMantenimientoReparacionCollection() {
        return mantenimientoReparacionCollection;
    }

    public void setMantenimientoReparacionCollection(Collection<MantenimientoReparacion> mantenimientoReparacionCollection) {
        this.mantenimientoReparacionCollection = mantenimientoReparacionCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codProveedor != null ? codProveedor.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Proveedores)) {
            return false;
        }
        Proveedores other = (Proveedores) object;
        if ((this.codProveedor == null && other.codProveedor != null) || (this.codProveedor != null && !this.codProveedor.equals(other.codProveedor))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Proveedores[ codProveedor=" + codProveedor + " ]";
    }
    
}
