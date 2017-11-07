/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.TipoInfoDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface ITipoInfo {
    
    public boolean registrarTipoInfo(TipoInfoDTO dto) throws Exception;
    public ArrayList<TipoInfoDTO> mostrarTipoInfo() throws Exception;
    public boolean eliminarTipoInfo(int idinfo) throws Exception;
    public boolean actualizarTipoInfo(int idinfo, String descripcion, int pestana) throws Exception;
    
}
