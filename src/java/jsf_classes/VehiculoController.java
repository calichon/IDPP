package jsf_classes;

import entities.Departamento;
import entities.Imagen;
import entities.Linea;
import entities.Marca;
import entities.Municipio;
import entities.Persona;
import entities.Puesto;
import entities.Vehiculo;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import jsf_classes.util.JsfUtil;
import jsf_classes.util.JsfUtil.PersistAction;
import session_beans.VehiculoFacade;
import session_beans.ImagenFacade;
import session_beans.MunicipioFacade;
import java.io.Serializable;
import java.security.MessageDigest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import javax.faces.event.AjaxBehaviorEvent;
import org.primefaces.context.RequestContext;
import org.primefaces.event.FileUploadEvent;
import org.primefaces.model.UploadedFile;


@Named("vehiculoController")
@SessionScoped
public class VehiculoController implements Serializable {
    @EJB
    private session_beans.VehiculoFacade ejbFacade;
    private session_beans.MunicipioFacade ejbFacadeMunicipios;
    @EJB
    private session_beans.ImagenFacade ejbFacadeImagen;
    @EJB
    private session_beans.LineaFacade ejbFacadeLinea;
    private List<Vehiculo> items = null;
    private List<Municipio> itemsMunicipio = null;
    private List<Linea> itemsLinea = null;
    private List<Imagen> itemsImagenDownload = new ArrayList<Imagen>();
    private List<UploadedFile> itemsImagen = new ArrayList<UploadedFile>();
    private Vehiculo selected;
    private Municipio selectedMunicipio;
    private Imagen selectedImagen;
    private int selectedDepartamento = 0;
    private int selectedMarca = 0;
    private boolean disableButtonCreateEnabled = false;

    public VehiculoController() {
    }

    public Vehiculo getSelected() {
        return selected;
    }

    public void setSelected(Vehiculo selected) {
        this.selected = selected;
    }

    protected void setEmbeddableKeys() {
    }

    protected void initializeEmbeddableKey() {
    }

    private VehiculoFacade getFacade() {
        return ejbFacade;
    }

    private MunicipioFacade getFacadeMunicipios() {
        return ejbFacadeMunicipios;
    }

    private ImagenFacade getFacadeImagen() {
        return ejbFacadeImagen;
    }

    public Vehiculo prepareCreate() {
        selected = new Vehiculo();
        initializeEmbeddableKey();
        itemsImagen.clear();
        return selected;
    }
    
    public List<Vehiculo> getVehiculosDisponibles() {
        List<Vehiculo> itemsDisponiblesFecha = null;
        if (itemsDisponiblesFecha == null) {
            itemsDisponiblesFecha = getFacade().findOrderByLicense();
        }
        return itemsDisponiblesFecha;
    }

