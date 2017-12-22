package jsf_classes;

import com.sun.faces.component.visit.FullVisitContext;
import entities.CombustibleComision;
import entities.CombustibleCupon;
import entities.Persona;
import entities.Puesto;
import jsf_classes.util.JsfUtil;
import jsf_classes.util.JsfUtil.PersistAction;
import session_beans.CombustibleComisionFacade;

import java.io.Serializable;
import java.math.BigInteger;
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
import javax.faces.component.UIViewRoot;
import javax.faces.component.visit.VisitCallback;
import javax.faces.component.visit.VisitContext;
import javax.faces.component.visit.VisitResult;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import session_beans.CombustibleCuponFacade;

@Named("combustibleComisionController")
@SessionScoped
public class CombustibleComisionController implements Serializable {

    @EJB
    private session_beans.CombustibleComisionFacade ejbFacade;
    @EJB
    private session_beans.CombustibleCuponFacade ejbFacadeCupon;
    private List<CombustibleComision> items = null;
    private CombustibleComision selected;
    private List<CombustibleCupon> cupones   = new ArrayList<CombustibleCupon>();

    public CombustibleComisionController() {
//        CombustibleCupon temp = new CombustibleCupon();
//        temp.setCantidadCupones(2);
//        temp.setSumaTotal(BigInteger.ZERO);
//        temp.setNumeroCuponInicial(BigInteger.valueOf(100));
//        temp.setNumeroCuponFinal(BigInteger.valueOf(120));
//        cupones.add(temp);
//        CombustibleCupon temp2 = new CombustibleCupon();
//        temp2.setCantidadCupones(5);
//        temp2.setSumaTotal(BigInteger.valueOf(300));
//        temp2.setNumeroCuponInicial(BigInteger.valueOf(250));
//        temp2.setNumeroCuponFinal(BigInteger.valueOf(255));
//        cupones.add(temp2);
//        cupones.add(new CombustibleCupon());

    }

    public void init(){
        //cupones.clear();
        if(selected.getCombustibleCuponList()!=null){
            cupones = selected.getCombustibleCuponList();
        }
        else{
            cupones = new ArrayList<CombustibleCupon>();
        }
        String s = new String();
    }

    public void initCreate(){

    }

    public void eliminarCupon(CombustibleCupon cupon){
        if(cupones.contains(cupon)){
            cupones.remove(cupon);
        }
    }

    public String getTotalGeneral(){
        String s;
        BigInteger suma = BigInteger.ZERO;
        for (CombustibleCupon cupon : cupones) {
            BigInteger t = cupon.getSumaTotal();
            if(cupon.getSumaTotal() != null){
                suma = suma.add(cupon.getSumaTotal());
            }
            else{
                if(cupon.getCodCuponDenominancion() != null && cupon.getCantidadCupones() != null){
                    BigInteger cuponDenominacion = cupon.getCodCuponDenominancion().getDenominacion();
                    BigInteger numero = BigInteger.valueOf(cupon.getCantidadCupones());
                    BigInteger total = cuponDenominacion.multiply(numero);
                    suma = suma.add(total);
                }
            }
        }
        s = suma.toString();
        return s;
    }

    public String getTotal(CombustibleCupon cupon){
        String s;
        if(cupon.getCodCuponDenominancion() != null && cupon.getNumeroCuponFinal()!= null&& cupon.getNumeroCuponInicial()!= null){
            BigInteger cuponDenominacion = cupon.getCodCuponDenominancion().getDenominacion();            
            BigInteger valor=cupon.getNumeroCuponFinal().subtract(cupon.getNumeroCuponInicial());
            //cupon.setCantidadCupones(valor);
            BigInteger numero = BigInteger.valueOf(1);            
            cupon.setCantidadCupones(valor.intValue()+1);            
            BigInteger total = cuponDenominacion.multiply(valor.add(numero));
            cupon.setSumaTotal(total);
            s = total.toString();
        }
        else{
            s = "0";
        }
        return s;
    }

    public List<CombustibleCupon> getCupones(){
        return cupones;
    }

    public UIComponent findComponent(final String id) {
        FacesContext context = FacesContext.getCurrentInstance();
        UIViewRoot root = context.getViewRoot();
        final UIComponent[] found = new UIComponent[1];

        root.visitTree(new FullVisitContext(context), new VisitCallback() {
            @Override
            public VisitResult visit(VisitContext context, UIComponent component) {
                if(component.getId().equals(id)){
                    found[0] = component;
                    return VisitResult.COMPLETE;
                }
                return VisitResult.ACCEPT;
            }
        });

        return found[0];

    }

