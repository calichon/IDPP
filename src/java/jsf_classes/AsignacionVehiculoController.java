package jsf_classes;

import entities.AsignacionVehiculo;
import entities.AsignacionVehiculoPiloto;
import entities.Persona;
import entities.Puesto;
import entities.Vehiculo;
import jsf_classes.util.JsfUtil;
import jsf_classes.util.JsfUtil.PersistAction;
import session_beans.AsignacionVehiculoFacade;

import java.io.Serializable;
import java.util.ArrayList;
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

import java.util.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.annotation.PostConstruct;
import javax.faces.model.SelectItem;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import session_beans.AsignacionVehiculoPilotoFacade;
import session_beans.PersonaFacade;
import session_beans.VehiculoFacade;

@Named("asignacionVehiculoController")
@SessionScoped
public class AsignacionVehiculoController implements Serializable {

    @EJB
    private session_beans.AsignacionVehiculoFacade ejbFacade;
    @EJB
    private session_beans.AsignacionVehiculoPilotoFacade ejbFacadeAVP;
    @EJB
    private session_beans.VehiculoFacade ejbFacadeVehiculo;
    @EJB
    private session_beans.PersonaFacade ejbFacadePersona;
    private List<AsignacionVehiculo> items = null;
    private AsignacionVehiculo selected;
    private AsignacionVehiculoPiloto selectedAVP;
    private EntityManager em;
    private List<SelectItem> pilotoAsignadoList;
    private Persona pilotoAsignado;
    private Vehiculo vehiculoAsignado;
    private VehiculoController vehiculoController = new VehiculoController();
    private AsignacionVehiculoPiloto lastAVP;
    private AsignacionVehiculoPiloto lastAVPorig;
    private List<Vehiculo> vehiculosDisponibles = null;
    private List<Vehiculo> vehiculosDisponiblesEdit = null;
    private List<Persona> pilotosDisponibles = null;
    private List<Persona> pasajerosUnidad = null;
    private Date fechaInicio;
    private Date fechaFin;

    private int dias = 0;

    public AsignacionVehiculoController() {
    }

    @PostConstruct
    public void init() {
        setPasajerosUnidad();
    }

    public void onUnidadChange(){
        setPasajerosUnidad();
    }

    public void setPasajerosUnidad(){
        if(selected != null){
            //pasajerosUnidad = ejbFacadePersona.findByUnidad(selected.getCodUnidadSolicitante());
            pasajerosUnidad = ejbFacadePersona.findAll();
        }
    }

    public List<Persona> getPasajerosUnidad(){
        if(pasajerosUnidad == null){
            setPasajerosUnidad();
        }
        return pasajerosUnidad;
    }

    public AsignacionVehiculo getSelected() {
        return selected;
    }

    public AsignacionVehiculoPiloto getSelectedAVP() {
        return selectedAVP;
    }

    //@Transactional
    public AsignacionVehiculoPiloto getLastAVP(){
        //em.joinTransaction();
        //em.refresh(selected);
        //em.flush();
        List<AsignacionVehiculoPiloto> list = selected.getAsignacionVehiculoPilotoList();
        if(list != null){
            for (AsignacionVehiculoPiloto avp : list) {
                if(avp.getEstatusAsignacion().equals("A")){
                    lastAVPorig = avp;
                }
            }
        }

        if(lastAVP != null){
            if(lastAVP.getCodAsignacionVehiculo() != selected){
                lastAVP = null;
            }
        }

        if(lastAVP == null){
            if(lastAVPorig != null){
                lastAVP = new AsignacionVehiculoPiloto();
                lastAVP.setCodAsignacionVehiculo(lastAVPorig.getCodAsignacionVehiculo());
                lastAVP.setCodAsignacionVehiculoPiloto(lastAVPorig.getCodAsignacionVehiculoPiloto());
                lastAVP.setCodPersonaPilotoAsignado(lastAVPorig.getCodPersonaPilotoAsignado());
                lastAVP.setCodVehiculo(lastAVPorig.getCodVehiculo());
                lastAVP.setEstatusAsignacion(lastAVPorig.getEstatusAsignacion());
                lastAVP.setFechaHoraAsignacion(lastAVPorig.getFechaHoraAsignacion());
                lastAVP.setFechaHoraRetornoVehiculo(lastAVPorig.getFechaHoraRetornoVehiculo());
                lastAVP.setFechaHoraUsoVehiculo(lastAVPorig.getFechaHoraUsoVehiculo());
            }
            else{
                lastAVP = new AsignacionVehiculoPiloto();
            }
        }

        return lastAVP;
    }

