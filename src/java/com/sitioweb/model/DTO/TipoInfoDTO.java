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
public class TipoInfoDTO {
    
    private int idinfo;
    private String descripcion;
    private int pestana;

    public TipoInfoDTO() {
    }

    public TipoInfoDTO(String descripcion, int pestana) {
        this.descripcion = descripcion;
        this.pestana = pestana;
    }

    public int getIdinfo() {
        return idinfo;
    }

    public void setIdinfo(int idinfo) {
        this.idinfo = idinfo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getPestana() {
        return pestana;
    }

    public void setPestana(int pestana) {
        this.pestana = pestana;
    }
    
}
