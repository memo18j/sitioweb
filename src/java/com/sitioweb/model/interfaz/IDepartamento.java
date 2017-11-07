/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.DepartamentoDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IDepartamento {
    
    public boolean registrarDepartamento(DepartamentoDTO dto) throws Exception;
    public ArrayList<DepartamentoDTO> mostrarDepartamento() throws Exception;
    public ArrayList<DepartamentoDTO> mostrarDepartamentoId(int iddpto) throws Exception;
    public boolean eliminarDepartamento(DepartamentoDTO dto) throws Exception;
    public boolean actualizarDepartamento(int iddpto, String nombre, String director, 
            String descripcion, String link) throws Exception;
    
}
