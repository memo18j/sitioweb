/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.InternacionalizacionDTO;
import com.sitioweb.model.interfaz.IInternacionalizacion;
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
public class MySQLInternacionalizacionDAO implements IInternacionalizacion{

    private Connection conn;
    
    @Override
    public boolean registrarInternacionalizacion(InternacionalizacionDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO internacionalizacion" + "(tipointer, descripcion, "
                    + "nombre, link, imagen) "
                    + "values (?,?,?,?,?)");
            stmt.setInt(1, dto.getTipointer());
            stmt.setString(2, dto.getDescripcion());
            stmt.setString(3, dto.getNombre());
            stmt.setString(4, dto.getLink());
            stmt.setString(5, dto.getImagen());
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
    public ArrayList<InternacionalizacionDTO> mostrarInternacionalizacion() throws Exception {
        ArrayList<InternacionalizacionDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        InternacionalizacionDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM internacionalizacion");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new InternacionalizacionDTO();
                usu.setIdInternac(res.getInt(1));
                usu.setTipointer(res.getInt(2));
                usu.setDescripcion(res.getString(3));
                usu.setNombre(res.getString(4));
                usu.setLink(res.getString(5));
                usu.setImagen(res.getString(6));
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
    public ArrayList<InternacionalizacionDTO> mostrarInternacionalizacionId(int idInternac) throws Exception {
        ArrayList<InternacionalizacionDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        InternacionalizacionDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM internacionalizacion WHERE idinternac=" + idInternac);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new InternacionalizacionDTO();
                usu.setIdInternac(res.getInt(1));
                usu.setTipointer(res.getInt(2));
                usu.setDescripcion(res.getString(3));
                usu.setNombre(res.getString(4));
                usu.setLink(res.getString(5));
                usu.setImagen(res.getString(6));
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
    public boolean eliminarInternacionalizacion(InternacionalizacionDTO dto) throws Exception {
        boolean exito = false;
        try {
            System.out.println("--1" + dto.getIdInternac()+ "." + dto.getNombre());
            conn = Conexion.conectar();
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM internacionalizacion WHERE idinternac="
                    + dto.getIdInternac()+ " AND nombre='" + dto.getNombre() + "';");
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
    public boolean actualizarInternacionalizacion(int idInternac, int tipointer, String descripcion, 
            String nombre, String link, String imagen) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idInternac!=0 & !nombre.equalsIgnoreCase("") & !link.equalsIgnoreCase("")
                    & !descripcion.equalsIgnoreCase("") & tipointer!=0 & !imagen.equalsIgnoreCase("")) {
                stmt = conn.prepareStatement("UPDATE grupoinvestigacion SET tipointer=" + tipointer + 
                        ", descripcion='" + descripcion + "', nombre='" + nombre + "', link='" + 
                        link + "', imagen='" + imagen + "' WHERE idinternac=" + idInternac);
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