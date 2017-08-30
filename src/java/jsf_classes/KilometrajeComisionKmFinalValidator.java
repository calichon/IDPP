/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsf_classes;

import java.math.BigInteger;
import java.util.Date;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;
import org.primefaces.component.inputtext.InputText;

/**
 *
 * @author Victor
 */
@FacesValidator("com.idpp.KilometrajeComisionKmFinalValidator")
public class KilometrajeComisionKmFinalValidator implements Validator {

    @Override
    public void validate(FacesContext facesContext,
        UIComponent component, Object value)
        throws ValidatorException {
        if(value==null){
            FacesMessage msg =
                new FacesMessage("El kilometraje final debe ser mayor al kilometraje inicial","El kilometraje final debe ser mayor al kilometraje inicial");
             msg.setSeverity(FacesMessage.SEVERITY_ERROR);
             throw new ValidatorException(msg);
        }
        InputText kilometrajeInicialMenu = (InputText) component.getAttributes().get("kilometrajeInicial");
        BigInteger kilometraje_inicial = (BigInteger)kilometrajeInicialMenu.getValue();

        if(kilometraje_inicial != null){
            BigInteger kilometraje_final = (BigInteger)value;

            if(kilometraje_final.compareTo(kilometraje_inicial)>0){
//                FacesMessage msg =
//                        new FacesMessage("Kilometraje correcto","Kilometraje correcto");
//                     msg.setSeverity(FacesMessage.SEVERITY_ERROR);
//                     throw new ValidatorException(msg);
            }
            else{
                FacesMessage msg =
                        new FacesMessage("El kilometraje final debe ser mayor al kilometraje inicial","El kilometraje final debe ser mayor al kilometraje inicial");
                     msg.setSeverity(FacesMessage.SEVERITY_ERROR);
                     throw new ValidatorException(msg);
            }

        }
        else{
            FacesMessage msg =
            new FacesMessage("Debe ingresar un kilometraje inicial","Debe ingresar un kilometraje inicial");
                     msg.setSeverity(FacesMessage.SEVERITY_ERROR);
                     throw new ValidatorException(msg);
            //no hay registros anteriores, asi que cualquier fecha esta bien
        }
    }
}
