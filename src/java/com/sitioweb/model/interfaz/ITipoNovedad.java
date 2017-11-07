/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.TipoNovedadDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface ITipoNovedad {
    
    public boolean registrarTipoNovedad(TipoNovedadDTO dto) throws Exception;
    public ArrayList<TipoNovedadDTO> mostrarTipoNovedad() throws Exception;
    public boolean eliminarTipoNovedad(int idTipoNov) throws Exception;
    public boolean actualizarTipoNovedad(int idTipoNov, String nombre) throws Exception;
    
}
