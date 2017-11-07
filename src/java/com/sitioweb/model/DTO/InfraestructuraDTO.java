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
public class InfraestructuraDTO {
    
    private int idInfra;
    private String nombre, ubicacion, descripcion;
    private int tipo;

    public InfraestructuraDTO() {
    }

    public InfraestructuraDTO(String nombre, String ubicacion, String descripcion, int tipo) {
        this.nombre = nombre;
        this.ubicacion = ubicacion;
        this.descripcion = descripcion;
        this.tipo = tipo;
    }

    public int getIdInfra() {
        return idInfra;
    }

    public void setIdInfra(int idInfra) {
        this.idInfra = idInfra;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
    
}
