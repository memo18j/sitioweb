/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DTO;

/**
 *
 * @author CASA
 */
public class TipoProgramaDTO {
    
    private int idTipoProg;
    private String descripcion;

    public TipoProgramaDTO() {
    }

    public TipoProgramaDTO(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getIdTipoProg() {
        return idTipoProg;
    }

    public void setIdTipoProg(int idTipoProg) {
        this.idTipoProg = idTipoProg;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}
