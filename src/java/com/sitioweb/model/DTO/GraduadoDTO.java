/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DTO;

/**
 *
 * @author Memo
 */
public class GraduadoDTO {
    
    private int idGraduado;
    private String descripcion, nombre, link, documento, tnombre;
    private int tipoinfog;

    public GraduadoDTO() {
    }

    public GraduadoDTO(int tipoinfog, String descripcion, String nombre, String link, String documento) {
        this.descripcion = descripcion;
        this.nombre = nombre;
        this.link = link;
        this.documento = documento;
        this.tipoinfog = tipoinfog;
    }

    public int getIdGraduado() {
        return idGraduado;
    }

    public void setIdGraduado(int idGraduado) {
        this.idGraduado = idGraduado;
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

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getTnombre() {
        return tnombre;
    }

    public void setTnombre(String tnombre) {
        this.tnombre = tnombre;
    }

    public int getTipoInfog() {
        return tipoinfog;
    }

    public void setTipoInfog(int tipoinfog) {
        this.tipoinfog = tipoinfog;
    }
    
}