    public void agregarRecibo(){
        cupones.add(new CombustibleCupon());
    }


    public void onVehiculoChange(){
        if(selected.getCodVehiculo()==null){
            selected.setKilometrajeActual(null);
        }
    }

    public void onSolicitanteChange(){
        Persona solicitante = selected.getCodPersonaSolicitante();
        Puesto p = solicitante.getCodPuesto();
        if(p != null){
            selected.setCodPuestoSolicitante(p);
        }
        if(p.getCodSede() != null){
            selected.setCodSede(p.getCodSede());
        }
        if(p.getCodOrganigrama() != null){
            selected.setCodUnidad(p.getCodOrganigrama().getCodUnidad());
        }

    }

    public void onReceptorChange(){
        Persona receptor = selected.getCodPersonaReceptor();
        Puesto p = receptor.getCodPuesto();
        if(p != null){
            selected.setCodPuestoReceptor(p);
        }
    }

    public CombustibleComision getSelected() {
        return selected;
    }

    public void setSelected(CombustibleComision selected) {
        this.selected = selected;
    }

    protected void setEmbeddableKeys() {
    }

    protected void initializeEmbeddableKey() {
    }

    public CombustibleComisionFacade getFacade() {
        return ejbFacade;
    }

    public CombustibleCuponFacade getFacadeCupon() {
        return ejbFacadeCupon;
    }

    public CombustibleComision prepareCreate() {
        selected = new CombustibleComision();
        cupones = new ArrayList<CombustibleCupon>();
        initializeEmbeddableKey();
        return selected;
    }

    public void create() {
        persist(PersistAction.CREATE, ResourceBundle.getBundle("/Bundle").getString("CombustibleComisionCreated"));
        if (!JsfUtil.isValidationFailed()) {
            items = null;    // Invalidate list of items to trigger re-query.
        }
    }

    public void update() {
        persist(PersistAction.UPDATE, ResourceBundle.getBundle("/Bundle").getString("CombustibleComisionUpdated"));
    }

    public void destroy() {
        persist(PersistAction.DELETE, ResourceBundle.getBundle("/Bundle").getString("CombustibleComisionDeleted"));
        if (!JsfUtil.isValidationFailed()) {
            selected = null; // Remove selection
            items = null;    // Invalidate list of items to trigger re-query.
        }
    }

    public List<CombustibleComision> getItems() {
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
                    if (persistAction == PersistAction.CREATE) {
                        for (CombustibleCupon cupon : cupones) {
                            cupon.setCodCombustibleComision(selected);
                        }
                        selected.setCombustibleCuponList(cupones);
                        getFacade().edit(selected);
                    }
                    else{
                        List<CombustibleCupon> mylist = selected.getCombustibleCuponList();
                        Boolean boo = false;
                        if(mylist == cupones){
                            boo = true;
                        }
                        for (CombustibleCupon cupon : cupones) {
                            cupon.setCodCombustibleComision(selected);
                            if(cupon.getCodCombustibleCupon()!=null){
                                getFacadeCupon().edit(cupon);
                            }
                        }

                        if(selected.getCombustibleCuponList().size()>0){
                            //getFacadeCupon().edit(selected.getCombustibleCuponList().get(0));
                            getFacade().edit(selected);
                        }
                        else{
                            getFacade().edit(selected);
                        }
                    }

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

    public CombustibleComision getCombustibleComision(java.lang.Integer id) {
        return getFacade().find(id);
    }

    public List<CombustibleComision> getItemsAvailableSelectMany() {
        return getFacade().findAll();
    }

    public List<CombustibleComision> getItemsAvailableSelectOne() {
        return getFacade().findAll();
    }

    @FacesConverter(forClass = CombustibleComision.class)
    public static class CombustibleComisionControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            CombustibleComisionController controller = (CombustibleComisionController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "combustibleComisionController");
            return controller.getCombustibleComision(getKey(value));
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
            if (object instanceof CombustibleComision) {
                CombustibleComision o = (CombustibleComision) object;
                return getStringKey(o.getCodCombustibleComision());
            } else {
                Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, "object {0} is of type {1}; expected type: {2}", new Object[]{object, object.getClass().getName(), CombustibleComision.class.getName()});
                return null;
            }
        }

    }

}
