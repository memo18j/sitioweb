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
public class TipoInfraestructuraDTO {
    
    private int idTipoInfra;
    private String nombre;

    public TipoInfraestructuraDTO() {
    }

    public TipoInfraestructuraDTO(String nombre) {
        this.nombre = nombre;
    }

    public int getIdTipoInfra() {
        return idTipoInfra;
    }

    public void setIdTipoInfra(int idTipoInfra) {
        this.idTipoInfra = idTipoInfra;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
