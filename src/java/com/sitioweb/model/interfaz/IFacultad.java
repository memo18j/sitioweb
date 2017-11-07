/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.FacultadDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IFacultad {
    
    public boolean registrarFacultad(FacultadDTO dto) throws Exception;
    public ArrayList<FacultadDTO> mostrarFacultad() throws Exception;
    public boolean eliminarFacultad(int idFacultad) throws Exception;
    public boolean actualizarFacultad(int idFacultad, String nombre) throws Exception;
}
