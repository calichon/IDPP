/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.math.BigInteger;
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
@Table(name = "vehiculo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Vehiculo.findAll", query = "SELECT v FROM Vehiculo v")
    //, @NamedQuery(name = "Vehiculo.findByDate", query = "Select DISTINCT(v) from Vehiculo v left outer join v.asignacionVehiculoPilotoList avp left join avp.codAsignacionVehiculo av WHERE (NOT(:fecha_inicio <= av.fechaHoraRetornoVehiculo AND av.fechaHoraUsoVehiculo <= :fecha_fin) OR av.fechaHoraRetornoVehiculo IS NULL)  ORDER BY v.codVehiculo")
    , @NamedQuery(name = "Vehiculo.findByDate", query = "Select DISTINCT(v) \n" +
"from Vehiculo v \n" +
"left outer join v.asignacionVehiculoPilotoList avp \n" +
"left join avp.codAsignacionVehiculo av \n" +
"WHERE\n" +
"v.codVehiculo NOT IN (\n" +
"    Select v.codVehiculo \n" +
"    from Vehiculo v \n" +
"    left outer join v.asignacionVehiculoPilotoList avp \n" +
"    left join avp.codAsignacionVehiculo av \n" +
"    WHERE\n" +
"    ((:fecha_inicio <= av.fechaHoraRetornoVehiculo AND av.fechaHoraUsoVehiculo <= :fecha_fin AND avp.estatusAsignacion='A') AND av.fechaHoraRetornoVehiculo IS NOT NULL)  \n" +
") \n" +
"ORDER BY v.codVehiculo")
    //, @NamedQuery(name = "Vehiculo.findByDateAndId", query = "Select DISTINCT(v) from Vehiculo v left outer join v.asignacionVehiculoPilotoList avp left join avp.codAsignacionVehiculo av WHERE (NOT(:fecha_inicio <= av.fechaHoraRetornoVehiculo AND av.fechaHoraUsoVehiculo <= :fecha_fin) OR av.fechaHoraRetornoVehiculo IS NULL) OR av.codAsignacionVehiculo = :codAsignacionVehiculo  ORDER BY v.codVehiculo")
    , @NamedQuery(name = "Vehiculo.findByDateAndId", query = "Select DISTINCT(v) \n" +
"from Vehiculo v \n" +
"left outer join v.asignacionVehiculoPilotoList avp \n" +
"left join avp.codAsignacionVehiculo av \n" +
"WHERE\n" +
"v.codVehiculo NOT IN (\n" +
"    Select v.codVehiculo\n" +
"    from Vehiculo v \n" +
"    left outer join v.asignacionVehiculoPilotoList avp \n" +
"    left join avp.codAsignacionVehiculo av \n" +
"    WHERE\n" +
"    ((:fecha_inicio <= av.fechaHoraRetornoVehiculo AND av.fechaHoraUsoVehiculo <= :fecha_fin AND avp.estatusAsignacion='A') AND av.fechaHoraRetornoVehiculo IS NOT NULL AND  av.codAsignacionVehiculo != :codAsignacionVehiculo)  \n" +
") \n" +
"ORDER BY v.codVehiculo")
        //WHERE NOT(:fecha_inicio <= av.fechaHoraRetornoVehiculo AND av.fechaHoraUsoVehiculo <= :fecha_fin)
    , @NamedQuery(name = "Vehiculo.findByCodVehiculo", query = "SELECT v FROM Vehiculo v WHERE v.codVehiculo = :codVehiculo")
    , @NamedQuery(name = "Vehiculo.findByPlaca", query = "SELECT v FROM Vehiculo v WHERE v.placa = :placa")
    , @NamedQuery(name = "Vehiculo.findByNit", query = "SELECT v FROM Vehiculo v WHERE v.nit = :nit")
    , @NamedQuery(name = "Vehiculo.findByPoliza", query = "SELECT v FROM Vehiculo v WHERE v.poliza = :poliza")
    , @NamedQuery(name = "Vehiculo.findByDireccion", query = "SELECT v FROM Vehiculo v WHERE v.direccion = :direccion")
    , @NamedQuery(name = "Vehiculo.findByNombre", query = "SELECT v FROM Vehiculo v WHERE v.nombre = :nombre")
    , @NamedQuery(name = "Vehiculo.findByModelo", query = "SELECT v FROM Vehiculo v WHERE v.modelo = :modelo")
    , @NamedQuery(name = "Vehiculo.findByChasis", query = "SELECT v FROM Vehiculo v WHERE v.chasis = :chasis")
    , @NamedQuery(name = "Vehiculo.findByVin", query = "SELECT v FROM Vehiculo v WHERE v.vin = :vin")
    , @NamedQuery(name = "Vehiculo.findByCentimetrosCubicos", query = "SELECT v FROM Vehiculo v WHERE v.centimetrosCubicos = :centimetrosCubicos")
    , @NamedQuery(name = "Vehiculo.findByCilindros", query = "SELECT v FROM Vehiculo v WHERE v.cilindros = :cilindros")
    , @NamedQuery(name = "Vehiculo.findByToneladas", query = "SELECT v FROM Vehiculo v WHERE v.toneladas = :toneladas")
    , @NamedQuery(name = "Vehiculo.findByTitulo", query = "SELECT v FROM Vehiculo v WHERE v.titulo = :titulo")
    , @NamedQuery(name = "Vehiculo.findByTarjetaCirculacion", query = "SELECT v FROM Vehiculo v WHERE v.tarjetaCirculacion = :tarjetaCirculacion")
    , @NamedQuery(name = "Vehiculo.findByNoAsientos", query = "SELECT v FROM Vehiculo v WHERE v.noAsientos = :noAsientos")
    , @NamedQuery(name = "Vehiculo.findByNoInventarioRegistro", query = "SELECT v FROM Vehiculo v WHERE v.noInventarioRegistro = :noInventarioRegistro")
    , @NamedQuery(name = "Vehiculo.findByNoMotor", query = "SELECT v FROM Vehiculo v WHERE v.noMotor = :noMotor")
    , @NamedQuery(name = "Vehiculo.findByOrden", query = "SELECT v FROM Vehiculo v WHERE v.orden = :orden")
    , @NamedQuery(name = "Vehiculo.findByActivo", query = "SELECT v FROM Vehiculo v WHERE v.activo = :activo")})
