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
public class PestanaDTO {
    
    private int idPestana;
    private String nombre;

    public PestanaDTO() {
    }

    public PestanaDTO(String nombre) {
        this.nombre = nombre;
    }

    public int getIdPestana() {
        return idPestana;
    }

    public void setIdPestana(int idPestana) {
        this.idPestana = idPestana;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
