/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.InformacionDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IInformacion {
    
    public boolean registrarInformacion(InformacionDTO dto) throws Exception;
    public ArrayList<InformacionDTO> mostrarInformacion() throws Exception;
    public ArrayList<InformacionDTO> mostrarInformacionId(int idInformacion) throws Exception;
    public boolean eliminarInformacion(InformacionDTO dto) throws Exception;
    public boolean actualizarInformacion(int idInformacion, String titulo, String fecha, 
            String contenido, int tipoinfo) throws Exception;
    
}
