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
import org.primefaces.component.calendar.Calendar;
import session_beans.KilometrajeComisionFacade;

/**
 *
 * @author Victor
 */
@FacesValidator("com.idpp.FechaEntradaValidator")
public class FechaEntradaValidator implements Validator {

    @Override
    public void validate(FacesContext facesContext,
        UIComponent component, Object value)
        throws ValidatorException {
        if(value==null){
            FacesMessage msg =
                new FacesMessage("La fecha de entrada debe ser mayor a la fecha de salida","La fecha de entrada debe ser mayor a la fecha de salida");
             msg.setSeverity(FacesMessage.SEVERITY_ERROR);
             throw new ValidatorException(msg);
        }
        Calendar fechaSalidaMenu = (Calendar) component.getAttributes().get("fechaSalida");
        Date antigua_fecha = (Date)fechaSalidaMenu.getValue();

        if(antigua_fecha != null){
            Date fecha_salida = (Date)value;

            if(fecha_salida.after(antigua_fecha)){
//                FacesMessage msg =
//                        new FacesMessage("Fecha correcta","Fecha correcta");
//                     msg.setSeverity(FacesMessage.SEVERITY_ERROR);
//                     throw new ValidatorException(msg);
            }
            else{
                FacesMessage msg =
                        new FacesMessage("La fecha de entrada debe ser mayor a la fecha de salida","La fecha de entrada debe ser mayor a la fecha de salida");
                     msg.setSeverity(FacesMessage.SEVERITY_ERROR);
                     throw new ValidatorException(msg);
            }

        }
        else{
            FacesMessage msg =
            new FacesMessage("Debe ingresar una fecha de salida","Debe ingresar una fecha de salida");
                     msg.setSeverity(FacesMessage.SEVERITY_ERROR);
                     throw new ValidatorException(msg);
            //no hay registros anteriores, asi que cualquier fecha esta bien
        }
    }
}
