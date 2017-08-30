/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsf_classes;

import entities.KilometrajeComision;
import entities.Vehiculo;
import java.math.BigInteger;
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
@FacesValidator("com.idpp.KilometrajeComisionKmValidator")
public class KilometrajeComisionKmValidator implements Validator {

    @Override
    public void validate(FacesContext facesContext,
        UIComponent component, Object value)
        throws ValidatorException {
        if(value==null){
            FacesMessage msg =
                new FacesMessage("El kilometraje debe ser mayor al anterior","El kilometraje debe ser mayor al anterior");
             msg.setSeverity(FacesMessage.SEVERITY_ERROR);
             throw new ValidatorException(msg);
        }
        KilometrajeComisionFacade facade = (KilometrajeComisionFacade) component.getAttributes().get("ejbFacade");
        SelectOneMenu vehiculomenu = (SelectOneMenu) component.getAttributes().get("vehiculo");
        Vehiculo vehiculo = (Vehiculo)vehiculomenu.getValue();
        KilometrajeComision last = facade.getLastByVehiculo(vehiculo).get(0);
        if(last != null){
            BigInteger km_actual = (BigInteger)value;
            BigInteger antiguo_km = last.getKilometrajeFinal();

            if(km_actual.compareTo(antiguo_km) >= 0){
//                FacesMessage msg =
//                        new FacesMessage("Kilometraje correcto","Kilometraje correcto");
//                     msg.setSeverity(FacesMessage.SEVERITY_ERROR);
//                     throw new ValidatorException(msg);
            }
            else{
                FacesMessage msg =
                        new FacesMessage("El kilometraje debe ser mayor al anterior","El kilometraje debe ser mayor al anterior");
                     msg.setSeverity(FacesMessage.SEVERITY_ERROR);
                     throw new ValidatorException(msg);
            }

        }
        else{
            //no hay registros anteriores, asi que cualquier fecha esta bien
        }
    }
}
