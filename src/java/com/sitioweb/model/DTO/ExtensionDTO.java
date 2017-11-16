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
public class ExtensionDTO {
    
    private int idExtension;
    private String descripcion, nombre, link, documento;
    private int tipoext;

    public ExtensionDTO() {
    }

    public ExtensionDTO(int tipoext, String descripcion, String nombre, String link, 
            String documento) {
        this.descripcion = descripcion;
        this.nombre = nombre;
        this.link = link;
        this.documento = documento;
        this.tipoext = tipoext;
    }

    public int getIdExtension() {
        return idExtension;
    }

    public void setIdExtension(int idExtension) {
        this.idExtension = idExtension;
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

    public int getTipoext() {
        return tipoext;
    }

    public void setTipoext(int tipoext) {
        this.tipoext = tipoext;
    }
    
}
