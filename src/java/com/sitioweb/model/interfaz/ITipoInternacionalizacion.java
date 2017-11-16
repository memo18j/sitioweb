/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.TipoInternacionalizacionDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface ITipoInternacionalizacion {
    
    public boolean registrarTipoInternac(TipoInternacionalizacionDTO dto) throws Exception;
    public ArrayList<TipoInternacionalizacionDTO> mostrarTipoInternac() throws Exception;
    public ArrayList<TipoInternacionalizacionDTO> mostrarTipoInternacId(int idTipoInternac) throws Exception;
    public boolean eliminarTipoInternac(TipoInternacionalizacionDTO dto) throws Exception;
    public boolean actualizarTipoInternac(int idTipoInternac, String descripcion) throws Exception;
    
}
