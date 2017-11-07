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
public class DocenteDTO {
    
    private int idDocente;
    private String nombre, correo, tipo, linkcvlad;
    private int dpto;

    public DocenteDTO() {
    }

    public DocenteDTO(String nombre, String correo, String tipo, String linkcvlad, int dpto) {
        this.nombre = nombre;
        this.correo = correo;
        this.tipo = tipo;
        this.linkcvlad = linkcvlad;
        this.dpto = dpto;
    }

    public int getIdDocente() {
        return idDocente;
    }

    public void setIdDocente(int idDocente) {
        this.idDocente = idDocente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getLinkcvlad() {
        return linkcvlad;
    }

    public void setLinkcvlad(String linkcvlad) {
        this.linkcvlad = linkcvlad;
    }

    public int getDpto() {
        return dpto;
    }

    public void setDpto(int dpto) {
        this.dpto = dpto;
    }
    
}
