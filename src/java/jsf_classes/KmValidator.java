/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsf_classes;


import entities.CombustibleComision;
import entities.Vehiculo;
import java.math.BigInteger;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;
import session_beans.CombustibleComisionFacade;

/**
 *
 * @author Victor
 */
@FacesValidator("com.idpp.KmValidator")
public class KmValidator implements Validator {
    @Override
    public void validate(FacesContext facesContext,
        UIComponent component, Object value)
        throws ValidatorException {
        StringBuilder url = new StringBuilder();
        if(value==null){
            FacesMessage msg =
                new FacesMessage("El kilometraje debe ser mayor que el anterior kilometraje","El kilometraje debe ser mayor que el anterior kilometraje");
             msg.setSeverity(FacesMessage.SEVERITY_ERROR);
             throw new ValidatorException(msg);
        }
        BigInteger kmactual = new BigInteger(value.toString());
        CombustibleComision selected = (CombustibleComision) component.getAttributes().get("selected");
        CombustibleComisionFacade facade = (CombustibleComisionFacade) component.getAttributes().get("ejbFacade");
        Vehiculo v = selected.getCodVehiculo();
        List<CombustibleComision> lista = facade.findByVehiculo(v);
        CombustibleComision anterior = null;
        if(lista.size()>0){
            anterior = lista.get(0);
        }
        if(kmactual.compareTo(BigInteger.ZERO) > 0){
            if(anterior != null){
                if(anterior.getKilometrajeActual().compareTo(kmactual) > 0 ){
                    FacesMessage msg =
                        new FacesMessage("El kilometraje debe ser mayor que el anterior kilometraje","El kilometraje debe ser mayor que el anterior kilometraje");
                     msg.setSeverity(FacesMessage.SEVERITY_ERROR);
                     throw new ValidatorException(msg);
                }
                else{
//                    FacesMessage msg =
//                        new FacesMessage("Kilometraje correcto","Kilometraje correcto");
//                     msg.setSeverity(FacesMessage.SEVERITY_ERROR);
//                     throw new ValidatorException(msg);
                }
            }
        }
        else{
            FacesMessage msg =
                new FacesMessage("El valor debe ser mayor que 0","El valor debe ser mayor que 0");
             msg.setSeverity(FacesMessage.SEVERITY_ERROR);
             throw new ValidatorException(msg);
        }


   }

}
