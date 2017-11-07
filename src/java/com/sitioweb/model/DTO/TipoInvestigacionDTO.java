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
public class TipoInvestigacionDTO {
    
    private int idTipoInvest;
    private String nombre;

    public TipoInvestigacionDTO() {
    }

    public TipoInvestigacionDTO(String nombre) {
        this.nombre = nombre;
    }

    public int getIdTipoInvest() {
        return idTipoInvest;
    }

    public void setIdTipoInvest(int idTipoInvest) {
        this.idTipoInvest = idTipoInvest;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
