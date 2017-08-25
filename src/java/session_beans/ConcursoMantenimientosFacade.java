/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.ConcursoMantenimientos;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author maria
 */
@Stateless
public class ConcursoMantenimientosFacade extends AbstractFacade<ConcursoMantenimientos> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ConcursoMantenimientosFacade() {
        super(ConcursoMantenimientos.class);
    }
    
    public List<ConcursoMantenimientos> getConcursosActivosByPlaca(String placa){
        Query q = getEntityManager().createNamedQuery("ConcursoMantenimientos.findByPlacaVehiculo");
        q.setParameter("placaVehiculo", placa);
        return q.getResultList();
        
    }
    
      
}
