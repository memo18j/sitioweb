/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.InfraestructuraDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IInfraestructura {
    
    public boolean registrarInfraestructura(InfraestructuraDTO dto) throws Exception;
    public ArrayList<InfraestructuraDTO> mostrarInfraestructura() throws Exception;
    public ArrayList<InfraestructuraDTO> mostrarInfraestructuraId(int idInfra) throws Exception;
    public ArrayList<InfraestructuraDTO> mostrarInfraestructuraTipo(int tipo) throws Exception;
    public boolean eliminarInfraestructura(InfraestructuraDTO dto) throws Exception;
    public boolean actualizarInfraestructura(int idInfra, String nombre, String ubicacion, 
            String descripcion, int tipo, String imagen) throws Exception;
}
