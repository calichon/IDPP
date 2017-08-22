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
import javax.persistence.Lob;
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
@Table(name = "persona")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Persona.findAll", query = "SELECT p FROM Persona p")
    , @NamedQuery(name = "Persona.findByDate", query = "Select DISTINCT(p) from Persona p left outer join p.asignacionVehiculoPilotoList avp WHERE (NOT(:fecha_inicio <= avp.fechaHoraRetornoVehiculo AND avp.fechaHoraUsoVehiculo <= :fecha_fin) OR avp.fechaHoraRetornoVehiculo IS NULL) ORDER BY p.codPersona")
    , @NamedQuery(name = "Persona.findByDateAndId", query = "Select DISTINCT(p) from Persona p left outer join p.asignacionVehiculoPilotoList avp WHERE (NOT(:fecha_inicio <= avp.fechaHoraRetornoVehiculo AND avp.fechaHoraUsoVehiculo <= :fecha_fin) OR avp.fechaHoraRetornoVehiculo IS NULL) OR avp.codAsignacionVehiculo = :codAsignacionVehiculo ORDER BY p.codPersona")
        //left outer join p.asignacionVehiculoPilotoList avp
        //WHERE NOT(:fecha_inicio <= av.fechaHoraRetornoVehiculo AND av.fechaHoraUsoVehiculo <= :fecha_fin) OR av.fechaHoraRetornoVehiculo IS NULL ORDER BY p.codPersona
    , @NamedQuery(name = "Persona.findByCodPersona", query = "SELECT p FROM Persona p WHERE p.codPersona = :codPersona")
    , @NamedQuery(name = "Persona.findByCodTipoPersona", query = "SELECT p FROM Persona p WHERE p.codTipoPersona = :codTipoPersona")
    , @NamedQuery(name = "Persona.findByNombre1", query = "SELECT p FROM Persona p WHERE p.nombre1 = :nombre1")
    , @NamedQuery(name = "Persona.findByNombre2", query = "SELECT p FROM Persona p WHERE p.nombre2 = :nombre2")
    , @NamedQuery(name = "Persona.findByApellido1", query = "SELECT p FROM Persona p WHERE p.apellido1 = :apellido1")
    , @NamedQuery(name = "Persona.findByApellido2", query = "SELECT p FROM Persona p WHERE p.apellido2 = :apellido2")
    , @NamedQuery(name = "Persona.findByApellidoCasada", query = "SELECT p FROM Persona p WHERE p.apellidoCasada = :apellidoCasada")
    , @NamedQuery(name = "Persona.findByCodRegistro", query = "SELECT p FROM Persona p WHERE p.codRegistro = :codRegistro")
    , @NamedQuery(name = "Persona.findByNumeroCedula", query = "SELECT p FROM Persona p WHERE p.numeroCedula = :numeroCedula")
    , @NamedQuery(name = "Persona.findByNit", query = "SELECT p FROM Persona p WHERE p.nit = :nit")
    , @NamedQuery(name = "Persona.findByFechaNacimiento", query = "SELECT p FROM Persona p WHERE p.fechaNacimiento = :fechaNacimiento")
    , @NamedQuery(name = "Persona.findBySexo", query = "SELECT p FROM Persona p WHERE p.sexo = :sexo")
    , @NamedQuery(name = "Persona.findByEstadoCivil", query = "SELECT p FROM Persona p WHERE p.estadoCivil = :estadoCivil")
    , @NamedQuery(name = "Persona.findByCodEstatus", query = "SELECT p FROM Persona p WHERE p.codEstatus = :codEstatus")
    , @NamedQuery(name = "Persona.findByCuentaBanco", query = "SELECT p FROM Persona p WHERE p.cuentaBanco = :cuentaBanco")
    , @NamedQuery(name = "Persona.findByPasaporte", query = "SELECT p FROM Persona p WHERE p.pasaporte = :pasaporte")
    , @NamedQuery(name = "Persona.findByDomicilio", query = "SELECT p FROM Persona p WHERE p.domicilio = :domicilio")
    , @NamedQuery(name = "Persona.findByCodProfesion", query = "SELECT p FROM Persona p WHERE p.codProfesion = :codProfesion")
    , @NamedQuery(name = "Persona.findByPartidaNacimiento", query = "SELECT p FROM Persona p WHERE p.partidaNacimiento = :partidaNacimiento")
    , @NamedQuery(name = "Persona.findByCodRelojPersona", query = "SELECT p FROM Persona p WHERE p.codRelojPersona = :codRelojPersona")
    , @NamedQuery(name = "Persona.findByUrlFoto", query = "SELECT p FROM Persona p WHERE p.urlFoto = :urlFoto")
    , @NamedQuery(name = "Persona.findByProvidad", query = "SELECT p FROM Persona p WHERE p.providad = :providad")
    , @NamedQuery(name = "Persona.findByLugarNacimiento", query = "SELECT p FROM Persona p WHERE p.lugarNacimiento = :lugarNacimiento")
    , @NamedQuery(name = "Persona.findByFecha", query = "SELECT p FROM Persona p WHERE p.fecha = :fecha")
    , @NamedQuery(name = "Persona.findByClasificacionGeografica", query = "SELECT p FROM Persona p WHERE p.clasificacionGeografica = :clasificacionGeografica")})
