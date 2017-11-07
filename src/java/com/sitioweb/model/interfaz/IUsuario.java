/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.UsuarioDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IUsuario {
    
    public boolean registrarUsuario(UsuarioDTO dto) throws Exception;
    public ArrayList<UsuarioDTO> mostrarUsuario() throws Exception;
    public boolean eliminarUsuario(int codusuario) throws Exception;
    public boolean actualizarDatosUsuario(int codusuario, String contrasena, String nombre, 
            String correo, int telefono) throws Exception;
    
}
