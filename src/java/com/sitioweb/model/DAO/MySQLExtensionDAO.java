/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.ExtensionDTO;
import com.sitioweb.model.interfaz.IExtension;
import com.sitioweb.util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author CASA
 */
public class MySQLExtensionDAO implements IExtension{
    
    private Connection conn;

    @Override
    public boolean registrarExtension(ExtensionDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO extension" + "(tipoext, "
                    + "descripcion, nombre, link, documento) values (?,?,?,?,?)");
            stmt.setInt(1, dto.getTipoext());
            stmt.setString(2, dto.getDescripcion());
            stmt.setString(3, dto.getNombre());
            stmt.setString(4, dto.getLink());
            stmt.setString(5, dto.getDocumento());
            int total = stmt.executeUpdate();
            if (total > 0) {
                exito = true;
                stmt.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(MySQLUsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
//            if (!keepConnection) {
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException ex) {
                        Logger.getLogger(MySQLUsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
//            }
        }
        return exito;
    }

    @Override
    public ArrayList<ExtensionDTO> mostrarExtension() throws Exception {
        ArrayList<ExtensionDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        ExtensionDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT e.idextension,e.tipoext, te.descripcion, e.descripcion, "
                    + "e.nombre, e.link, e.documento FROM extension e, tipoextension te WHERE "
                    + "e.tipoext=te.idtipo");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new ExtensionDTO();
                usu.setIdExtension(res.getInt(1));
                usu.setTipoext(res.getInt(2));
                usu.setTnombre(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setNombre(res.getString(5));
                usu.setLink(res.getString(6));
                usu.setDocumento(res.getString(7));
                list.add(usu);
            }
            stmt.close();
            res.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    @Override
    public ArrayList<ExtensionDTO> mostrarExtensionId(int idExtension) throws Exception {
        ArrayList<ExtensionDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        ExtensionDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT e.idextension,e.tipoext, te.descripcion, e.descripcion, "
                    + "e.nombre, e.link, e.documento FROM extension e, tipoextension te WHERE "
                    + "e.tipoext=te.idtipo AND idextension=" 
                    + idExtension);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new ExtensionDTO();
                usu.setIdExtension(res.getInt(1));
                usu.setTipoext(res.getInt(2));
                usu.setTnombre(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setNombre(res.getString(5));
                usu.setLink(res.getString(6));
                usu.setDocumento(res.getString(7));
                list.add(usu);
            }
            stmt.close();
            res.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }
    
    @Override
    public ArrayList<ExtensionDTO> mostrarExtensionTipo(int tipo) throws Exception {
        ArrayList<ExtensionDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        ExtensionDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT e.idextension,e.tipoext, te.descripcion, e.descripcion, "
                    + "e.nombre, e.link, e.documento FROM extension e, tipoextension te WHERE "
                    + "e.tipoext=te.idtipo AND tipoext=" 
                    + tipo);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new ExtensionDTO();
                usu.setIdExtension(res.getInt(1));
                usu.setTipoext(res.getInt(2));
                usu.setTnombre(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setNombre(res.getString(5));
                usu.setLink(res.getString(6));
                usu.setDocumento(res.getString(7));
                list.add(usu);
            }
            stmt.close();
            res.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    @Override
    public boolean eliminarExtension(ExtensionDTO dto) throws Exception {
        boolean exito = false;
        try {
            System.out.println("--1" + dto.getIdExtension()+ "." + dto.getNombre());
            conn = Conexion.conectar();
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM extension WHERE idextension='" 
                    + dto.getIdExtension()+ "' AND nombre='" + dto.getNombre()+  "';");
            int res = stmt.executeUpdate();
            if (res > 0) {
                exito = true;
            }
            stmt.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return exito;
    
    }

    @Override
    public boolean actualizarExtension(int idExtension, int tipoext, String descripcion, String nombre, 
            String link, String documento) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idExtension!=0 & !descripcion.equalsIgnoreCase("") & !nombre.equalsIgnoreCase("") 
                    & !link.equalsIgnoreCase("") & !documento.equalsIgnoreCase("") & tipoext!=0) {
                stmt = conn.prepareStatement("UPDATE extension SET  tipoext=" + tipoext + ", descripcion='" 
                        + descripcion + "', nombre='" + nombre + "', link='" + link + 
                        "', documento='" + documento + "' WHERE idextension=" + idExtension);
                stmt.executeUpdate();
                exito = true;
            } else {
                System.out.println("Por Favor Ingresar todos los valores, no dejar campos vacios");
                exito = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("error!!");
        } finally {
//            if (!keepConnection) {
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException ex) {
                        Logger.getLogger(MySQLUsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
//            }
        }
        return exito;
    }
    
}