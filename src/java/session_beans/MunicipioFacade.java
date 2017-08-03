/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.Municipio;
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
public class MunicipioFacade extends AbstractFacade<Municipio> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MunicipioFacade() {
        super(Municipio.class);
    }
    
    public List<Municipio> getMunicipioOrderedList(){
        EntityManager municipioEM;
        municipioEM = getEntityManager();
        Query departamentoQ;
        departamentoQ = municipioEM.createNamedQuery("Municipio.findAll");            
        return departamentoQ.getResultList();
    }
    
    public List<Municipio> getMunicipioOrderedListLimitsDepartment(int depto){
        EntityManager municipioEM;
        municipioEM = getEntityManager();
        Query departamentoQ;
        departamentoQ = municipioEM.createNamedQuery("Municipio.findByCodDepartamento").setParameter("codDepartamento", depto);            
        return departamentoQ.getResultList();
    }
    
}
