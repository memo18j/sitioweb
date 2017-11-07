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
public class InformacionDTO {
    
    private int idInformacion;
    private String descripcion, nombre, link, imagen;
    private int tipoinfo, facultad;

    public InformacionDTO() {
    }

    public InformacionDTO(String descripcion, String nombre, String link, String imagen, 
            int tipoinfo) {
        this.descripcion = descripcion;
        this.nombre = nombre;
        this.link = link;
        this.imagen = imagen;
        this.tipoinfo = tipoinfo;
    }

    public int getIdInformacion() {
        return idInformacion;
    }

    public void setIdInformacion(int idInformacion) {
        this.idInformacion = idInformacion;
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

    public int getTipoinfo() {
        return tipoinfo;
    }

    public void setTipoinfo(int tipoinfo) {
        this.tipoinfo = tipoinfo;
    }

    public int getFacultad() {
        return facultad;
    }

    public void setFacultad(int facultad) {
        this.facultad = facultad;
    }
    
}
