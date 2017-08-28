/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsf_classes;

import entities.CombustibleComision;
import entities.CombustibleCupon;
import java.math.BigInteger;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.component.UIInput;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

/**
 *
 * @author Victor
 */
@FacesValidator("com.idpp.CuponValidator")
public class CuponValidator implements Validator {
    @Override
    public void validate(FacesContext facesContext,
        UIComponent component, Object value)
        throws ValidatorException {

        CombustibleComisionController controller = (CombustibleComisionController) component.getAttributes().get("controller");
        CombustibleComision selected = controller.getSelected();
        Integer id = selected.getCodCombustibleComision();
        CombustibleCupon cupon = (CombustibleCupon) component.getAttributes().get("cupon");
        UIInput UIcuponInicial = (UIInput)component.getAttributes().get("cuponInicial");
        Object inicialValue = UIcuponInicial.getValue();
        if(inicialValue!=null && value != null){
            BigInteger cuponInicial = new BigInteger(inicialValue.toString());
            BigInteger cuponFinal = new BigInteger(value.toString());
            CombustibleCuponController cuponController = (CombustibleCuponController) component.getAttributes().get("combustibleCuponController");

            List<CombustibleCupon> lista = cuponController.getItems();
            if(lista.size()>0){
                for (CombustibleCupon cuponl : lista) {
                    BigInteger ncf = cuponl.getNumeroCuponFinal();
                    BigInteger nci = cuponl.getNumeroCuponInicial();
                            //x1 <= y2 && y1 <= x2
                    if((cuponInicial.compareTo(cuponl.getNumeroCuponFinal())<=0) && (cuponl.getNumeroCuponInicial().compareTo(cuponFinal)<=0)){
                        CombustibleComision cuponCombustibleComision = cuponl.getCodCombustibleComision();
                        if(cuponCombustibleComision != null){
                            Integer id2 = cuponCombustibleComision.getCodCombustibleComision();
                            Integer id3 = 5;
                            if(id!=null && id==id2){

                            }
                            else{
                                FacesMessage msg =
                                new FacesMessage("Algunos de los cupones ya están registrados","Algunos de los cupones ya están registrados");
                                msg.setSeverity(FacesMessage.SEVERITY_ERROR);
                                throw new ValidatorException(msg);
                            }
                        }
                        else{
                            FacesMessage msg =
                            new FacesMessage("Algunos de los cupones ya están registrados","Algunos de los cupones ya están registrados");
                            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
                            throw new ValidatorException(msg);
                        }

                    }
                }
            }

            //Validación que los cupones no estén repetidos dentro del mismo formulario
//            List<CombustibleCupon> listFormulario = controller.getCupones();
//            if(listFormulario.size()>0){
//                for (CombustibleCupon cuponl : listFormulario) {
//                    BigInteger ncf = cuponl.getNumeroCuponFinal();
//                    BigInteger nci = cuponl.getNumeroCuponInicial();
//                            //x1 <= y2 && y1 <= x2
//                    if(ncf!=null && nci != null){
//                        if((cuponInicial.compareTo(cuponl.getNumeroCuponFinal())<=0) && (cuponl.getNumeroCuponInicial().compareTo(cuponFinal)<=0)){
//                            FacesMessage msg =
//                                new FacesMessage("Algunos de los cupones ya están registrados","Algunos de los cupones ya están registrados");
//                            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
//                            throw new ValidatorException(msg);
//                        }
//                    }
//                }
//            }
        }
        else{
            FacesMessage msg =
                new FacesMessage("Debe llenar todos los cupones","Debe llenar todos los cupones");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }

   }
}
