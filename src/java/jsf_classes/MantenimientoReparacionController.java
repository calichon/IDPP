package jsf_classes;

import entities.ConcursoMantenimientos;
import entities.DetalleMantRep;
import entities.MantenimientoReparacion;
import entities.Persona;
import entities.Proveedores;
import entities.TipoMantenimientoReparacion;
import entities.Vehiculo;
import jsf_classes.util.JsfUtil;
import jsf_classes.util.JsfUtil.PersistAction;
import session_beans.MantenimientoReparacionFacade;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import org.primefaces.event.SelectEvent;

@Named("mantenimientoReparacionController")
@SessionScoped
public class MantenimientoReparacionController implements Serializable {

    @EJB
    private session_beans.MantenimientoReparacionFacade ejbFacade;
    @EJB
    private session_beans.VehiculoFacade vehiculoFacade;
    @EJB
    private session_beans.ConcursoMantenimientosFacade concursoFacade;
    @EJB
    private session_beans.ProveedoresFacade proveedoresFacade;
    @EJB
    private session_beans.PersonaFacade personaFacade;
    @EJB
    private session_beans.TipoMantenimientoReparacionFacade tipoMantoFacade;
    private List<MantenimientoReparacion> items = null;
    private MantenimientoReparacion selected;
    private String newLabel = null;
    private String empleadoRecepcionNombreCargo;
    private String empleadoAutorizaNombreCargo;

    private Persona fullEmpleadoRecepcion;
    private Persona fullEmpleadoAutoriza;
    private DetalleMantRep actualDetalleMantRep;
     private DetalleMantRep actualDetalleMantRepTable;
     private List<DetalleMantRep> detalleMantos;

     static final  int UNIDAD_TRANSPORTES = 2;
     static final int UNIDAD_REPARACION = 3;

     public static final int TIPO_MANTENIMIENTO = 1;
     public static final int TIPO_REPARACION = 2;



    public MantenimientoReparacionController() {
    }

    public MantenimientoReparacion getSelected() {
        return selected;
    }

    public void setSelected(MantenimientoReparacion selected) {
        this.selected = selected;
        detalleMantos = (List<DetalleMantRep>) this.selected.getDetalleMantRepCollection();
         actualDetalleMantRep = new DetalleMantRep();
    }

    protected void setEmbeddableKeys() {

    }


    protected void initializeEmbeddableKey() {
        newLabel = "NUEVO";
        actualDetalleMantRep = new DetalleMantRep();
        selected.setDetalleMantRepCollection(new ArrayList());
        detalleMantos = new ArrayList();
        selected.setTotalMantenimientoReparaQ(0.0);
        selected.setCodMantenimientoReparacion(0);
    }

    private MantenimientoReparacionFacade getFacade() {
        return ejbFacade;
    }

    public MantenimientoReparacion prepareCreate() {
        selected = new MantenimientoReparacion();


        initializeEmbeddableKey();
        return selected;
    }

    public void create() {
        persist(PersistAction.CREATE, ResourceBundle.getBundle("/Bundle").getString("MantenimientoReparacionCreated"));
        if (!JsfUtil.isValidationFailed()) {
            items = null;    // Invalidate list of items to trigger re-query.
        }
    }

    public void update() {
        persist(PersistAction.UPDATE, ResourceBundle.getBundle("/Bundle").getString("MantenimientoReparacionUpdated"));
    }

    public void destroy() {
        persist(PersistAction.DELETE, ResourceBundle.getBundle("/Bundle").getString("MantenimientoReparacionDeleted"));
        if (!JsfUtil.isValidationFailed()) {
            selected = null; // Remove selection
            items = null;    // Invalidate list of items to trigger re-query.
        }
    }

    public void deleteDetalle(DetalleMantRep detalle){
        actualDetalleMantRepTable = detalle;
        System.out.println("Actual Detalle: "+actualDetalleMantRepTable);
        System.out.println("Exists: "+selected.getDetalleMantRepCollection().contains(actualDetalleMantRepTable));
       //selected.getDetalleMantRepCollection().remove(actualDetalleMantRepTable);
       detalleMantos.remove(actualDetalleMantRepTable);

       selected.setTotalMantenimientoReparaQ(selected.getTotalMantenimientoReparaQ()-actualDetalleMantRepTable.getCostoReparacionDetalle());

    }
    public List<MantenimientoReparacion> getItems() {
        if (items == null) {
            items = getFacade().findAll();
        }
        return items;
    }

