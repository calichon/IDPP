/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.KilometrajeComision;
import entities.Vehiculo;
import java.util.ArrayList;
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
public class KilometrajeComisionFacade extends AbstractFacade<KilometrajeComision> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public KilometrajeComisionFacade() {
        super(KilometrajeComision.class);
    }

    public List<KilometrajeComision> getLastByVehiculo(Vehiculo vehiculo){
        EntityManager em = getEntityManager();
        Query Q;
        Q = em.createNamedQuery("KilometrajeComision.findLastByVehiculo").setParameter("vehiculo", vehiculo);
        return Q.getResultList();

    }

}
