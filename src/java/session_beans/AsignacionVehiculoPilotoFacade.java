/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.AsignacionVehiculo;
import entities.AsignacionVehiculoPiloto;
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
public class AsignacionVehiculoPilotoFacade extends AbstractFacade<AsignacionVehiculoPiloto> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AsignacionVehiculoPilotoFacade() {
        super(AsignacionVehiculoPiloto.class);
    }
    
    public List<AsignacionVehiculoPiloto> findByAV(Integer id){
        EntityManager em = getEntityManager();
        Query avpQ;        
        avpQ = em.createNamedQuery("AsignacionVehiculoPiloto.findByCodAsignacionVehiculo").setParameter("codAsignacionVehiculo", em.find(AsignacionVehiculo.class, id));
        //codAsignacionVehiculo
        return avpQ.getResultList();
    }
    
}
