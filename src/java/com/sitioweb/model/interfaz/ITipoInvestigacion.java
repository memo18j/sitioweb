/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.TipoInvestigacionDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface ITipoInvestigacion {
    
    public boolean registrarTipoInvestigacion(TipoInvestigacionDTO dto) throws Exception;
    public ArrayList<TipoInvestigacionDTO> mostrarTipoInvestigacion() throws Exception;
    public ArrayList<TipoInvestigacionDTO> mostrarTipoInvestigacionId(int idTipoInvest) throws Exception;
    public boolean eliminarTipoInvestigacion(int idTipoInvest) throws Exception;
    public boolean actualizarTipoInvestigacion(int idTipoInvest, String nombre) throws Exception;
    
}
