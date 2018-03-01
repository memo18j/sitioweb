/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DTO;

/**
 *
 * @author Memo
 */
public class TipoInfoGraduadoDTO {
    
    private int idtipoinfo;
    private String descripcion;

    public TipoInfoGraduadoDTO() {
    }

    public TipoInfoGraduadoDTO(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getIdtipoinfo() {
        return idtipoinfo;
    }

    public void setIdtipoinfo(int idtipoinfo) {
        this.idtipoinfo = idtipoinfo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}
