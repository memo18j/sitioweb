/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.PestanaDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IPestana {
    
    public boolean registrarPestana(PestanaDTO dto) throws Exception;
    public ArrayList<PestanaDTO> mostrarPestana() throws Exception;
    public boolean eliminarPestana(int idPestana) throws Exception;
    public boolean actualizarPestana(int idPestana, String nombre) throws Exception;
    
}
