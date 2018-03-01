/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.GraduadoDTO;
import java.util.ArrayList;

/**
 *
 * @author Memo
 */
public interface IGraduado {
    
    public boolean registrarGraduado(GraduadoDTO dto) throws Exception;
    public ArrayList<GraduadoDTO> mostrarGraduado() throws Exception;
    public ArrayList<GraduadoDTO> mostrarGraduadoId(int idGraduado) throws Exception;
    public ArrayList<GraduadoDTO> mostrarGraduadoTipo(int tipo) throws Exception;
    public boolean eliminarGraduado(GraduadoDTO dto) throws Exception;
    public boolean actualizarGraduado(int idGraduado, int tipoinfog, String descripcion, 
            String nombre, String link, String documento) throws Exception;
    
}
