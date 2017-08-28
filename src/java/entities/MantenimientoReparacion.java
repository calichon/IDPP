/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
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
 * @author maria
 */
@Entity
@Table(name = "mantenimiento_reparacion")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "MantenimientoReparacion.findAll", query = "SELECT m FROM MantenimientoReparacion m"),
    @NamedQuery(name = "MantenimientoReparacion.findByCodMantenimientoReparacion", query = "SELECT m FROM MantenimientoReparacion m WHERE m.codMantenimientoReparacion = :codMantenimientoReparacion"),
    @NamedQuery(name = "MantenimientoReparacion.findByCodControlMantRep", query = "SELECT m FROM MantenimientoReparacion m WHERE m.codControlMantRep = :codControlMantRep"),
    @NamedQuery(name = "MantenimientoReparacion.findByMantRep", query = "SELECT m FROM MantenimientoReparacion m WHERE m.mantRep = :mantRep"),
    @NamedQuery(name = "MantenimientoReparacion.findByCodNoConcurso", query = "SELECT m FROM MantenimientoReparacion m WHERE m.codNoConcurso = :codNoConcurso"),
    @NamedQuery(name = "MantenimientoReparacion.findByNoFactura", query = "SELECT m FROM MantenimientoReparacion m WHERE m.noFactura = :noFactura"),
    @NamedQuery(name = "MantenimientoReparacion.findBySerieFactura", query = "SELECT m FROM MantenimientoReparacion m WHERE m.serieFactura = :serieFactura"),
    @NamedQuery(name = "MantenimientoReparacion.findByFechaEmisionFactura", query = "SELECT m FROM MantenimientoReparacion m WHERE m.fechaEmisionFactura = :fechaEmisionFactura"),
    @NamedQuery(name = "MantenimientoReparacion.findByFechaRecepcionFactura", query = "SELECT m FROM MantenimientoReparacion m WHERE m.fechaRecepcionFactura = :fechaRecepcionFactura"),
    @NamedQuery(name = "MantenimientoReparacion.findByFechaEnvioVehiculo", query = "SELECT m FROM MantenimientoReparacion m WHERE m.fechaEnvioVehiculo = :fechaEnvioVehiculo"),
    @NamedQuery(name = "MantenimientoReparacion.findByFechaRecepcionVehiculo", query = "SELECT m FROM MantenimientoReparacion m WHERE m.fechaRecepcionVehiculo = :fechaRecepcionVehiculo"),
    @NamedQuery(name = "MantenimientoReparacion.findByFechaRetornoVehiculo", query = "SELECT m FROM MantenimientoReparacion m WHERE m.fechaRetornoVehiculo = :fechaRetornoVehiculo"),
    @NamedQuery(name = "MantenimientoReparacion.findByDiasMantenimiento", query = "SELECT m FROM MantenimientoReparacion m WHERE m.diasMantenimiento = :diasMantenimiento"),
    @NamedQuery(name = "MantenimientoReparacion.findByTotalMantenimientoReparaQ", query = "SELECT m FROM MantenimientoReparacion m WHERE m.totalMantenimientoReparaQ = :totalMantenimientoReparaQ"),
    @NamedQuery(name = "MantenimientoReparacion.findByPlaca", query = "SELECT m FROM MantenimientoReparacion m WHERE m.placa = :placa"),
    @NamedQuery(name = "MantenimientoReparacion.findByUtilizoSeguro", query = "SELECT m FROM MantenimientoReparacion m WHERE m.utilizoSeguro = :utilizoSeguro"),
    @NamedQuery(name = "MantenimientoReparacion.findByRegistroPago", query = "SELECT m FROM MantenimientoReparacion m WHERE m.registroPago = :registroPago"),
    @NamedQuery(name = "MantenimientoReparacion.findByCodEmpleadoRecepcion", query = "SELECT m FROM MantenimientoReparacion m WHERE m.codEmpleadoRecepcion = :codEmpleadoRecepcion"),
    @NamedQuery(name = "MantenimientoReparacion.findByCodCargoEmpleadoRecepcion", query = "SELECT m FROM MantenimientoReparacion m WHERE m.codCargoEmpleadoRecepcion = :codCargoEmpleadoRecepcion"),
    @NamedQuery(name = "MantenimientoReparacion.findByCodEmpleadoRecepcionFact", query = "SELECT m FROM MantenimientoReparacion m WHERE m.codEmpleadoRecepcionFact = :codEmpleadoRecepcionFact"),
    @NamedQuery(name = "MantenimientoReparacion.findByCodCargoEmpleadoRecepcionFact", query = "SELECT m FROM MantenimientoReparacion m WHERE m.codCargoEmpleadoRecepcionFact = :codCargoEmpleadoRecepcionFact"),
    @NamedQuery(name = "MantenimientoReparacion.findByCodEmpleadoDigita", query = "SELECT m FROM MantenimientoReparacion m WHERE m.codEmpleadoDigita = :codEmpleadoDigita"),
    @NamedQuery(name = "MantenimientoReparacion.findByActivo", query = "SELECT m FROM MantenimientoReparacion m WHERE m.activo = :activo")})