    public List<SelectItem> getPilotoAsignadoList() {
        pilotoAsignadoList = new ArrayList<SelectItem>();
        pilotoAsignadoList.add(new SelectItem("1", "Mercedes"));
        pilotoAsignadoList.add(new SelectItem("2", "Kia"));
        return pilotoAsignadoList;
    }

    public void setPilotoAsignado(Persona piloto){
        pilotoAsignado = piloto;
    }

    public Persona getPilotoAsignado(){
        return pilotoAsignado;
    }

    public void setVehiculoAsignado(Vehiculo vehiculo){
        vehiculoAsignado = vehiculo;
    }

    public Vehiculo getVehiculoAsignado(){
        return vehiculoAsignado;
    }

    public void setSelected(AsignacionVehiculo selected) {
        this.selected = selected;
    }

    public void setSelectedAVP(AsignacionVehiculoPiloto selectedAVP) {
        this.selectedAVP = selectedAVP;
    }

    protected void setEmbeddableKeys() {
    }

    protected void initializeEmbeddableKey() {
    }

    private AsignacionVehiculoFacade getFacade() {
        return ejbFacade;
    }

    private AsignacionVehiculoPilotoFacade getFacadeAVP() {
        return ejbFacadeAVP;
    }

    private VehiculoFacade getFacadeVehiculo() {
        return ejbFacadeVehiculo;
    }

    private PersonaFacade getFacadePersona(){
        return ejbFacadePersona;
    }

    public AsignacionVehiculo prepareCreate() {
        selected = new AsignacionVehiculo();
        initializeEmbeddableKey();
        return selected;
    }

    public AsignacionVehiculoPiloto prepareCreateAVP() {
        selectedAVP = new AsignacionVehiculoPiloto();
        initializeEmbeddableKey();
        return selectedAVP;
    }

    public void create() {
        prepareCreateAVP();
        persist(PersistAction.CREATE, ResourceBundle.getBundle("/Bundle").getString("AsignacionVehiculoCreated"));
        if (!JsfUtil.isValidationFailed()) {
            items = null;    // Invalidate list of items to trigger re-query.
        }
    }



    public void update() {
        prepareCreateAVP();
        persist(PersistAction.UPDATE, ResourceBundle.getBundle("/Bundle").getString("AsignacionVehiculoUpdated"));
    }

    public void destroy() {
        persist(PersistAction.DELETE, ResourceBundle.getBundle("/Bundle").getString("AsignacionVehiculoDeleted"));
        if (!JsfUtil.isValidationFailed()) {
            selected = null; // Remove selection
            items = null;    // Invalidate list of items to trigger re-query.
        }
    }

    public List<AsignacionVehiculo> getItems() {
        if (items == null) {
            items = getFacade().findAll();
        }
        return items;
    }

    public EntityManager getEntityManager() {
        em.getEntityManagerFactory().getCache().evictAll();
        return em;
    }
    @PersistenceContext
    public void setEntityManager(EntityManager entityManager) {
        this.em = entityManager;
        em.getEntityManagerFactory().getCache().evictAll();
    }

