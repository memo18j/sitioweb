/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.SemilleroDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface ISemillero {
    
    public boolean registrarSemillero(SemilleroDTO dto) throws Exception;
    public ArrayList<SemilleroDTO> mostrarSemillero() throws Exception;
    public ArrayList<SemilleroDTO> mostrarSemilleroId(int idSemillero) throws Exception;
    public boolean eliminarSemillero(int idSemillero) throws Exception;
    public boolean actualizarSemillero(int idSemillero, String nombre, String director, 
            String correo, String lineainvest, String link) throws Exception;
    
}