public class MantenimientoReparacion implements Serializable {

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "codMantenimientoReparacion")
    private Collection<DetalleMantRep> detalleMantRepCollection;

    @JoinColumn(name = "cod_vehiculo", referencedColumnName = "cod_vehiculo")
    @ManyToOne
    private Vehiculo codVehiculo;
    @JoinColumn(name = "cod_sede", referencedColumnName = "cod_sede")
    @ManyToOne
    private Sede codSede;
    @JoinColumn(name = "cod_no_concurso", referencedColumnName = "cod_concurso_mantenimiento")
    @ManyToOne
    private ConcursoMantenimientos codNoConcurso;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_mantenimiento_reparacion")
    private Integer codMantenimientoReparacion;
    @Column(name = "cod_control_mant_rep")
    private BigInteger codControlMantRep;
    @Column(name = "mant_rep")
    private BigInteger mantRep;
    @Column(name = "no_factura")
    private BigInteger noFactura;
    @Size(max = 5)
    @Column(name = "serie_factura")
    private String serieFactura;
    @Column(name = "fecha_emision_factura")
    @Temporal(TemporalType.DATE)
    private Date fechaEmisionFactura;
    @Column(name = "fecha_recepcion_factura")
    @Temporal(TemporalType.DATE)
    private Date fechaRecepcionFactura;
    @Column(name = "fecha_envio_vehiculo")
    @Temporal(TemporalType.DATE)
    private Date fechaEnvioVehiculo;
    @Column(name = "fecha_recepcion_vehiculo")
    @Temporal(TemporalType.DATE)
    private Date fechaRecepcionVehiculo;
    @Column(name = "fecha_retorno_vehiculo")
    @Temporal(TemporalType.DATE)
    private Date fechaRetornoVehiculo;
    @Column(name = "dias_mantenimiento")
    private BigInteger diasMantenimiento;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "total_mantenimiento_repara_q")
    private Double totalMantenimientoReparaQ;
    @Size(max = 15)
    @Column(name = "placa")
    private String placa;
    @Column(name = "utilizo_seguro")
    private Short utilizoSeguro;
    @Column(name = "registro_pago")
    private Short registroPago;
    @Column(name = "cod_empleado_recepcion")
    private BigInteger codEmpleadoRecepcion;
    @Column(name = "cod_cargo_empleado_recepcion")
    private BigInteger codCargoEmpleadoRecepcion;
    @Column(name = "cod_empleado_recepcion_fact")
    private BigInteger codEmpleadoRecepcionFact;
    @Column(name = "cod_cargo_empleado_recepcion_fact")
    private BigInteger codCargoEmpleadoRecepcionFact;
    @Column(name = "cod_empleado_digita")
    private BigInteger codEmpleadoDigita;
    @Column(name = "activo")
    private Boolean activo;
    @JoinColumn(name = "cod_tipo_mantenimiento", referencedColumnName = "cod_tipo_mant_rep")
    @ManyToOne
    private TipoMantenimientoReparacion codTipoMantenimiento;
    @JoinColumn(name = "cod_proveedor", referencedColumnName = "cod_proveedor")
    @ManyToOne
    private Proveedores codProveedor;

    public MantenimientoReparacion() {
    }

    public MantenimientoReparacion(Integer codMantenimientoReparacion) {
        this.codMantenimientoReparacion = codMantenimientoReparacion;
    }

    public Integer getCodMantenimientoReparacion() {
        return codMantenimientoReparacion;
    }

    public void setCodMantenimientoReparacion(Integer codMantenimientoReparacion) {
        this.codMantenimientoReparacion = codMantenimientoReparacion;
    }

    public BigInteger getCodControlMantRep() {
        return codControlMantRep;
    }

    public void setCodControlMantRep(BigInteger codControlMantRep) {
        this.codControlMantRep = codControlMantRep;
    }

    public BigInteger getMantRep() {
        return mantRep;
    }

    public void setMantRep(BigInteger mantRep) {
        this.mantRep = mantRep;
    }

    public BigInteger getNoFactura() {
        return noFactura;
    }

    public void setNoFactura(BigInteger noFactura) {
        this.noFactura = noFactura;
    }

    public String getSerieFactura() {
        return serieFactura;
    }

    public void setSerieFactura(String serieFactura) {
        this.serieFactura = serieFactura;
    }

    public Date getFechaEmisionFactura() {
        return fechaEmisionFactura;
    }

    public void setFechaEmisionFactura(Date fechaEmisionFactura) {
        this.fechaEmisionFactura = fechaEmisionFactura;
    }

    public Date getFechaRecepcionFactura() {
        return fechaRecepcionFactura;
    }

    public void setFechaRecepcionFactura(Date fechaRecepcionFactura) {
        this.fechaRecepcionFactura = fechaRecepcionFactura;
    }

    public Date getFechaEnvioVehiculo() {
        return fechaEnvioVehiculo;
    }

    public void setFechaEnvioVehiculo(Date fechaEnvioVehiculo) {
        this.fechaEnvioVehiculo = fechaEnvioVehiculo;
    }

    public Date getFechaRecepcionVehiculo() {
        return fechaRecepcionVehiculo;
    }

    public void setFechaRecepcionVehiculo(Date fechaRecepcionVehiculo) {
        this.fechaRecepcionVehiculo = fechaRecepcionVehiculo;
    }

    public Date getFechaRetornoVehiculo() {
        return fechaRetornoVehiculo;
    }

    public void setFechaRetornoVehiculo(Date fechaRetornoVehiculo) {
        this.fechaRetornoVehiculo = fechaRetornoVehiculo;
    }

    public BigInteger getDiasMantenimiento() {
        return diasMantenimiento;
    }

    public void setDiasMantenimiento(BigInteger diasMantenimiento) {
        this.diasMantenimiento = diasMantenimiento;
    }

    public Double getTotalMantenimientoReparaQ() {
        return totalMantenimientoReparaQ;
    }

    public void setTotalMantenimientoReparaQ(Double totalMantenimientoReparaQ) {
        this.totalMantenimientoReparaQ = totalMantenimientoReparaQ;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public Short getUtilizoSeguro() {
        return utilizoSeguro;
    }

    public void setUtilizoSeguro(Short utilizoSeguro) {
        this.utilizoSeguro = utilizoSeguro;
    }

    public Short getRegistroPago() {
        return registroPago;
    }

    public void setRegistroPago(Short registroPago) {
        this.registroPago = registroPago;
    }

    public BigInteger getCodEmpleadoRecepcion() {
        return codEmpleadoRecepcion;
    }

    public void setCodEmpleadoRecepcion(BigInteger codEmpleadoRecepcion) {
        this.codEmpleadoRecepcion = codEmpleadoRecepcion;
    }

    public BigInteger getCodCargoEmpleadoRecepcion() {
        return codCargoEmpleadoRecepcion;
    }

    public void setCodCargoEmpleadoRecepcion(BigInteger codCargoEmpleadoRecepcion) {
        this.codCargoEmpleadoRecepcion = codCargoEmpleadoRecepcion;
    }

    public BigInteger getCodEmpleadoRecepcionFact() {
        return codEmpleadoRecepcionFact;
    }

    public void setCodEmpleadoRecepcionFact(BigInteger codEmpleadoRecepcionFact) {
        this.codEmpleadoRecepcionFact = codEmpleadoRecepcionFact;
    }

    public BigInteger getCodCargoEmpleadoRecepcionFact() {
        return codCargoEmpleadoRecepcionFact;
    }

    public void setCodCargoEmpleadoRecepcionFact(BigInteger codCargoEmpleadoRecepcionFact) {
        this.codCargoEmpleadoRecepcionFact = codCargoEmpleadoRecepcionFact;
    }

    public BigInteger getCodEmpleadoDigita() {
        return codEmpleadoDigita;
    }

    public void setCodEmpleadoDigita(BigInteger codEmpleadoDigita) {
        this.codEmpleadoDigita = codEmpleadoDigita;
    }

    public Boolean getActivo() {
        return activo;
    }

    public void setActivo(Boolean activo) {
        this.activo = activo;
    }

    public TipoMantenimientoReparacion getCodTipoMantenimiento() {
        return codTipoMantenimiento;
    }

    public void setCodTipoMantenimiento(TipoMantenimientoReparacion codTipoMantenimiento) {
        this.codTipoMantenimiento = codTipoMantenimiento;
    }

    public Proveedores getCodProveedor() {
        return codProveedor;
    }

    public void setCodProveedor(Proveedores codProveedor) {
        this.codProveedor = codProveedor;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codMantenimientoReparacion != null ? codMantenimientoReparacion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MantenimientoReparacion)) {
            return false;
        }
        MantenimientoReparacion other = (MantenimientoReparacion) object;
        if ((this.codMantenimientoReparacion == null && other.codMantenimientoReparacion != null) || (this.codMantenimientoReparacion != null && !this.codMantenimientoReparacion.equals(other.codMantenimientoReparacion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.MantenimientoReparacion[ codMantenimientoReparacion=" + codMantenimientoReparacion + " ]";
    }

    public Vehiculo getCodVehiculo() {
        return codVehiculo;
    }

    public void setCodVehiculo(Vehiculo codVehiculo) {
        this.codVehiculo = codVehiculo;
    }

    public Sede getCodSede() {
        return codSede;
    }

    public void setCodSede(Sede codSede) {
        this.codSede = codSede;
    }

    public ConcursoMantenimientos getCodNoConcurso() {
        return codNoConcurso;
    }

    public void setCodNoConcurso(ConcursoMantenimientos codNoConcurso) {
        this.codNoConcurso = codNoConcurso;
    }

    @XmlTransient
    public Collection<DetalleMantRep> getDetalleMantRepCollection() {
        return detalleMantRepCollection;
    }

    public void setDetalleMantRepCollection(Collection<DetalleMantRep> detalleMantRepCollection) {
        this.detalleMantRepCollection = detalleMantRepCollection;
    }
    
}
