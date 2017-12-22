/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import com.sun.javafx.scene.control.SelectedCellsMap;
import entities.Departamento;
import entities.Municipio;
import entities.Sede;
import entities.Vehiculo;
import java.util.Date;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Carlos
 */
@Stateless
public class VehiculoFacade extends AbstractFacade<Vehiculo> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;
    
    MunicipioFacade mun;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public VehiculoFacade() {
        super(Vehiculo.class);
    }
    public List<Vehiculo> findByTypeVehicle(Date fechaInicio, Date fechaFin) {
        EntityManager em = getEntityManager();
        Query vehiculoQ;        
        vehiculoQ = em.createNamedQuery("Vehiculo.findByTypeVehicle").setParameter("fecha_inicio", fechaInicio).setParameter("fecha_fin", fechaFin);
        return vehiculoQ.getResultList();
    }
        
    public List<Vehiculo> findByLoad(Date fechaInicio, Date fechaFin) {
        EntityManager em = getEntityManager();
        Query vehiculoQ;
        Query tipoVehiculoQ;
        tipoVehiculoQ = em.createNamedQuery("TipoTipo.findByLoad");
        vehiculoQ = em.createNamedQuery("Vehiculo.findByLoad").setParameter("fecha_inicio", fechaInicio).setParameter("fecha_fin", fechaFin).setParameter("tipoVehiculo",tipoVehiculoQ.getResultList());
        return vehiculoQ.getResultList();
    }
    
    public List<Vehiculo> findByLoadAndId(Date fechaInicio, Date fechaFin, Integer id) {
        EntityManager em = getEntityManager();
        Query vehiculoQ;
        Query tipoVehiculoQ;
        tipoVehiculoQ = em.createNamedQuery("TipoTipo.findByLoad");
        //vehiculoQ = em.createNamedQuery("Vehiculo.findByLoadAndId").setParameter("fecha_inicio", fechaInicio).setParameter("fecha_fin", fechaFin).setParameter("tipoVehiculo",tipoVehiculoQ.getResultList());
        vehiculoQ = em.createNamedQuery("Vehiculo.findByLoadAndId").setParameter("fecha_inicio", fechaInicio).setParameter("fecha_fin", fechaFin).setParameter("codAsignacionVehiculo",id).setParameter("tipoVehiculo",tipoVehiculoQ.getResultList());
        //codAsignacionVehiculo
        return vehiculoQ.getResultList();
    }
    public List<Vehiculo> findByDate(Date fechaInicio, Date fechaFin) {
        EntityManager em = getEntityManager();
        Query vehiculoQ;        
        vehiculoQ = em.createNamedQuery("Vehiculo.findByDate").setParameter("fecha_inicio", fechaInicio).setParameter("fecha_fin", fechaFin);
        return vehiculoQ.getResultList();
    }
    public List<Vehiculo> findOrderByLicense() {
        EntityManager em = getEntityManager();
        Query vehiculoQ;        
        vehiculoQ = em.createNamedQuery("Vehiculo.findOrderByLicense");
        return vehiculoQ.getResultList();
    }
    public List<Vehiculo> findByDateAndId(Date fechaInicio, Date fechaFin, Integer id) {
        EntityManager em = getEntityManager();
        Query vehiculoQ;        
        vehiculoQ = em.createNamedQuery("Vehiculo.findByDateAndId").setParameter("fecha_inicio", fechaInicio).setParameter("fecha_fin", fechaFin).setParameter("codAsignacionVehiculo", id);
        //codAsignacionVehiculo
        return vehiculoQ.getResultList();
    }        
    
    public List<Municipio> getMunicipioOrderedListLimitsDepartment(Departamento depto){
        EntityManager municipioEM;
        municipioEM = getEntityManager();
        Query municipioQ;
        municipioQ = municipioEM.createNamedQuery("Municipio.findByCodDepartamento").setParameter("codDepartamento", depto);            
        return municipioQ.getResultList();
    }
    
    public boolean existsPlaca(String placa){
        EntityManager vehiculoEM;
        vehiculoEM = getEntityManager();
        boolean resultadoPlaca = false;
        Query vehiculoQ;
        vehiculoQ = vehiculoEM.createNamedQuery("Vehiculo.findByPlaca");
        vehiculoQ.setParameter("placa", placa);
        int cantidadResultados = 0;
        cantidadResultados = vehiculoQ.getResultList().size();
        if(cantidadResultados > 0){
            resultadoPlaca = true;
        }
        else{
            resultadoPlaca =  false;
        }
        return resultadoPlaca;
    }
    
    public String getPlacaById(int codVehiculo){
        EntityManager vehiculoEM;
        vehiculoEM = getEntityManager();
        String resultadoPlaca = "";
        Query vehiculoQ;
        vehiculoQ = vehiculoEM.createNamedQuery("Vehiculo.findByCodVehiculo");
        vehiculoQ.setParameter("codVehiculo", codVehiculo);
        int cantidadResultados = 0;
        cantidadResultados = vehiculoQ.getResultList().size();
        if(cantidadResultados > 0){
            Vehiculo v;
            v = (Vehiculo) vehiculoQ.getResultList().get(0);
            resultadoPlaca = v.getPlaca();
        }
        else{
            resultadoPlaca =  "";
        }
        return resultadoPlaca;
    }
    
    public List<Vehiculo> findByPlaca(String placa){
      Query byPlaca = getEntityManager().createQuery("FROM Vehiculo v WHERE v.placa like :placa");
      byPlaca.setParameter("placa", '%'+placa+'%');
      return byPlaca.getResultList();
    }

    
    public void refreshEntity() {
        //getEntityManager().refresh(this);
        //getEntityManager().flush();
        //getEntityManager().getEntityManagerFactory().getCache().evict(Vehiculo.class);
        //getEntityManager().refresh(v);
        getEntityManager().getEntityManagerFactory().getCache().evictAll();
    }
}
