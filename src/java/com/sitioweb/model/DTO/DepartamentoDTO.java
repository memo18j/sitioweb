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
public class DepartamentoDTO {
    
    private int iddpto;
    private String nombre, director, descripcion, link;

    public DepartamentoDTO() {
    }

    public DepartamentoDTO(String nombre, String director, String descripcion, String link) {
        this.nombre = nombre;
        this.director = director;
        this.descripcion = descripcion;
        this.link = link;
    }

    public int getIddpto() {
        return iddpto;
    }

    public void setIddpto(int iddpto) {
        this.iddpto = iddpto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
    
}