    public void create() {
        persist(PersistAction.CREATE, ResourceBundle.getBundle("/Bundle").getString("VehiculoCreated"));
        if (!JsfUtil.isValidationFailed()) {
            items = null;    // Invalidate list of items to trigger re-query.
            //aqui hacer el insert de las imágenes
            for(int i = 0; i<itemsImagen.size(); i++){
                //inicia creación de la imagen en filesystem y guardado de la misma

                selectedImagen = new Imagen();
                String basePath;

                FacesContext ctx = FacesContext.getCurrentInstance();
                basePath = ctx.getExternalContext().getInitParameter("imageSavePath");

                String unEncryptedFileName;
                unEncryptedFileName = itemsImagen.get(i).getFileName();
                String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
                unEncryptedFileName = timeStamp + "_" + unEncryptedFileName;
                String encryptedFileName = "";

                try{
                    //MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    //messageDigest.update(unEncryptedFileName.getBytes());
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                    byte[] arr = messageDigest.digest(unEncryptedFileName.getBytes());

                    StringBuffer hexString = new StringBuffer();
                    for (int j=0;j<arr.length;j++) {
                        hexString.append(Integer.toHexString(0xFF & arr[j]));
                    }

                    encryptedFileName = hexString.toString();

                    //encryptedFileName = Base64.getEncoder().encodeToString(arr);
                    //encryptedFileName = new String(messageDigest.digest());
                }
                catch(Exception e){

                }

                String fullFilePath = basePath + encryptedFileName + '_' + itemsImagen.get(i).getFileName();
                String urlFilePath = ctx.getExternalContext().getInitParameter("urlImagePath");

                UploadedFile uploadedFile;
                uploadedFile = itemsImagen.get(i);

                try{
                    File f = new File(basePath, encryptedFileName + '_' + unEncryptedFileName);
                    FileOutputStream fos = new FileOutputStream(f);

                    InputStream in = uploadedFile.getInputstream();
                    //OutputStream out = new FileOutputStream(new File(fullFilePath));
                    OutputStream out = fos;
                    int read = 0;
                    byte[] bytes = new byte[1024];
                    while ((read = in.read(bytes)) != -1) {
                        out.write(bytes, 0, read);
                    }
                    in.close();
                    out.flush();
                    out.close();
                    //selectedImagen.setPathImagen(fullFilePath);
                    selectedImagen.setPathImagen(urlFilePath + encryptedFileName + '_' + unEncryptedFileName);
                }
                catch(Exception e){
                    System.out.println(e.getCause().toString());
                }
                //finaliza creación de la imagen en filesystem y guardado de la misma
                //inicia creación de la imagen en db y guardado de la misma
                try {
                    long size = itemsImagen.get(i).getSize();
                    byte[] data;
                    InputStream stream = itemsImagen.get(i).getInputstream();
                    data = new byte[(int) size];
                    stream.read(data, 0, (int) size);
                    stream.close();
                    selectedImagen.setImagenb(data);
                }
                catch (Exception e) {
                }
                //finaliza creación de la imagen en db y guardado de la misma
                //actualizacion de la entidad de imagen con las llaves foraneas que corresponden y con los paths
                selectedImagen.setActivo(Boolean.TRUE);
                selectedImagen.setCodVehiculo(selected);
                //hacer persistente a través de su propio método de persist
                persistImage(PersistAction.CREATE, "Imagen creada");
                //persist(PersistAction.CREATE, ResourceBundle.getBundle("/Bundle").getString("VehiculoCreated"));
                if (!JsfUtil.isValidationFailed()) {
                    System.out.println("Exito");
                }
                else{
                    System.out.println("Fracaso");
                }
            }
        }

    }