public class Persona implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cod_persona")
    private Integer codPersona;
    @Column(name = "cod_tipo_persona")
    private Integer codTipoPersona;
    @Size(max = 50)
    @Column(name = "nombre_1")
    private String nombre1;
    @Size(max = 50)
    @Column(name = "nombre_2")
    private String nombre2;
    @Size(max = 50)
    @Column(name = "apellido_1")
    private String apellido1;
    @Size(max = 50)
    @Column(name = "apellido_2")
    private String apellido2;
    @Size(max = 50)
    @Column(name = "apellido_casada")
    private String apellidoCasada;
    @Size(max = 4)
    @Column(name = "cod_registro")
    private String codRegistro;
    @Size(max = 20)
    @Column(name = "numero_cedula")
    private String numeroCedula;
    @Size(max = 15)
    @Column(name = "nit")
    private String nit;
    @Column(name = "fecha_nacimiento")
    @Temporal(TemporalType.DATE)
    private Date fechaNacimiento;
    @Size(max = 1)
    @Column(name = "sexo")
    private String sexo;
    @Size(max = 50)
    @Column(name = "estado_civil")
    private String estadoCivil;
    @Size(max = 2)
    @Column(name = "cod_estatus")
    private String codEstatus;
    @Size(max = 30)
    @Column(name = "cuenta_banco")
    private String cuentaBanco;
    @Size(max = 100)
    @Column(name = "pasaporte")
    private String pasaporte;
    @Size(max = 150)
    @Column(name = "domicilio")
    private String domicilio;
    @Column(name = "cod_profesion")
    private Integer codProfesion;
    @Size(max = 250)
    @Column(name = "partida_nacimiento")
    private String partidaNacimiento;
    @Column(name = "cod_reloj_persona")
    private Integer codRelojPersona;
    @Size(max = 2147483647)
    @Column(name = "url_foto")
    private String urlFoto;
    @Lob
    @Column(name = "foto")
    private byte[] foto;
    @Size(max = 100)
    @Column(name = "providad")
    private String providad;
    @Size(max = 100)
    @Column(name = "lugar_nacimiento")
    private String lugarNacimiento;
    @Column(name = "fecha")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecha;
    @Size(max = 2)
    @Column(name = "clasificacion_geografica")
    private String clasificacionGeografica;
    @OneToMany(mappedBy = "codPersonaEncargadoTransporte")
    private List<CombustibleComision> combustibleComisionList;
    @OneToMany(mappedBy = "codPersonaReceptor")
    private List<CombustibleComision> combustibleComisionList1;
    @OneToMany(mappedBy = "codPersonaSolicitante")
    private List<CombustibleComision> combustibleComisionList2;
    @JoinColumn(name = "cod_municipio", referencedColumnName = "cod_municipio")
    @ManyToOne
    private Municipio codMunicipio;
    @JoinColumn(name = "cod_pais", referencedColumnName = "cod_pais")
    @ManyToOne
    private Pais codPais;
    @JoinColumn(name = "cod_pais_pasaporte", referencedColumnName = "cod_pais")
    @ManyToOne
    private Pais codPaisPasaporte;
    @OneToMany(mappedBy = "codPersonaAsignadorVehiculo")
    private List<AsignacionVehiculo> asignacionVehiculoList;
    @OneToMany(mappedBy = "codPersonaCoordinadorJefe")
    private List<AsignacionVehiculo> asignacionVehiculoList1;
    @OneToMany(mappedBy = "codPersonaPasajero")
    private List<AsignacionVehiculo> asignacionVehiculoList2;
    
    @OneToMany(mappedBy = "codPersonaSolicitante")
    private List<AsignacionVehiculo> asignacionVehiculoList3;
    @OneToMany(mappedBy = "codCoordindor")
    private List<Sede> sedeList;
    @OneToMany(mappedBy = "codPersonaAsignacion")
    private List<Vehiculo> vehiculoList;
    @OneToMany(mappedBy = "codPersona")
    private List<Puesto> puestoList;
    @OneToMany(mappedBy = "codPersonaPiloto")
    private List<KilometrajeComision> kilometrajeComisionList;
    @OneToMany(mappedBy = "codPersonaPilotoAsignado")
    private List<AsignacionVehiculoPiloto> asignacionVehiculoPilotoList;

    public Persona() {
    }

    public Persona(Integer codPersona) {
        this.codPersona = codPersona;
    }

    public Integer getCodPersona() {
        return codPersona;
    }

    public void setCodPersona(Integer codPersona) {
        this.codPersona = codPersona;
    }

    public Integer getCodTipoPersona() {
        return codTipoPersona;
    }

    public void setCodTipoPersona(Integer codTipoPersona) {
        this.codTipoPersona = codTipoPersona;
    }

    public String getNombre1() {
        return nombre1;
    }

    public void setNombre1(String nombre1) {
        this.nombre1 = nombre1;
    }

    public String getNombre2() {
        return nombre2;
    }

    public void setNombre2(String nombre2) {
        this.nombre2 = nombre2;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getApellidoCasada() {
        return apellidoCasada;
    }

    public void setApellidoCasada(String apellidoCasada) {
        this.apellidoCasada = apellidoCasada;
    }

    public String getCodRegistro() {
        return codRegistro;
    }

    public void setCodRegistro(String codRegistro) {
        this.codRegistro = codRegistro;
    }

    public String getNumeroCedula() {
        return numeroCedula;
    }

    public void setNumeroCedula(String numeroCedula) {
        this.numeroCedula = numeroCedula;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public String getCodEstatus() {
        return codEstatus;
    }

    public void setCodEstatus(String codEstatus) {
        this.codEstatus = codEstatus;
    }

    public String getCuentaBanco() {
        return cuentaBanco;
    }

    public void setCuentaBanco(String cuentaBanco) {
        this.cuentaBanco = cuentaBanco;
    }

    public String getPasaporte() {
        return pasaporte;
    }

    public void setPasaporte(String pasaporte) {
        this.pasaporte = pasaporte;
    }

    public String getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    public Integer getCodProfesion() {
        return codProfesion;
    }

    public void setCodProfesion(Integer codProfesion) {
        this.codProfesion = codProfesion;
    }

    public String getPartidaNacimiento() {
        return partidaNacimiento;
    }

    public void setPartidaNacimiento(String partidaNacimiento) {
        this.partidaNacimiento = partidaNacimiento;
    }

    public Integer getCodRelojPersona() {
        return codRelojPersona;
    }

    public void setCodRelojPersona(Integer codRelojPersona) {
        this.codRelojPersona = codRelojPersona;
    }

    public String getUrlFoto() {
        return urlFoto;
    }

    public void setUrlFoto(String urlFoto) {
        this.urlFoto = urlFoto;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    public String getProvidad() {
        return providad;
    }

    public void setProvidad(String providad) {
        this.providad = providad;
    }

    public String getLugarNacimiento() {
        return lugarNacimiento;
    }

    public void setLugarNacimiento(String lugarNacimiento) {
        this.lugarNacimiento = lugarNacimiento;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getClasificacionGeografica() {
        return clasificacionGeografica;
    }

    public void setClasificacionGeografica(String clasificacionGeografica) {
        this.clasificacionGeografica = clasificacionGeografica;
    }

    @XmlTransient
    public List<CombustibleComision> getCombustibleComisionList() {
        return combustibleComisionList;
    }

    public void setCombustibleComisionList(List<CombustibleComision> combustibleComisionList) {
        this.combustibleComisionList = combustibleComisionList;
    }

    @XmlTransient
    public List<CombustibleComision> getCombustibleComisionList1() {
        return combustibleComisionList1;
    }

    public void setCombustibleComisionList1(List<CombustibleComision> combustibleComisionList1) {
        this.combustibleComisionList1 = combustibleComisionList1;
    }

    @XmlTransient
    public List<CombustibleComision> getCombustibleComisionList2() {
        return combustibleComisionList2;
    }

    public void setCombustibleComisionList2(List<CombustibleComision> combustibleComisionList2) {
        this.combustibleComisionList2 = combustibleComisionList2;
    }

    public Municipio getCodMunicipio() {
        return codMunicipio;
    }

    public void setCodMunicipio(Municipio codMunicipio) {
        this.codMunicipio = codMunicipio;
    }

    public Pais getCodPais() {
        return codPais;
    }

    public void setCodPais(Pais codPais) {
        this.codPais = codPais;
    }

    public Pais getCodPaisPasaporte() {
        return codPaisPasaporte;
    }

    public void setCodPaisPasaporte(Pais codPaisPasaporte) {
        this.codPaisPasaporte = codPaisPasaporte;
    }

    @XmlTransient
    public List<AsignacionVehiculo> getAsignacionVehiculoList() {
        return asignacionVehiculoList;
    }

    public void setAsignacionVehiculoList(List<AsignacionVehiculo> asignacionVehiculoList) {
        this.asignacionVehiculoList = asignacionVehiculoList;
    }

    @XmlTransient
    public List<AsignacionVehiculo> getAsignacionVehiculoList1() {
        return asignacionVehiculoList1;
    }

    public void setAsignacionVehiculoList1(List<AsignacionVehiculo> asignacionVehiculoList1) {
        this.asignacionVehiculoList1 = asignacionVehiculoList1;
    }

    @XmlTransient
    public List<AsignacionVehiculo> getAsignacionVehiculoList2() {
        return asignacionVehiculoList2;
    }

    public void setAsignacionVehiculoList2(List<AsignacionVehiculo> asignacionVehiculoList2) {
        this.asignacionVehiculoList2 = asignacionVehiculoList2;
    }

    @XmlTransient
    public List<AsignacionVehiculo> getAsignacionVehiculoList3() {
        return asignacionVehiculoList3;
    }

    public void setAsignacionVehiculoList3(List<AsignacionVehiculo> asignacionVehiculoList3) {
        this.asignacionVehiculoList3 = asignacionVehiculoList3;
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

    @XmlTransient
    public List<Puesto> getPuestoList() {
        return puestoList;
    }

    public void setPuestoList(List<Puesto> puestoList) {
        this.puestoList = puestoList;
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
        hash += (codPersona != null ? codPersona.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Persona)) {
            return false;
        }
        Persona other = (Persona) object;
        if ((this.codPersona == null && other.codPersona != null) || (this.codPersona != null && !this.codPersona.equals(other.codPersona))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        //return "entities.Persona[ codPersona=" + codPersona + " ]";
        return apellido1 + " " + apellido2 + " " + apellidoCasada + ", " + nombre1 + " " + nombre2;
    }
    
}
