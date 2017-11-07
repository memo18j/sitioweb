/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

/**
 *
 * @author CASA
 */
public interface ISesion {
    
    public boolean iniciarSesion(String usuario, String contrasenia) throws Exception;
}
