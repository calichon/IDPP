/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session_beans;

import java.io.IOException;
import java.util.logging.Logger;
import javax.inject.Named;
import javax.enterprise.context.Dependent;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Victor
 */
@Named(value = "autenticacionBean")
@Dependent
public class AutenticacionBean {

    /**
     *
     * Creates a new instance of AutenticacionBean
     */
    public AutenticacionBean() {
    }

    private static Logger log = Logger.getLogger(AutenticacionBean.class.getName());

    public void logout() throws IOException, ServletException{
        ExternalContext ec = FacesContext.getCurrentInstance().getExternalContext();
        HttpServletRequest req = (HttpServletRequest)ec.getRequest();
        ec.invalidateSession();
        req.logout();
        ec.redirect(ec.getRequestContextPath() + "/faces/index.xhtml");
    }

}
