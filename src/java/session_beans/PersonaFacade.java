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

    @Override
    public List<Persona> findAll() {
        EntityManager em = getEntityManager();
        Query personaQ;
        personaQ = em.createNamedQuery("Persona.findAll");
        return personaQ.getResultList();
    }
    public List<Persona> findBySection() {
        EntityManager em = getEntityManager();
        Query personaQ;
        Query organigramaQ;
        Query puestoQ;        
        organigramaQ = em.createNamedQuery("Organigrama.findByCodOrganigrama").setParameter("codOrganigrama",82);
        puestoQ = em.createNamedQuery("Puesto.findByCodOrganigrama").setParameter("codOrganigrama",organigramaQ.getResultList());        
        personaQ = em.createNamedQuery("Persona.findBySection").setParameter("Puesto", puestoQ.getResultList());                        
        return personaQ.getResultList();
    }
    public List<Persona> findByDate(Date fechaInicio, Date fechaFin) {
        EntityManager em = getEntityManager();
        Query personaQ;
        Query puestoQ;
        puestoQ = em.createNamedQuery("Puesto.findByDescripcion").setParameter("descripcion","Piloto");
        personaQ = em.createNamedQuery("Persona.findByDate").setParameter("fecha_inicio", fechaInicio).setParameter("fecha_fin", fechaFin).setParameter("puesto", puestoQ.getResultList());
        //personaQ = em.createNamedQuery("Persona.findByDate");
        return personaQ.getResultList();
    }

    public List<Persona> findByDateAndId(Date fechaInicio, Date fechaFin, AsignacionVehiculo id) {
        EntityManager em = getEntityManager();
        Query personaQ;
        Query puestoQ;
        puestoQ = em.createNamedQuery("Puesto.findByDescripcion").setParameter("descripcion","Piloto");
        personaQ = em.createNamedQuery("Persona.findByDateAndId").setParameter("fecha_inicio", fechaInicio).setParameter("fecha_fin", fechaFin).setParameter("codAsignacionVehiculo", id).setParameter("puesto", puestoQ.getResultList());        
        return personaQ.getResultList();
    }
    
    public List<Persona> findByUnidad(Unidad u) {
        EntityManager em = getEntityManager();
        Query personaQ;
        personaQ = em.createNamedQuery("Persona.findByUnidad").setParameter("unidad", u);
        return personaQ.getResultList();
    }

    public List<Persona> findByPuesto(String p) {
        EntityManager em = getEntityManager();
        Query personaQ;
        //personaQ = em.createNamedQuery("Persona.findByPuesto").setParameter("puesto", p);
        Query puestoQ;
        puestoQ = em.createNamedQuery("Puesto.findByDescripcion").setParameter("descripcion",p);
        personaQ = em.createNamedQuery("Persona.findByPuesto").setParameter("puesto", puestoQ.getResultList());
        return personaQ.getResultList();
    }

    public List<Persona> findByNombreApellido(String query, int unidad){
      Query byNombres = getEntityManager().createQuery("FROM Persona p WHERE concat(p.nombre1,p.nombre2,p.apellido1,p.apellido2,p.apellidoCasada) like :nombres and p.codPuesto.codOrganigrama.codUnidad.codUnidad = :laUnidad");
      query = query.replace(' ', '%');
        System.out.println("***query: "+query);
      byNombres.setParameter("nombres", '%'+query+'%');
      byNombres.setParameter("laUnidad", unidad);
      return byNombres.getResultList();
    }
}
