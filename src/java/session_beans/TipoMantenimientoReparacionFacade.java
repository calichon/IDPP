/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.TipoMantenimientoReparacion;
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
public class TipoMantenimientoReparacionFacade extends AbstractFacade<TipoMantenimientoReparacion> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TipoMantenimientoReparacionFacade() {
        super(TipoMantenimientoReparacion.class);
    }
    
    public List<TipoMantenimientoReparacion> findByNombre(String nombre, int tipo){
       Query byNombre = getEntityManager().createQuery("FROM TipoMantenimientoReparacion t WHERE t.descripcion like :nombre and t.mantRepa = :tipo");
      byNombre.setParameter("nombre", '%'+nombre+'%');
      byNombre.setParameter("tipo", tipo);
      return byNombre.getResultList();        
    }
    
}
