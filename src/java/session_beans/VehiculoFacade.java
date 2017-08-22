/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.Departamento;
import entities.Municipio;
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
    
    public List<Vehiculo> findByDate(Date fechaInicio, Date fechaFin) {
        EntityManager em = getEntityManager();
        Query vehiculoQ;        
        vehiculoQ = em.createNamedQuery("Vehiculo.findByDate").setParameter("fecha_inicio", fechaInicio).setParameter("fecha_fin", fechaFin);
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
    
    public void refreshEntity() {
        //getEntityManager().refresh(this);
        //getEntityManager().flush();
        //getEntityManager().getEntityManagerFactory().getCache().evict(Vehiculo.class);
        //getEntityManager().refresh(v);
        getEntityManager().getEntityManagerFactory().getCache().evictAll();
    }
}
