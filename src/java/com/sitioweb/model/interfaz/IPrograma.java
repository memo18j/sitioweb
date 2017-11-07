/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.ProgramaDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IPrograma {
    
    public boolean registrarPrograma(ProgramaDTO dto) throws Exception;
    public ArrayList<ProgramaDTO> mostrarPrograma() throws Exception;
    public ArrayList<ProgramaDTO> mostrarProgramaId(int idPrograma) throws Exception;
    public boolean eliminarPrograma(ProgramaDTO dto) throws Exception;
    public boolean actualizarPrograma(int idPrograma, String nombre, int tipo, String director, 
            String correoprograma, String ubicacion, String telefono, int codsnies, 
            String modalidad, String horario, String imagen, String link) throws Exception;
    
}
