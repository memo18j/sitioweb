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
public class TipoInternacionalizacionDTO {
    
    private int idTipoInternac;
    private String descripcion;

    public TipoInternacionalizacionDTO() {
    }

    public TipoInternacionalizacionDTO(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getIdTipoInternac() {
        return idTipoInternac;
    }

    public void setIdTipoInternac(int idTipoInternac) {
        this.idTipoInternac = idTipoInternac;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}
