/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.interfaz;

import com.sitioweb.model.DTO.DocumentoDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IDocumento {
    
    public boolean registrarDocumento(DocumentoDTO dto) throws Exception;
    public ArrayList<DocumentoDTO> mostrarDocumento() throws Exception;
    public boolean eliminarDocumento(int idDocumento) throws Exception;
    public boolean actualizarDocumento(int idDocumento, String nombre, String ruta) throws Exception;
    
}
