/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.CombustibleComision;
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
public class CombustibleComisionFacade extends AbstractFacade<CombustibleComision> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    
    public List<CombustibleComision> findByVehiculo(Vehiculo vehiculo) {
        EntityManager em = getEntityManager();
        Query Q;
        Q = em.createNamedQuery("CombustibleComision.findByCodVehiculo").setParameter("vehiculo", vehiculo);
        return Q.getResultList();
    }
            
    public CombustibleComisionFacade() {
        super(CombustibleComision.class);
    }
    
}
