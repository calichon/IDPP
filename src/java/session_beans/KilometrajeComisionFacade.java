/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.KilometrajeComision;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
    
}