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
public class SemilleroDTO {
    
    private int idSemillero;
    private String nombre, director, correo, lineainvest, link;

    public SemilleroDTO() {
    }

    public SemilleroDTO(String nombre, String director, String correo, String lineainvest, String link) {
        this.nombre = nombre;
        this.director = director;
        this.correo = correo;
        this.lineainvest = lineainvest;
        this.link = link;
    }

    public int getIdSemillero() {
        return idSemillero;
    }

    public void setIdSemillero(int idSemillero) {
        this.idSemillero = idSemillero;
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

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getLineainvest() {
        return lineainvest;
    }

    public void setLineainvest(String lineainvest) {
        this.lineainvest = lineainvest;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
    
}
