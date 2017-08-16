/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.Marca;
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
public class MarcaFacade extends AbstractFacade<Marca> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MarcaFacade() {
        super(Marca.class);
    }
    
    public List<Marca> getMarcaOrderedList(){
        EntityManager marcaEM;
        marcaEM = getEntityManager();
        Query marcaQ;
        marcaQ = marcaEM.createNamedQuery("Marca.findAll");            
        return marcaQ.getResultList();
    }
    
}