    public void update() {
        persist(PersistAction.UPDATE, ResourceBundle.getBundle("/Bundle").getString("VehiculoUpdated"));
        for(int i = 0; i<itemsImagen.size(); i++){
                //inicia creación de la imagen en filesystem y guardado de la misma

                selectedImagen = new Imagen();
                String basePath;

                FacesContext ctx = FacesContext.getCurrentInstance();
                basePath = ctx.getExternalContext().getInitParameter("imageSavePath");

                String unEncryptedFileName;
                unEncryptedFileName = itemsImagen.get(i).getFileName();
                String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
                unEncryptedFileName = timeStamp + "_" + unEncryptedFileName;
                String encryptedFileName = "";

                try{
                    //MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    //messageDigest.update(unEncryptedFileName.getBytes());
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                    byte[] arr = messageDigest.digest(unEncryptedFileName.getBytes());

                    StringBuffer hexString = new StringBuffer();
                    for (int j=0;j<arr.length;j++) {
                        hexString.append(Integer.toHexString(0xFF & arr[j]));
                    }

                    encryptedFileName = hexString.toString();

                    //encryptedFileName = Base64.getEncoder().encodeToString(arr);
                    //encryptedFileName = new String(messageDigest.digest());
                }
                catch(Exception e){

                }

                String fullFilePath = basePath + encryptedFileName + '_' + itemsImagen.get(i).getFileName();

                UploadedFile uploadedFile;
                uploadedFile = itemsImagen.get(i);

                try{
                    File f = new File(basePath, encryptedFileName + '_' + unEncryptedFileName);
                    FileOutputStream fos = new FileOutputStream(f);

                    InputStream in = uploadedFile.getInputstream();
                    //OutputStream out = new FileOutputStream(new File(fullFilePath));
                    OutputStream out = fos;
                    int read = 0;
                    byte[] bytes = new byte[1024];
                    while ((read = in.read(bytes)) != -1) {
                        out.write(bytes, 0, read);
                    }
                    in.close();
                    out.flush();
                    out.close();
                    selectedImagen.setPathImagen(fullFilePath);
                }
                catch(Exception e){
                    System.out.println(e.getCause().toString());
                }
                //finaliza creación de la imagen en filesystem y guardado de la misma
                //inicia creación de la imagen en db y guardado de la misma
                try {
                    long size = itemsImagen.get(i).getSize();
                    byte[] data;
                    InputStream stream = itemsImagen.get(i).getInputstream();
                    data = new byte[(int) size];
                    stream.read(data, 0, (int) size);
                    stream.close();
                    selectedImagen.setImagenb(data);
                }
                catch (Exception e) {
                }
                //finaliza creación de la imagen en db y guardado de la misma
                //actualizacion de la entidad de imagen con las llaves foraneas que corresponden y con los paths
                selectedImagen.setActivo(Boolean.TRUE);
                selectedImagen.setCodVehiculo(selected);
                //hacer persistente a través de su propio método de persist
                persistImage(PersistAction.CREATE, "Imagen creada");
                //persist(PersistAction.CREATE, ResourceBundle.getBundle("/Bundle").getString("VehiculoCreated"));
                if (!JsfUtil.isValidationFailed()) {
                    System.out.println("Exito");
                }
                else{
                    System.out.println("Fracaso");
                }
            }
    }

    public void destroy() {
        persist(PersistAction.DELETE, ResourceBundle.getBundle("/Bundle").getString("VehiculoDeleted"));
        if (!JsfUtil.isValidationFailed()) {
            selected = null; // Remove selection
            items = null;    // Invalidate list of items to trigger re-query.

        }
    }

    public void destroyImagen(Imagen itemI) {
        selectedImagen = itemI;
        persistImage(PersistAction.DELETE, ResourceBundle.getBundle("/Bundle").getString("ImagenDeleted"));
        if (!JsfUtil.isValidationFailed()) {
            selectedImagen = null; // Remove selection
        }
        selected.getImagenList().remove(itemI);

        //items = getFacade().findAll();
        //getFacade().refreshEntity(selected);
        getFacade().refreshEntity();

    }

