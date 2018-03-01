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
    private String nombre, ubicacion, descripcion, imagen,tnombre;
    private int tipo;

    public InfraestructuraDTO() {
    }

    public InfraestructuraDTO(String nombre, String ubicacion, String descripcion, 
            int tipo, String imagen) {
        this.nombre = nombre;
        this.ubicacion = ubicacion;
        this.descripcion = descripcion;
        this.tipo = tipo;
        this.imagen = imagen;
    }

    public String getTnombre() {
        return tnombre;
    }

    public void setTnombre(String tnombre) {
        this.tnombre = tnombre;
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

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
}
