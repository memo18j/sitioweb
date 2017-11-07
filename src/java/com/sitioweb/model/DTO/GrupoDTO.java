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
public class GrupoDTO {
    
    private int idGrupo;
    private String nombre, director, correo, lineainvest, estatus, link;

    public GrupoDTO() {
    }

    public GrupoDTO(String nombre, String director, String correo, String lineainvest, 
            String estatus, String link) {
        this.nombre = nombre;
        this.director = director;
        this.correo = correo;
        this.lineainvest = lineainvest;
        this.estatus = estatus;
        this.link = link;
    }

    public int getIdGrupo() {
        return idGrupo;
    }

    public void setIdGrupo(int idGrupo) {
        this.idGrupo = idGrupo;
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

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
    
}
