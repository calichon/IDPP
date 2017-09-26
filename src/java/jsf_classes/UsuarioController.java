package jsf_classes;

import entities.RolUsuario;
import entities.Usuario;
import jsf_classes.util.JsfUtil;
import jsf_classes.util.JsfUtil.PersistAction;
import session_beans.UsuarioFacade;

import java.io.Serializable;
import java.security.MessageDigest;
import java.util.Iterator;
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

@Named("usuarioController")
@SessionScoped
public class UsuarioController implements Serializable {

    @EJB
    private session_beans.UsuarioFacade ejbFacade;
    @EJB
    private session_beans.RolUsuarioFacade ejbFacadeRol;
    private List<Usuario> items = null;
    private List<RolUsuario> listaRoles;
    private Usuario selected;
    private String oldpass;
    private Boolean administrador;
    private Boolean vehiculo;
    private Boolean asignacionVehiculo;
    private Boolean kilometrajeComision;
    private Boolean combustibleComision;

    public UsuarioController() {
    }

    public Usuario getSelected() {
        return selected;
    }

    public void setSelected(Usuario selected) {
        this.selected = selected;
    }

    protected void setEmbeddableKeys() {
    }

    protected void initializeEmbeddableKey() {
    }

    private UsuarioFacade getFacade() {
        return ejbFacade;
    }

    public Boolean getAdministrador(){
        return administrador;
    }

    public void setAdministrador(Boolean a){
        administrador = a;
    }

    public Boolean getVehiculo(){
        return vehiculo;
    }

    public void setVehiculo(Boolean a){
        vehiculo = a;
    }

    public Boolean getAsignacionVehiculo(){
        return asignacionVehiculo;
    }

    public void setAsignacionVehiculo(Boolean a){
        asignacionVehiculo = a;
    }

    public Boolean getKilometrajeComision(){
        return kilometrajeComision;
    }

    public void setKilometrajeComision(Boolean a){
        kilometrajeComision = a;
    }

    public Boolean getCombustibleComision(){
        return combustibleComision;
    }

    public void setCombustibleComision(Boolean a){
        combustibleComision = a;
    }

    public void prepareEdit() {
        if(selected.getPassword()!=null){
            oldpass=selected.getPassword();
            selected.setPassword("");
        }
        administrador = false;
        vehiculo = false;
        asignacionVehiculo = false;
        kilometrajeComision = false;
        combustibleComision = false;
        String n = selected.getNombre();
        listaRoles = ejbFacadeRol.findByNombre(n);
        for (RolUsuario item:listaRoles) {
            if(item.getRol().equals("Admin")){
                administrador = true;
            }
            if(item.getRol().equals("vehiculo")){
                vehiculo = true;
            }

            if(item.getRol().equals("asignacionVehiculo")){
                asignacionVehiculo = true;
            }

            if(item.getRol().equals("kilometrajeComision")){
                kilometrajeComision = true;
            }

            if(item.getRol().equals("combustibleComision")){
                combustibleComision = true;
            }
        }

    }

    public Usuario prepareCreate() {
        selected = new Usuario();
        initializeEmbeddableKey();
        return selected;
    }

    public void create() {
        persist(PersistAction.CREATE, ResourceBundle.getBundle("/Bundle").getString("UsuarioCreated"));
        if (!JsfUtil.isValidationFailed()) {
            items = null;    // Invalidate list of items to trigger re-query.
        }
    }

    public void update() {
        persist(PersistAction.UPDATE, ResourceBundle.getBundle("/Bundle").getString("UsuarioUpdated"));
    }

    public void destroy() {
        persist(PersistAction.DELETE, ResourceBundle.getBundle("/Bundle").getString("UsuarioDeleted"));
        if (!JsfUtil.isValidationFailed()) {
            selected = null; // Remove selection
            items = null;    // Invalidate list of items to trigger re-query.
        }
    }

    public List<Usuario> getItems() {
        if (items == null) {
            items = getFacade().findAll();
        }
        return items;
    }

