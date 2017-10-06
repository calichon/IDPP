/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.Puesto;
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
public class PuestoFacade extends AbstractFacade<Puesto> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PuestoFacade() {
        super(Puesto.class);
    }

    @Override
    public List<Puesto> findAll() {
        EntityManager em = getEntityManager();
        Query personaQ;
        personaQ = em.createNamedQuery("Puesto.findAll");
        return personaQ.getResultList();
    }

}
