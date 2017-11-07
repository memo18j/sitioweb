/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.NovedadDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface INovedad {
    
    public boolean registrarNovedad(NovedadDTO dto) throws Exception;
    public ArrayList<NovedadDTO> mostrarNovedad() throws Exception;
    public ArrayList<NovedadDTO> mostrarNovedadId(int idNovedad) throws Exception;
    public ArrayList<NovedadDTO> mostrarNovedadTipo(int tipo) throws Exception;
    public boolean eliminarNovedad(NovedadDTO dto) throws Exception;
    public boolean actualizarNovedadDTO(int idNovedad, String titulo, String linkimg, 
            String descripcion, String fecha, int tiponovedad) throws Exception;
    
}
