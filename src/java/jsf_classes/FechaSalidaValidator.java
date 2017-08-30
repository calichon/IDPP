/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsf_classes;

import entities.KilometrajeComision;
import entities.Vehiculo;
import java.util.Date;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;
import org.primefaces.component.selectonemenu.SelectOneMenu;
import session_beans.KilometrajeComisionFacade;

/**
 *
 * @author Victor
 */
@FacesValidator("com.idpp.FechaSalidaValidator")
public class FechaSalidaValidator implements Validator {

    @Override
    public void validate(FacesContext facesContext,
        UIComponent component, Object value)
        throws ValidatorException {
        if(value==null){
            FacesMessage msg =
                new FacesMessage("La fecha de salida debe ser mayor a la anterior","La fecha de salida debe ser mayor a la anterior");
             msg.setSeverity(FacesMessage.SEVERITY_ERROR);
             throw new ValidatorException(msg);
        }
        KilometrajeComisionFacade facade = (KilometrajeComisionFacade) component.getAttributes().get("ejbFacade");
        SelectOneMenu vehiculomenu = (SelectOneMenu) component.getAttributes().get("vehiculo");
        Vehiculo vehiculo = (Vehiculo)vehiculomenu.getValue();
        KilometrajeComision last = facade.getLastByVehiculo(vehiculo).get(0);
        if(last != null){
            Date fecha_salida = (Date)value;
            Date antigua_fecha = last.getFechaHoraEntrada();

            if(fecha_salida.after(antigua_fecha)){
//                FacesMessage msg =
//                        new FacesMessage("Fecha correcta","Fecha correcta");
//                     msg.setSeverity(FacesMessage.SEVERITY_ERROR);
//                     throw new ValidatorException(msg);
            }
            else{
                FacesMessage msg =
                        new FacesMessage("La fecha de salida debe ser mayor a la anterior","La fecha de salida debe ser mayor a la anterior");
                     msg.setSeverity(FacesMessage.SEVERITY_ERROR);
                     throw new ValidatorException(msg);
            }

        }
        else{
            //no hay registros anteriores, asi que cualquier fecha esta bien
        }
    }
}
