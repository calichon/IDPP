/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.AsignacionVehiculo;
import entities.Persona;
import entities.Unidad;
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
public class PersonaFacade extends AbstractFacade<Persona> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PersonaFacade() {
        super(Persona.class);
    }
    
    public List<Persona> findByDate(Date fechaInicio, Date fechaFin) {
        EntityManager em = getEntityManager();
        Query personaQ;        
        personaQ = em.createNamedQuery("Persona.findByDate").setParameter("fecha_inicio", fechaInicio).setParameter("fecha_fin", fechaFin);
        //personaQ = em.createNamedQuery("Persona.findByDate");
        return personaQ.getResultList();
    }
    
    public List<Persona> findByDateAndId(Date fechaInicio, Date fechaFin, AsignacionVehiculo id) {
        EntityManager em = getEntityManager();
        Query personaQ;        
        personaQ = em.createNamedQuery("Persona.findByDateAndId").setParameter("fecha_inicio", fechaInicio).setParameter("fecha_fin", fechaFin).setParameter("codAsignacionVehiculo", id);
        //personaQ = em.createNamedQuery("Persona.findByDate");
        return personaQ.getResultList();
    }
    
    public List<Persona> findByUnidad(Unidad u) {
        EntityManager em = getEntityManager();
        Query personaQ;        
        personaQ = em.createNamedQuery("Persona.findByUnidad").setParameter("unidad", u);
        return personaQ.getResultList();
    }
}
