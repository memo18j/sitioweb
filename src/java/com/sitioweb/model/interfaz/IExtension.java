/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.ExtensionDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IExtension {
    
    public boolean registrarExtension(ExtensionDTO dto) throws Exception;
    public ArrayList<ExtensionDTO> mostrarExtension() throws Exception;
    public ArrayList<ExtensionDTO> mostrarExtensionId(int idExtension) throws Exception;
    public boolean eliminarExtension(ExtensionDTO dto) throws Exception;
    public boolean actualizarExtension(int idExtension, int tipoext, String descripcion, String nombre, 
            String link, String documento) throws Exception;
    
}
