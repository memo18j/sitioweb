/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DTO;

/**
 *
 * @author personal
 */
public class InvestigacionDTO {
    
    private int idInvestigacion;
    private String nombre, director, correo, lineainvest, estatus,link,tnombre;
    private int tipo;

    public InvestigacionDTO() {
    }

    public InvestigacionDTO(String nombre, String director, String correo, String lineainvest, 
            String estatus,String link, int tipo) {
        this.nombre = nombre;
        this.director = director;
        this.correo = correo;
        this.lineainvest = lineainvest;
        this.estatus = estatus;
        this.link = link;
        this.tipo = tipo;
    }

    public String getTnombre() {
        return tnombre;
    }

    public void setTnombre(String tnombre) {
        this.tnombre = tnombre;
    }

    public int getIdInvestigacion() {
        return idInvestigacion;
    }

    public void setIdInvestigacion(int idInvestigacion) {
        this.idInvestigacion = idInvestigacion;
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

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
    
}
