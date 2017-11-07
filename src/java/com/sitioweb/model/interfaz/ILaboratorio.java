/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.LaboratorioDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface ILaboratorio {
    
    public boolean registrarLaboratorio(LaboratorioDTO dto) throws Exception;
    public ArrayList<LaboratorioDTO> mostrarLaboratorio() throws Exception;
    public ArrayList<LaboratorioDTO> mostrarLaboratorioId(int idLaboratorio) throws Exception;
    public ArrayList<LaboratorioDTO> mostrarLaboratorioTipo(String tipo) throws Exception;
    public boolean eliminarLaboratorio(int idLaboratorio) throws Exception;
    public boolean actualizarLaboratorio(int idLaboratorio, String nombre, String tipo, 
            String descripcion) throws Exception;
    
}
