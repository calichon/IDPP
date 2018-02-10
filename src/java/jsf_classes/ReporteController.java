
package jsf_classes;
import com.sun.java.swing.plaf.windows.resources.windows;
import entities.Departamento;
import entities.Imagen;
import entities.Linea;
import entities.Marca;
import entities.Municipio;
import entities.Persona;
import entities.Puesto;
import entities.Reporte;
import entities.Vehiculo;
import java.awt.Desktop;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import jsf_classes.util.JsfUtil;
import jsf_classes.util.JsfUtil.PersistAction;
import session_beans.VehiculoFacade;
import session_beans.ImagenFacade;
import session_beans.MunicipioFacade;
import java.io.Serializable;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import javax.faces.event.ActionEvent;
import javax.faces.event.AjaxBehaviorEvent;
import javax.servlet.http.HttpServletRequest;
import org.primefaces.context.RequestContext;
import org.primefaces.event.FileUploadEvent;
import org.primefaces.model.UploadedFile;


@Named("reporteController")
@SessionScoped
public class ReporteController implements Serializable {
    private Map<String,Map<String,String>> data = new HashMap<String, Map<String,String>>();
    private String reporte;
    private TreeMap<String,String> reportes;
    private Date fechaInicio;
    private Date fechaFin;
    private String noPlaca;

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public Date getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }

    public String getNoPlaca() {
        return noPlaca;
    }

    public void setNoPlaca(String noPlaca) {
        this.noPlaca = noPlaca;
    }
     
    @PostConstruct
    public void init() {
        reportes  = new TreeMap<String, String>();
        reportes.put("Reporte 1", "Reporte 1");
        reportes.put("Reporte 2", "Reporte 2");
        reportes.put("Reporte 3", "Reporte 3");
        reportes.put("Reporte 4", "Reporte 4");
        reportes.put("Reporte 5", "Reporte 5");
        reportes.put("Reporte 6", "Reporte 6");
        reportes.put("Reporte 7", "Reporte 7");
        reportes.put("Reporte 8", "Reporte 8");
        reportes.put("Reporte 9", "Reporte 9");         
    }
    public Map<String, Map<String, String>> getData() {
        return data;
    }
    public String getreporte() {
        return reporte;
    }
 
    public void setreporte(String reporte) {
        this.reporte = reporte;
    }
    
    public Map<String, String> getreportes() {
        return reportes;
    }
    
    public void generarReporte() throws ClassNotFoundException, IOException, SQLException {
        if(this.reporte!=null){
            String stReport= "http://IP_server:80/jasperserver/flow.html?_flowId=viewReportFlow&reportUnit=/public/SISVIG/PRD/Tuberculosis/";
            if (this.reporte.equals("Reporte 1"))
                 stReport += "exportar_tb_excel";
            if (this.reporte.equals( "Reporte 2"))
                 stReport += "consolidado_sexo_edad";
            if (this.reporte.equals( "Reporte 3") )
                 stReport += "LISTADO_PACIENTES_TB_NO_FORM";
            if (this.reporte.equals( "Reporte 5") )
                 stReport += "exportar_tb_excel_encabezado";
             if (this.reporte.equals( "Reporte 6") )
                 stReport += "consolidado_tipo_region";
             if (this.reporte.equals( "Reporte 7") )
                 stReport += "AnualOMS";
             if (this.reporte.equals( "Reporte 8") )
                 stReport += "Cohortes";
             if (this.reporte.equals( "Reporte 9") )
                 stReport += "Informe_General_Region";
             //stReport += filtro;             
             stReport += "&j_username=username&j_password=pssJasper&output=xlsx";
             RequestContext context = RequestContext.getCurrentInstance();
             context.execute("window.open('"+stReport+"', 'Reporte',\"toolbar=yes, status=yes, status=yes, scrollbars=yes, resizable=yes, menubar=yes, width=400, height=400\")");
             limpiarDatos();
             //recarga la pagina actual para limpiar los datos
             ExternalContext ec = FacesContext.getCurrentInstance().getExternalContext();
             ec.redirect(((HttpServletRequest) ec.getRequest()).getRequestURI());
        }
    }
    public void limpiarDatos(){
        this.reporte=null;
        this.fechaFin=null;
        this.noPlaca=null;
        this.fechaInicio=null;
    }
}
