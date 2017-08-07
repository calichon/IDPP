/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import org.primefaces.model.UploadedFile;

/**
 *
 * @author Carlos
 */
public class ImageToDownload {
    private Imagen myImage;

    public ImageToDownload() {
        this.myImage = null;
    }

    public String getValue() {
        return myImage.getPathImagen();
    }

    public void setValue(String value) {
        this.myImage.setPathImagen(value);
    }
    
}
