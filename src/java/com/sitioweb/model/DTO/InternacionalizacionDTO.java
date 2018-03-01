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
public class InternacionalizacionDTO {
    
    private int idInternac, tipointer;
    private String descripcion, nombre, link, imagen,tnombre;

    public InternacionalizacionDTO() {
    }

    public InternacionalizacionDTO(int tipointer, String descripcion, String nombre, 
            String link, String imagen) {
        this.tipointer = tipointer;
        this.descripcion = descripcion;
        this.nombre = nombre;
        this.link = link;
        this.imagen = imagen;
    }

    public String getTnombre() {
        return tnombre;
    }

    public void setTnombre(String tnombre) {
        this.tnombre = tnombre;
    }

    public int getIdInternac() {
        return idInternac;
    }

    public void setIdInternac(int idInternac) {
        this.idInternac = idInternac;
    }

    public int getTipointer() {
        return tipointer;
    }

    public void setTipointer(int tipointer) {
        this.tipointer = tipointer;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
}