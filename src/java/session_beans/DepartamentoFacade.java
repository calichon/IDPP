/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.Departamento;
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
public class DepartamentoFacade extends AbstractFacade<Departamento> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public DepartamentoFacade() {
        super(Departamento.class);
    }
    
    public List<Departamento> getDepartamentoOrderedList(){
        EntityManager departamentoEM;
        departamentoEM = getEntityManager();
        Query departamentoQ;
        departamentoQ = departamentoEM.createNamedQuery("Departamento.findAll");            
        return departamentoQ.getResultList();
    }
    
}
