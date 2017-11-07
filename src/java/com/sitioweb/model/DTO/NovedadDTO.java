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
public class NovedadDTO {
    
    private int idNovedad;
    private String titulo, linkimg, descripcion, fecha;
    private int tiponovedad;

    public NovedadDTO() {
    }

    public NovedadDTO(String titulo, String linkimg, String descripcion, String fecha,
            int tiponovedad) {
        this.titulo = titulo;
        this.linkimg = linkimg;
        this.descripcion = descripcion;
        this.fecha = fecha;
        this.tiponovedad = tiponovedad;
    }

    public int getIdNovedad() {
        return idNovedad;
    }

    public void setIdNovedad(int idNovedad) {
        this.idNovedad = idNovedad;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getLinkimg() {
        return linkimg;
    }

    public void setLinkimg(String linkimg) {
        this.linkimg = linkimg;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getTiponovedad() {
        return tiponovedad;
    }

    public void setTiponovedad(int tiponovedad) {
        this.tiponovedad = tiponovedad;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
}
