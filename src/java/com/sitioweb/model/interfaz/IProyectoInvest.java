/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.ProyectoInvestDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IProyectoInvest {
    
    public boolean registrarProyectoInvest(ProyectoInvestDTO dto) throws Exception;
    public ArrayList<ProyectoInvestDTO> mostrarProyectoInvest() throws Exception;
    public ArrayList<ProyectoInvestDTO> mostrarProyectoInvestId(int idProyecto) throws Exception;
    public ArrayList<ProyectoInvestDTO> mostrarProyectoInvestGrupo(int grupo) throws Exception;
    public boolean eliminarProyectoInvest(int idProyecto) throws Exception;
    public boolean actualizarProyectoInvest(int idProyecto, String nombre, String descripcion, 
            int grupo) throws Exception;
    
}
