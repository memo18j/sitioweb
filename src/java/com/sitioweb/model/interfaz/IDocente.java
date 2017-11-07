/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.DocenteDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IDocente {
    
    public boolean registrarDocente(DocenteDTO dto) throws Exception;
    public ArrayList<DocenteDTO> mostrarDocente() throws Exception;
    public ArrayList<DocenteDTO> mostrarDocenteId(int idDocente) throws Exception;
    public ArrayList<DocenteDTO> mostrarDocenteDpto(int dpto) throws Exception;
    public boolean eliminarDocente(DocenteDTO dto) throws Exception;
    public boolean actualizarDocente(int idDocente, String nombre, String correo, 
            String tipo, String linkcvlad, int dpto) throws Exception;
    
}
