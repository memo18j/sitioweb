/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.InternacionalizacionDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IInternacionalizacion {
    
    public boolean registrarInternacionalizacion(InternacionalizacionDTO dto) throws Exception;
    public ArrayList<InternacionalizacionDTO> mostrarInternacionalizacion() throws Exception;
    public ArrayList<InternacionalizacionDTO> mostrarInternacionalizacionId(int idInternac) throws Exception;
    public ArrayList<InternacionalizacionDTO> mostrarInternacionalizacionTipo(int tipo) throws Exception;
    public boolean eliminarInternacionalizacion(InternacionalizacionDTO dto) throws Exception;
    public boolean actualizarInternacionalizacion(int idInternac, int tipointer, 
            String descripcion, String nombre, String link, String imagen) throws Exception;
    
}