    private void persist(PersistAction persistAction, String successMessage) {
        if (selected != null) {
            setEmbeddableKeys();
            try {
                if (persistAction != PersistAction.DELETE) {
                    //getFacade().edit(selected);
                    if (persistAction == PersistAction.CREATE) {
                        selectedAVP.setCodAsignacionVehiculo(selected);
                        em = getEntityManager();
                        selectedAVP.setCodPersonaPilotoAsignado(pilotoAsignado);
                        selectedAVP.setCodVehiculo(vehiculoAsignado);
                        selectedAVP.setFechaHoraAsignacion(selected.getFechaAsignacion());
                        selectedAVP.setFechaHoraUsoVehiculo(selected.getFechaHoraUsoVehiculo());
                        selectedAVP.setFechaHoraRetornoVehiculo(selected.getFechaHoraRetornoVehiculo());
                        selectedAVP.setEstatusAsignacion("A");
                        AsignacionVehiculoPilotoFacade favp;
                        favp = getFacadeAVP();
                        favp.edit(selectedAVP);
                    }
                    else{
                        //getFacade().edit(selected);
                        selectedAVP.setCodAsignacionVehiculo(selected);
                        em = getEntityManager();
                        selectedAVP.setCodPersonaPilotoAsignado(lastAVP.getCodPersonaPilotoAsignado());
                        selectedAVP.setCodVehiculo(lastAVP.getCodVehiculo());
                        selectedAVP.setFechaHoraAsignacion(selected.getFechaAsignacion());
                        selectedAVP.setFechaHoraUsoVehiculo(selected.getFechaHoraUsoVehiculo());
                        selectedAVP.setFechaHoraRetornoVehiculo(selected.getFechaHoraRetornoVehiculo());
                        selectedAVP.setEstatusAsignacion("A");

                        lastAVPorig.setEstatusAsignacion("R");
                        AsignacionVehiculoPilotoFacade favp;
                        favp = getFacadeAVP();
                        favp.edit(selectedAVP);
                        favp.edit(lastAVPorig);
                        selected.setAsignacionVehiculoPilotoList(favp.findByAV(selected.getCodAsignacionVehiculo()));
                        //getFacade().edit(selected);
                    }
                    //here vik
                } else {
                    getFacade().remove(selected);
                }
                JsfUtil.addSuccessMessage(successMessage);
            } catch (EJBException ex) {
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
            }
        }
    }

    public AsignacionVehiculo getAsignacionVehiculo(java.lang.Integer id) {
        return getFacade().find(id);
    }

    public List<AsignacionVehiculo> getItemsAvailableSelectMany() {
        return getFacade().findAll();
    }

    public List<AsignacionVehiculo> getItemsAvailableSelectOne() {
        return getFacade().findAll();
    }

    public void setTotalDias(){
        Calendar cal1 = new GregorianCalendar();
        Calendar cal2 = new GregorianCalendar();

        Date date1 = selected.getFechaHoraUsoVehiculo();
        Date date2 = selected.getFechaHoraRetornoVehiculo();
        if(date1!=null && date2!=null){
            cal1.setTime(date1);
            cal2.setTime(date2);
            dias = daysBetween(cal1.getTime(),cal2.getTime());
        }
        selected.setDiasAsignacion(dias);
        fechaInicio = selected.getFechaHoraUsoVehiculo();
        fechaFin = selected.getFechaHoraRetornoVehiculo();
    }

    public List<Vehiculo> getVehiculosDisponibles() {
        Date pFechaInicio;
        Date pFechaFin;
        List<Vehiculo> itemsDisponiblesFecha = null;
        if(fechaInicio == null){
            pFechaInicio = new Date(0);
        }
        else{
            pFechaInicio = fechaInicio;
        }
        if(fechaFin == null){
            pFechaFin = new Date();

        }
        else{
            pFechaFin = fechaFin;
        }
        if (itemsDisponiblesFecha == null) {
            itemsDisponiblesFecha = getFacadeVehiculo().findByDate(pFechaInicio,pFechaFin);
        }
        return itemsDisponiblesFecha;
    }

