/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.Linea;
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
public class LineaFacade extends AbstractFacade<Linea> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public LineaFacade() {
        super(Linea.class);
    }
    
    public List<Linea> getLineaOrderedListLimitsMarca(Marca marca){
        EntityManager lineaEM;
        lineaEM = getEntityManager();
        Query lineaQ;
        lineaQ = lineaEM.createNamedQuery("Linea.findByCodMarca").setParameter("codMarca", marca);            
        return lineaQ.getResultList();
    }
    
}
