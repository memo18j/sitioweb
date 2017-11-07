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
public class ProyectoInvestDTO {
    
    private int idProyecto;
    private String nombre, descripcion;
    private int grupo;

    public ProyectoInvestDTO() {
    }

    public ProyectoInvestDTO(String nombre, String descripcion, int grupo) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.grupo = grupo;
    }

    public int getIdProyecto() {
        return idProyecto;
    }

    public void setIdProyecto(int idProyecto) {
        this.idProyecto = idProyecto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getGrupo() {
        return grupo;
    }

    public void setGrupo(int grupo) {
        this.grupo = grupo;
    }
    
}
