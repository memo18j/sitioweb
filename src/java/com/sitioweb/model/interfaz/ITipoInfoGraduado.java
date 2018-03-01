/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.TipoInfoGraduadoDTO;
import java.util.ArrayList;

/**
 *
 * @author Memo
 */
public interface ITipoInfoGraduado {
    
    public boolean registrarTipoInfoGraduado(TipoInfoGraduadoDTO dto) throws Exception;
    public ArrayList<TipoInfoGraduadoDTO> mostrarTipoInfoGraduado() throws Exception;
    public boolean eliminarTipoInfoGraduado(int idtipoinfo) throws Exception;
    public boolean actualizarTipoInfoGraduado(int idtipoinfo, String descripcion) throws Exception;
}
