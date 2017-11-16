/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.TipoExtensionDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface ITipoExtension {
    
    public boolean registrarTipoExt(TipoExtensionDTO dto) throws Exception;
    public ArrayList<TipoExtensionDTO> mostrarTipoExt() throws Exception;
    public boolean eliminarTipoExt(int idtipo) throws Exception;
    public boolean actualizarTipoExt(int idtipo, String descripcion) throws Exception;
    
}