    private void persist(PersistAction persistAction, String successMessage) {
        if (selected != null) {
            setEmbeddableKeys();
            try {
                if (persistAction != PersistAction.DELETE) {
                    selected = getFacade().merge(selected);
                    System.out.println("id: "+selected.getCodMantenimientoReparacion());
                    for (DetalleMantRep det: detalleMantos){
                        det.setCodMantenimientoReparacion(selected);
                    }
                    selected.setDetalleMantRepCollection(detalleMantos);
                    getFacade().edit(selected);

                } else {
                    getFacade().remove(selected);
                }
                JsfUtil.addSuccessMessage(successMessage);
            } catch (EJBException ex) {
                ex.printStackTrace();
                String msg = "";
                Throwable cause = ex.getCause();
                if (cause != null) {
                    msg = cause.getLocalizedMessage();
                }
                if (msg.length() > 0) {
                    JsfUtil.addErrorMessage(msg);
                } else {
                    JsfUtil.addErrorMessage(ex, ResourceBundle.getBundle("/Bundle").getString("PersistenceErrorOccured"));
                }
            } catch (Exception ex) {
                Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, null, ex);
                JsfUtil.addErrorMessage(ex, ResourceBundle.getBundle("/Bundle").getString("PersistenceErrorOccured"));
                ex.printStackTrace();
            }
        }
    }

    public MantenimientoReparacion getMantenimientoReparacion(java.lang.Integer id) {
        return getFacade().find(id);
    }

    public List<MantenimientoReparacion> getItemsAvailableSelectMany() {
        return getFacade().findAll();
    }

    public List<MantenimientoReparacion> getItemsAvailableSelectOne() {
        return getFacade().findAll();
    }

    public String getNewLabel() {
        return newLabel;
    }

    public void setNewLabel(String newLabel) {
        this.newLabel = newLabel;
    }

    public String getEmpleadoRecepcionNombreCargo() {
        return empleadoRecepcionNombreCargo;
    }

    public void setEmpleadoRecepcionNombreCargo(String empleadoRecepcionNombreCargo) {
        this.empleadoRecepcionNombreCargo = empleadoRecepcionNombreCargo;
    }



    public Persona getFullEmpleadoRecepcion() {
        return fullEmpleadoRecepcion;
    }

    public void setFullEmpleadoRecepcion(Persona fullEmpleadoRecepcion) {
        this.fullEmpleadoRecepcion = fullEmpleadoRecepcion;
    }

    public Persona getFullEmpleadoAutoriza() {
        return fullEmpleadoAutoriza;
    }

    public void setFullEmpleadoAutoriza(Persona fullEmpleadoAutoriza) {
        this.fullEmpleadoAutoriza = fullEmpleadoAutoriza;
    }

    public String getEmpleadoAutorizaNombreCargo() {
        return empleadoAutorizaNombreCargo;
    }

    public void setEmpleadoAutorizaNombreCargo(String empleadoAutorizaNombreCargo) {
        this.empleadoAutorizaNombreCargo = empleadoAutorizaNombreCargo;
    }

    public DetalleMantRep getActualDetalleMantRep() {
        return actualDetalleMantRep;
    }

    public void setActualDetalleMantRep(DetalleMantRep actualDetalleMantRep) {
        this.actualDetalleMantRep = actualDetalleMantRep;
    }

    public DetalleMantRep getActualDetalleMantRepTable() {
        return actualDetalleMantRepTable;
    }

    public void setActualDetalleMantRepTable(DetalleMantRep actualDetalleMantRepTable) {
        this.actualDetalleMantRepTable = actualDetalleMantRepTable;
    }

    public List<DetalleMantRep> getDetalleMantos() {
        return detalleMantos;
    }

    public void setDetalleMantos(List<DetalleMantRep> detalleMantos) {
        this.detalleMantos = detalleMantos;
    }



    @FacesConverter(forClass = MantenimientoReparacion.class)
    public static class MantenimientoReparacionControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            MantenimientoReparacionController controller = (MantenimientoReparacionController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "mantenimientoReparacionController");
            return controller.getMantenimientoReparacion(getKey(value));
        }

        java.lang.Integer getKey(String value) {
            java.lang.Integer key;
            key = Integer.valueOf(value);
            return key;
        }

        String getStringKey(java.lang.Integer value) {
            StringBuilder sb = new StringBuilder();
            sb.append(value);
            return sb.toString();
        }

        @Override
        public String getAsString(FacesContext facesContext, UIComponent component, Object object) {
            if (object == null) {
                return null;
            }
            if (object instanceof MantenimientoReparacion) {
                MantenimientoReparacion o = (MantenimientoReparacion) object;
                return getStringKey(o.getCodMantenimientoReparacion());
            } else {
                Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, "object {0} is of type {1}; expected type: {2}", new Object[]{object, object.getClass().getName(), MantenimientoReparacion.class.getName()});
                return null;
            }
        }

    }

    public List<Vehiculo> completePlacasVehiculo(String query) {
        List<Vehiculo> filteredVehiculos = vehiculoFacade.findByPlaca(query);
        return filteredVehiculos;
    }

    public List<Proveedores> completeNITProveedores(String query){
        List<Proveedores> filteredProveedores = proveedoresFacade.findByNIT(query);
        return filteredProveedores;
    }

    public List<Persona> completeEmpleado(String query){
        List<Persona> filteredPersona = personaFacade.findByNombreApellido(query, selected.getMantRep().intValue() == TIPO_MANTENIMIENTO?UNIDAD_TRANSPORTES:UNIDAD_REPARACION);
        return filteredPersona;
    }

    public List<TipoMantenimientoReparacion> completeTipoMantenimiento(String query){
        List<TipoMantenimientoReparacion> filteredTipos = tipoMantoFacade.findByNombre(query, selected.getMantRep().intValue());
        return filteredTipos;
    }

    public void onItemSelect(SelectEvent event) {
        Vehiculo v = (Vehiculo) event.getObject();
        List<ConcursoMantenimientos> cm = concursoFacade.getConcursosActivosByPlaca(v.getPlaca());
        if (cm.size() > 0){
            selected.setCodNoConcurso(cm.get(0));
        }

    }
    public void onNitSelect(SelectEvent event) {

    }

    public void onEmpleadoSelect(SelectEvent event){
       selected.setCodEmpleadoRecepcion(new BigDecimal(fullEmpleadoRecepcion.getCodPersona()).toBigInteger());
        selected.setCodCargoEmpleadoRecepcion(new BigDecimal(fullEmpleadoRecepcion.getCodPuesto().getCodPuesto()).toBigInteger());
        setEmpleadoRecepcionNombreCargo(fullEmpleadoRecepcion.getCodPuesto().getDescripcion());
    }

    public void onEmpleadoAutorizaSelect(SelectEvent event){
       selected.setCodEmpleadoRecepcionFact(new BigDecimal(fullEmpleadoAutoriza.getCodPersona()).toBigInteger());
        selected.setCodCargoEmpleadoRecepcionFact(new BigDecimal(fullEmpleadoAutoriza.getCodPuesto().getCodPuesto()).toBigInteger());
        setEmpleadoAutorizaNombreCargo(fullEmpleadoAutoriza.getCodPuesto().getDescripcion());
    }
    //La formula es fecha de envío - fecha de retorno
    public void onDateSelect(){
        Date envio = selected.getFechaEnvioVehiculo();
        Date retorno = selected.getFechaRetornoVehiculo();


        if (envio == null || retorno == null) return;

        long diff = retorno.getTime() - envio.getTime();
        double dayCount = (double) diff / (24 * 60 * 60 * 1000);
        selected.setDiasMantenimiento(new BigDecimal(dayCount).toBigInteger());
    }

    public void agregarDetalle(){

        //selected.getDetalleMantRepCollection().add(actualDetalleMantRep);
        detalleMantos.add(actualDetalleMantRep);
        selected.setTotalMantenimientoReparaQ(selected.getTotalMantenimientoReparaQ()+actualDetalleMantRep.getCostoReparacionDetalle());

        System.out.println("Sale agrgar detalle "+selected.getTotalMantenimientoReparaQ());
    }

}
