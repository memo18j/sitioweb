/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.TipoProgramaDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface ITipoPrograma {
    
    public boolean registrarTipoPrograma(TipoProgramaDTO dto) throws Exception;
    public ArrayList<TipoProgramaDTO> mostrarTipoPrograma() throws Exception;
    public boolean eliminarTipoPrograma(int idTipoProg) throws Exception;
    public boolean actualizarTipoPrograma(int idTipoProg, String descripcion) throws Exception;
    
}