public class Vehiculo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_vehiculo")
    private Integer codVehiculo;
    @Size(max = 15)
    @Column(name = "placa")
    private String placa;
    @Size(max = 15)
    @Column(name = "nit")
    private String nit;
    @Column(name = "poliza")
    private BigInteger poliza;
    @Size(max = 250)
    @Column(name = "direccion")
    private String direccion;
    @Size(max = 250)
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "modelo")
    private Integer modelo;
    @Size(max = 20)
    @Column(name = "chasis")
    private String chasis;
    @Size(max = 20)
    @Column(name = "vin")
    private String vin;
    @Column(name = "centimetros_cubicos")
    private Integer centimetrosCubicos;
    @Column(name = "cilindros")
    private Integer cilindros;
    @Column(name = "toneladas")
    private Integer toneladas;
    @Size(max = 100)
    @Column(name = "titulo")
    private String titulo;
    @Size(max = 100)
    @Column(name = "tarjeta_circulacion")
    private String tarjetaCirculacion;
    @Column(name = "no_asientos")
    private Integer noAsientos;
    @Size(max = 250)
    @Column(name = "no_inventario_registro")
    private String noInventarioRegistro;
    @Size(max = 100)
    @Column(name = "no_motor")
    private String noMotor;
    @Column(name = "orden")
    private Integer orden;
    @Column(name = "activo")
    private Boolean activo;
    @OneToMany(mappedBy = "codVehiculo")
    private List<CombustibleComision> combustibleComisionList;
    @OneToMany(mappedBy = "codVehiculo")
    private List<Imagen> imagenList;
    @JoinColumn(name = "cod_color", referencedColumnName = "cod_color")
    @ManyToOne
    private Color codColor;
    @JoinColumn(name = "cod_departamento", referencedColumnName = "cod_departamento")
    @ManyToOne
    private Departamento codDepartamento;
    @JoinColumn(name = "cod_linea", referencedColumnName = "cod_linea")
    @ManyToOne
    private Linea codLinea;
    @JoinColumn(name = "cod_marca", referencedColumnName = "cod_marca")
    @ManyToOne
    private Marca codMarca;
    @JoinColumn(name = "cod_municipio", referencedColumnName = "cod_municipio")
    @ManyToOne
    private Municipio codMunicipio;
    @JoinColumn(name = "cod_persona_asignacion", referencedColumnName = "cod_persona")
    @ManyToOne
    private Persona codPersonaAsignacion;
    @JoinColumn(name = "cod_pueston", referencedColumnName = "cod_puesto")
    @ManyToOne
    private Puesto codPueston;
    @JoinColumn(name = "cod_tipo_tipo", referencedColumnName = "cod_tipo_tipo")
    @ManyToOne
    private TipoTipo codTipoTipo;
    @JoinColumn(name = "cod_tipo_uso", referencedColumnName = "cod_tipo_uso")
    @ManyToOne
    private TipoUso codTipoUso;
    @OneToMany(mappedBy = "codVehiculo")
    private List<KilometrajeComision> kilometrajeComisionList;
    @OneToMany(mappedBy = "codVehiculo")
    private List<AsignacionVehiculoPiloto> asignacionVehiculoPilotoList;

    public Vehiculo() {
    }

    public Vehiculo(Integer codVehiculo) {
        this.codVehiculo = codVehiculo;
    }

    public Integer getCodVehiculo() {
        return codVehiculo;
    }

    public void setCodVehiculo(Integer codVehiculo) {
        this.codVehiculo = codVehiculo;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public BigInteger getPoliza() {
        return poliza;
    }

    public void setPoliza(BigInteger poliza) {
        this.poliza = poliza;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getModelo() {
        return modelo;
    }

    public void setModelo(Integer modelo) {
        this.modelo = modelo;
    }

    public String getChasis() {
        return chasis;
    }

    public void setChasis(String chasis) {
        this.chasis = chasis;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public Integer getCentimetrosCubicos() {
        return centimetrosCubicos;
    }

    public void setCentimetrosCubicos(Integer centimetrosCubicos) {
        this.centimetrosCubicos = centimetrosCubicos;
    }

    public Integer getCilindros() {
        return cilindros;
    }

    public void setCilindros(Integer cilindros) {
        this.cilindros = cilindros;
    }

    public Integer getToneladas() {
        return toneladas;
    }

    public void setToneladas(Integer toneladas) {
        this.toneladas = toneladas;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTarjetaCirculacion() {
        return tarjetaCirculacion;
    }

    public void setTarjetaCirculacion(String tarjetaCirculacion) {
        this.tarjetaCirculacion = tarjetaCirculacion;
    }

    public Integer getNoAsientos() {
        return noAsientos;
    }

    public void setNoAsientos(Integer noAsientos) {
        this.noAsientos = noAsientos;
    }

    public String getNoInventarioRegistro() {
        return noInventarioRegistro;
    }

    public void setNoInventarioRegistro(String noInventarioRegistro) {
        this.noInventarioRegistro = noInventarioRegistro;
    }

    public String getNoMotor() {
        return noMotor;
    }

    public void setNoMotor(String noMotor) {
        this.noMotor = noMotor;
    }

    public Integer getOrden() {
        return orden;
    }

    public void setOrden(Integer orden) {
        this.orden = orden;
    }

    public Boolean getActivo() {
        return activo;
    }

    public void setActivo(Boolean activo) {
        this.activo = activo;
    }

    @XmlTransient
    public List<CombustibleComision> getCombustibleComisionList() {
        return combustibleComisionList;
    }

    public void setCombustibleComisionList(List<CombustibleComision> combustibleComisionList) {
        this.combustibleComisionList = combustibleComisionList;
    }

    @XmlTransient
    public List<Imagen> getImagenList() {
        return imagenList;
    }

    public void setImagenList(List<Imagen> imagenList) {
        this.imagenList = imagenList;
    }

    public Color getCodColor() {
        return codColor;
    }

    public void setCodColor(Color codColor) {
        this.codColor = codColor;
    }

    public Departamento getCodDepartamento() {
        return codDepartamento;
    }

    public void setCodDepartamento(Departamento codDepartamento) {
        this.codDepartamento = codDepartamento;
    }

    public Linea getCodLinea() {
        return codLinea;
    }

    public void setCodLinea(Linea codLinea) {
        this.codLinea = codLinea;
    }

    public Marca getCodMarca() {
        return codMarca;
    }

    public void setCodMarca(Marca codMarca) {
        this.codMarca = codMarca;
    }

    public Municipio getCodMunicipio() {
        return codMunicipio;
    }

    public void setCodMunicipio(Municipio codMunicipio) {
        this.codMunicipio = codMunicipio;
    }

    public Persona getCodPersonaAsignacion() {
        return codPersonaAsignacion;
    }

    public void setCodPersonaAsignacion(Persona codPersonaAsignacion) {
        this.codPersonaAsignacion = codPersonaAsignacion;
    }

    public Puesto getCodPueston() {
        return codPueston;
    }

    public void setCodPueston(Puesto codPueston) {
        this.codPueston = codPueston;
    }

    public TipoTipo getCodTipoTipo() {
        return codTipoTipo;
    }

    public void setCodTipoTipo(TipoTipo codTipoTipo) {
        this.codTipoTipo = codTipoTipo;
    }

    public TipoUso getCodTipoUso() {
        return codTipoUso;
    }

    public void setCodTipoUso(TipoUso codTipoUso) {
        this.codTipoUso = codTipoUso;
    }

    @XmlTransient
    public List<KilometrajeComision> getKilometrajeComisionList() {
        return kilometrajeComisionList;
    }

    public void setKilometrajeComisionList(List<KilometrajeComision> kilometrajeComisionList) {
        this.kilometrajeComisionList = kilometrajeComisionList;
    }

    @XmlTransient
    public List<AsignacionVehiculoPiloto> getAsignacionVehiculoPilotoList() {
        return asignacionVehiculoPilotoList;
    }

    public void setAsignacionVehiculoPilotoList(List<AsignacionVehiculoPiloto> asignacionVehiculoPilotoList) {
        this.asignacionVehiculoPilotoList = asignacionVehiculoPilotoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codVehiculo != null ? codVehiculo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Vehiculo)) {
            return false;
        }
        Vehiculo other = (Vehiculo) object;
        if ((this.codVehiculo == null && other.codVehiculo != null) || (this.codVehiculo != null && !this.codVehiculo.equals(other.codVehiculo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return placa;
    }
    
}
