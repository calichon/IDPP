/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.MantenimientoReparacion;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author maria
 */
@Stateless
public class MantenimientoReparacionFacade extends AbstractFacade<MantenimientoReparacion> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MantenimientoReparacionFacade() {
        super(MantenimientoReparacion.class);
    }
    
    public MantenimientoReparacion merge(MantenimientoReparacion mr){
        MantenimientoReparacion saved = getEntityManager().merge(mr);
        getEntityManager().flush();
        return saved;
    }
    
}