    public static String encodePass(String base) {
        try{
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(base.getBytes("UTF-8"));
            StringBuffer hexString = new StringBuffer();

            for (int i = 0; i < hash.length; i++) {
                String hex = Integer.toHexString(0xff & hash[i]);
                if(hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }

            return hexString.toString();
        } catch(Exception ex){
           throw new RuntimeException(ex);
        }
    }

    private void persist(PersistAction persistAction, String successMessage) {
        if (selected != null) {
            setEmbeddableKeys();
            try {
                if (persistAction != PersistAction.DELETE) {
                    if (persistAction == PersistAction.CREATE) {
                        String newpass = selected.getPassword().trim();
                        selected.setPassword(encodePass(newpass));
                        getFacade().edit(selected);
                        if(administrador == true){
                            RolUsuario newRol = new RolUsuario();
                            newRol.setNombre(selected.getNombre());
                            newRol.setRol("Admin");
                            ejbFacadeRol.edit(newRol);
                        }
                        if(vehiculo == true){
                            RolUsuario newRol = new RolUsuario();
                            newRol.setNombre(selected.getNombre());
                            newRol.setRol("vehiculo");
                            ejbFacadeRol.edit(newRol);
                        }

                        if(asignacionVehiculo == true){
                            RolUsuario newRol = new RolUsuario();
                            newRol.setNombre(selected.getNombre());
                            newRol.setRol("asignacionVehiculo");
                            ejbFacadeRol.edit(newRol);
                        }

                        if(kilometrajeComision == true){
                            RolUsuario newRol = new RolUsuario();
                            newRol.setNombre(selected.getNombre());
                            newRol.setRol("kilometrajeComision");
                            ejbFacadeRol.edit(newRol);
                        }

                        if(combustibleComision == true){
                            RolUsuario newRol = new RolUsuario();
                            newRol.setNombre(selected.getNombre());
                            newRol.setRol("combustibleComision");
                            ejbFacadeRol.edit(newRol);
                        }
                    }
                    else{
                        String newpass = selected.getPassword().trim();
                        if(newpass.equals("")){
                            selected.setPassword(oldpass);
                        }
                        else{
                            selected.setPassword(encodePass(newpass));
                        }
                        getFacade().edit(selected);
                        Boolean administradorExiste = false;
                        Boolean vehiculoExiste = false;
                        Boolean asignacionVehiculoExiste = false;
                        Boolean kilometrajeComisionExiste = false;
                        Boolean combustibleComisionExiste = false;

                        for (RolUsuario item:listaRoles) {
                            if(item.getRol().equals("Admin")){
                                administradorExiste = true;
                                if(administrador==false){
                                    ejbFacadeRol.remove(item);
                                    continue;
                                }
                            }
                            if(item.getRol().equals("vehiculo")){
                                vehiculoExiste = true;
                                if(vehiculo==false){
                                    ejbFacadeRol.remove(item);
                                    continue;
                                }
                            }

                            if(item.getRol().equals("asignacionVehiculo")){
                                asignacionVehiculoExiste = true;
                                if(asignacionVehiculo==false){
                                    ejbFacadeRol.remove(item);
                                    continue;
                                }
                            }

                            if(item.getRol().equals("kilometrajeComision")){
                                kilometrajeComisionExiste = true;
                                if(kilometrajeComision==false){
                                    ejbFacadeRol.remove(item);
                                    continue;
                                }
                            }

                            if(item.getRol().equals("combustibleComision")){
                                combustibleComisionExiste = true;
                                if(combustibleComision==false){
                                    ejbFacadeRol.remove(item);
                                    continue;
                                }
                            }
                        }
                        if(administradorExiste==false && administrador==true){
                            RolUsuario newRol = new RolUsuario();
                            newRol.setNombre(selected.getNombre());
                            newRol.setRol("Admin");
                            ejbFacadeRol.edit(newRol);
                        }
                        if(vehiculoExiste==false && vehiculo==true){
                            RolUsuario newRol = new RolUsuario();
                            newRol.setNombre(selected.getNombre());
                            newRol.setRol("vehiculo");
                            ejbFacadeRol.edit(newRol);
                        }
                        if(asignacionVehiculoExiste==false && asignacionVehiculo==true){
                            RolUsuario newRol = new RolUsuario();
                            newRol.setNombre(selected.getNombre());
                            newRol.setRol("asignacionVehiculo");
                            ejbFacadeRol.edit(newRol);
                        }
                        if(kilometrajeComisionExiste==false && kilometrajeComision==true){
                            RolUsuario newRol = new RolUsuario();
                            newRol.setNombre(selected.getNombre());
                            newRol.setRol("kilometrajeComision");
                            ejbFacadeRol.edit(newRol);
                        }
                        if(combustibleComisionExiste==false && combustibleComision==true){
                            RolUsuario newRol = new RolUsuario();
                            newRol.setNombre(selected.getNombre());
                            newRol.setRol("combustibleComision");
                            ejbFacadeRol.edit(newRol);
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

    public Usuario getUsuario(java.lang.Integer id) {
        return getFacade().find(id);
    }

    public List<Usuario> getItemsAvailableSelectMany() {
        return getFacade().findAll();
    }

    public List<Usuario> getItemsAvailableSelectOne() {
        return getFacade().findAll();
    }

    @FacesConverter(forClass = Usuario.class)
    public static class UsuarioControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            UsuarioController controller = (UsuarioController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "usuarioController");
            return controller.getUsuario(getKey(value));
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
            if (object instanceof Usuario) {
                Usuario o = (Usuario) object;
                return getStringKey(o.getId());
            } else {
                Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, "object {0} is of type {1}; expected type: {2}", new Object[]{object, object.getClass().getName(), Usuario.class.getName()});
                return null;
            }
        }

    }

}
