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
public class ProgramaDTO {
    
    private int idPrograma;
    private String nombre, director, correoprograma, ubicacion, telefono, modalidad, 
            horario, imagen, link;
    private int tipo, codsnies;

    public ProgramaDTO() {
    }

    public ProgramaDTO(String nombre, String director, String correoprograma, String ubicacion, 
            String telefono, String modalidad, String horario, String imagen, String link, 
            int tipo, int codsnies) {
        this.nombre = nombre;
        this.director = director;
        this.correoprograma = correoprograma;
        this.ubicacion = ubicacion;
        this.telefono = telefono;
        this.modalidad = modalidad;
        this.horario = horario;
        this.imagen = imagen;
        this.link = link;
        this.tipo = tipo;
        this.codsnies = codsnies;
    }

    public int getIdPrograma() {
        return idPrograma;
    }

    public void setIdPrograma(int idPrograma) {
        this.idPrograma = idPrograma;
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

    public String getCorreoprograma() {
        return correoprograma;
    }

    public void setCorreoprograma(String correoprograma) {
        this.correoprograma = correoprograma;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getModalidad() {
        return modalidad;
    }

    public void setModalidad(String modalidad) {
        this.modalidad = modalidad;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
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

    public int getCodsnies() {
        return codsnies;
    }

    public void setCodsnies(int codsnies) {
        this.codsnies = codsnies;
    }
    
}
