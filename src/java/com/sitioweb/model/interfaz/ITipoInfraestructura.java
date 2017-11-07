/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.TipoInfraestructuraDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface ITipoInfraestructura {
    
    public boolean registrarTipoInfraestructura(TipoInfraestructuraDTO dto) throws Exception;
    public ArrayList<TipoInfraestructuraDTO> mostrarTipoInfraestructura() throws Exception;
    public ArrayList<TipoInfraestructuraDTO> mostrarTipoInfraestructuraId(int idTipoInfra) throws Exception;
    public boolean eliminarTipoInfraestructura(int idTipoInfra) throws Exception;
    public boolean actualizarTipoInfraestructura(int idTipoInfra, String nombre) throws Exception;
    
}
