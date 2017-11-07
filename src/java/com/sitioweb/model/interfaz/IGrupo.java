/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.GrupoDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IGrupo {
    
    public boolean registrarGrupo(GrupoDTO dto) throws Exception;
    public ArrayList<GrupoDTO> mostrarGrupo() throws Exception;
    public ArrayList<GrupoDTO> mostrarGrupoId(int idGrupo) throws Exception;
    public boolean eliminarGrupo(int idGrupo) throws Exception;
    public boolean actualizarGrupo(int idGrupo, String nombre, String director, String correo, 
            String lineainvest, String estatus, String link) throws Exception;
    
}
