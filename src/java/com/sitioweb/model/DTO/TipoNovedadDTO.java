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
public class TipoNovedadDTO {
    
    private int idTipoNov;
    private String nombre;

    public TipoNovedadDTO() {
    }

    public TipoNovedadDTO(String nombre) {
        this.nombre = nombre;
    }

    public int getIdTipoNov() {
        return idTipoNov;
    }

    public void setIdTipoNov(int idTipoNov) {
        this.idTipoNov = idTipoNov;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
