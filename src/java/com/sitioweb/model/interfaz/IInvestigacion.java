/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.InvestigacionDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IInvestigacion {
    
    public boolean registrarInvestigacion(InvestigacionDTO dto) throws Exception;
    public ArrayList<InvestigacionDTO> mostrarInvestigacion() throws Exception;
    public ArrayList<InvestigacionDTO> mostrarInvestigacionId(int idInvestigacion) throws Exception;
    public ArrayList<InvestigacionDTO> mostrarInvestigacionTipo(int tipo) throws Exception;
    public boolean eliminarInvestigacion(InvestigacionDTO dto) throws Exception;
    public boolean actualizarInvestigacion(int idInvestigacion, String nombre, String director, 
            String correo, String lineainvest, String estatus, 
            String link, int tipo) throws Exception;
    
}