    public List<Vehiculo> getVehiculosDisponiblesEdit() {
        Date pFechaInicio;
        Date pFechaFin;
        List<Vehiculo> itemsDisponiblesFecha = null;
        fechaInicio = selected.getFechaHoraUsoVehiculo();
        fechaFin = selected.getFechaHoraRetornoVehiculo();
        if(fechaInicio == null){
            pFechaInicio = new Date(0);
        }
        else{
            pFechaInicio = fechaInicio;
        }
        if(fechaFin == null){
            pFechaFin = new Date();

        }
        else{
            pFechaFin = fechaFin;
        }

        itemsDisponiblesFecha = getFacadeVehiculo().findByDateAndId(pFechaInicio,pFechaFin,selected.getCodAsignacionVehiculo());

        return itemsDisponiblesFecha;
    }

    public List<Persona> getPilotosDisponibles(){
        Date pFechaInicio;
        Date pFechaFin;
        List<Persona> itemsDisponiblesFecha = null;
        if(fechaInicio == null){
            pFechaInicio = new Date(0);
        }
        else{
            pFechaInicio = fechaInicio;
        }
        if(fechaFin == null){
            pFechaFin = new Date();

        }
        else{
            pFechaFin = fechaFin;
        }
        if (itemsDisponiblesFecha == null) {
            itemsDisponiblesFecha = getFacadePersona().findByDate(pFechaInicio,pFechaFin);
            //itemsDisponiblesFecha = getFacadePersona().findAll();
        }
        return itemsDisponiblesFecha;
    }

    public List<Persona> getPilotosDisponiblesEdit(){
        Date pFechaInicio;
        Date pFechaFin;
        List<Persona> itemsDisponiblesFecha = null;
        fechaInicio = selected.getFechaHoraUsoVehiculo();
        fechaFin = selected.getFechaHoraRetornoVehiculo();
        if(fechaInicio == null){
            pFechaInicio = new Date(0);
        }
        else{
            pFechaInicio = fechaInicio;
        }
        if(fechaFin == null){
            pFechaFin = new Date();

        }
        else{
            pFechaFin = fechaFin;
        }

        itemsDisponiblesFecha = getFacadePersona().findByDateAndId(pFechaInicio,pFechaFin,selected);

        return itemsDisponiblesFecha;
    }

    private int daysBetween(Date d1, Date d2){
        int ret = 0;
        ret = (int)( (d2.getTime() - d1.getTime()) / (1000 * 60 * 60 * 24));
        if(ret < 0){
            ret = 0;
        }
        return ret;
    }

    public int getDias(){
        return dias;
    }

    public void onPersonaAsignadorVehiculoChange(){
        Persona persona = selected.getCodPersonaAsignadorVehiculo();
        Puesto p = persona.getCodPuesto();
        if(p != null){
            selected.setCodPuestoAsignadorVehiculo(p);
        }
    }

    public void onPersonaCoordinadorJefeChange(){
        Persona persona = selected.getCodPersonaCoordinadorJefe();
        Puesto p = persona.getCodPuesto();
        if(p != null){
            selected.setCodPuestoCoordinadorJefe(p);
        }
    }

    public void onPersonaSolicitanteChange(){
        Persona persona = selected.getCodPersonaSolicitante();
        Puesto p = persona.getCodPuesto();
        if(p != null){
            selected.setCodPuestoSolicitante(p);
        }
    }

    public List<String> autocompletarDestino(String query) {
        return getFacade().getDestinoOrderedList(query);
    }

    @FacesConverter(forClass = AsignacionVehiculo.class)
    public static class AsignacionVehiculoControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            AsignacionVehiculoController controller = (AsignacionVehiculoController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "asignacionVehiculoController");
            return controller.getAsignacionVehiculo(getKey(value));
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
            if (object instanceof AsignacionVehiculo) {
                AsignacionVehiculo o = (AsignacionVehiculo) object;
                return getStringKey(o.getCodAsignacionVehiculo());
            } else {
                Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, "object {0} is of type {1}; expected type: {2}", new Object[]{object, object.getClass().getName(), AsignacionVehiculo.class.getName()});
                return null;
            }
        }

    }

}