    public List<Vehiculo> getItems() {
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
                        getFacade().create(selected);
                    }
                    else{
                        getFacade().edit(selected);
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

    private void persistImage(PersistAction persistAction, String successMessage) {
        if (selectedImagen != null) {
            setEmbeddableKeys();
            try {
                if (persistAction != PersistAction.DELETE) {
                    if (persistAction == PersistAction.CREATE) {
                         getFacadeImagen().create(selectedImagen);
                         selected.getImagenList().add(selectedImagen);
                    }
                    else{
                    getFacadeImagen().edit(selectedImagen);
                    }
                } else {
                    getFacadeImagen().remove(selectedImagen);
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

    public Vehiculo getVehiculo(java.lang.Integer id) {
        return getFacade().find(id);
    }

    public List<Vehiculo> getItemsAvailableSelectMany() {
        return getFacade().findAll();
    }

    public List<Vehiculo> getItemsAvailableSelectOne() {
        return getFacade().findAll();
    }

    public void onDepartamentoChange() {
            Departamento thisDepartamento;
            thisDepartamento = selected.getCodDepartamento();
            selectedDepartamento = thisDepartamento.getCodDepartamento();
            if(selectedDepartamento > 0 ){
                itemsMunicipio = ejbFacade.getMunicipioOrderedListLimitsDepartment(thisDepartamento);
            }
            else{
                itemsMunicipio = null;
            }
    }

    public void onMarcaChange() {
            Marca thisMarca;
            thisMarca = selected.getCodMarca();
            selectedMarca = thisMarca.getCodMarca();
            if(selectedMarca > 0 ){
                itemsLinea = ejbFacadeLinea.getLineaOrderedListLimitsMarca(thisMarca);
            }
            else{
                itemsLinea = null;
            }
    }

    public void verifyPlacaOnCreate(){
        boolean placaFounded = false;
        placaFounded = getFacade().existsPlaca(selected.getPlaca());
        if(placaFounded){
            disableButtonCreateEnabled = true;
            FacesContext.getCurrentInstance().addMessage("msgs", new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Placa duplicada"));
        }
        else{
            disableButtonCreateEnabled = false;
    }
    }

    public void verifyPlacaOnUpdate(){
        boolean placaFounded = false;
        String placaFound = "";
        String placaForm = "";
        placaFounded = getFacade().existsPlaca(selected.getPlaca());
        placaFound = getFacade().getPlacaById(selected.getCodVehiculo());
        placaForm = selected.getPlaca();
        if(placaFounded && (!placaFound.equals(placaForm))){
            disableButtonCreateEnabled = true;
            FacesContext.getCurrentInstance().addMessage("msgs", new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Placa duplicada"));
        }
        else{
            disableButtonCreateEnabled = false;
        }
        }

    public boolean getButtonCreateEnabled(){
        return disableButtonCreateEnabled;
    }

    public List<Municipio> getItemsMunicipio(){
        Departamento thisDepartamento;
        thisDepartamento = selected.getCodDepartamento();
        if(thisDepartamento!=null){
            selectedDepartamento = thisDepartamento.getCodDepartamento();
            if(selectedDepartamento > 0 ){
                itemsMunicipio = ejbFacade.getMunicipioOrderedListLimitsDepartment(thisDepartamento);
            }
            else{
                itemsMunicipio = null;
            }
        }
        else{
            itemsMunicipio = null;
        }
        return itemsMunicipio;
    }

    public List<Linea> getItemsLinea(){
        Marca thisMarca;
        thisMarca = selected.getCodMarca();
        if(thisMarca!=null){
            selectedMarca = thisMarca.getCodMarca();
            if(selectedMarca > 0 ){
                itemsLinea = ejbFacadeLinea.getLineaOrderedListLimitsMarca(thisMarca);
            }
            else{
                itemsLinea = null;
            }
        }
        else{
            itemsLinea = null;
        }
        return itemsLinea;
    }


    public void handleFileUpload(FileUploadEvent event) {
        FacesMessage message = new FacesMessage("Succesful", event.getFile().getFileName() + " is uploaded.");
        FacesContext.getCurrentInstance().addMessage(null, message);
        UploadedFile tempUF;
        tempUF = event.getFile();
        if(tempUF!=null){
            itemsImagen.add(tempUF);
        }
    }

    public void onPersonaAsignacionChange(){
        Persona receptor = selected.getCodPersonaAsignacion();
        Puesto p = receptor.getCodPuesto();
        if(p != null){
            selected.setCodPueston(p);
        }
    }

    @FacesConverter(forClass = Vehiculo.class)
    public static class VehiculoControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            VehiculoController controller = (VehiculoController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "vehiculoController");
            return controller.getVehiculo(getKey(value));
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
            if (object instanceof Vehiculo) {
                Vehiculo o = (Vehiculo) object;
                return getStringKey(o.getCodVehiculo());
            } else {
                Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, "object {0} is of type {1}; expected type: {2}", new Object[]{object, object.getClass().getName(), Vehiculo.class.getName()});
                return null;
            }
        }
    }
}
