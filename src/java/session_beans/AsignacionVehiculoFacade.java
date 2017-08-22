/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import entities.AsignacionVehiculo;
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
public class AsignacionVehiculoFacade extends AbstractFacade<AsignacionVehiculo> {

    @PersistenceContext(unitName = "IDPPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AsignacionVehiculoFacade() {
        super(AsignacionVehiculo.class);
    }
    
    public List<String> getDestinoOrderedList(String query){
        EntityManager asignacionVehiculoEM;
        asignacionVehiculoEM = getEntityManager();
        Query destinoQ;
        destinoQ = asignacionVehiculoEM.createNamedQuery("AsignacionVehiculo.findAllDestino").setParameter("search", query);;
        return destinoQ.getResultList();
    }
    
}
