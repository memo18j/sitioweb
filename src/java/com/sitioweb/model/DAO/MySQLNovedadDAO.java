/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.NovedadDTO;
import com.sitioweb.model.interfaz.INovedad;
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
public class MySQLNovedadDAO implements INovedad{

    private Connection conn;
    
    @Override
    public boolean registrarNovedad(NovedadDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO novedad" + "(titulo, linkimg, "
                    + "descripcion, fecha, tiponovedad) values (?,?,?,?,?)");
            stmt.setString(1, dto.getTitulo());
            stmt.setString(2, dto.getLinkimg());
            stmt.setString(3, dto.getDescripcion());
            stmt.setString(4, dto.getFecha());
            stmt.setInt(5, dto.getTiponovedad());
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
    public ArrayList<NovedadDTO> mostrarNovedad() throws Exception {
        ArrayList<NovedadDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        NovedadDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM novedad");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new NovedadDTO();
                usu.setIdNovedad(res.getInt(1));
                usu.setTitulo(res.getString(2));
                usu.setLinkimg(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setFecha(res.getString(5));
                usu.setTiponovedad(res.getInt(6));
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
    public ArrayList<NovedadDTO> mostrarNovedadId(int idNovedad) throws Exception {
        ArrayList<NovedadDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        NovedadDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM novedad WHERE idNovedad=" + idNovedad);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new NovedadDTO();
                usu.setIdNovedad(res.getInt(1));
                usu.setTitulo(res.getString(2));
                usu.setLinkimg(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setFecha(res.getString(5));
                usu.setTiponovedad(res.getInt(6));
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
    public ArrayList<NovedadDTO> mostrarNovedadTipo(int tipo) throws Exception {
        ArrayList<NovedadDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        NovedadDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM novedad WHERE tiponovedad=" + tipo);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new NovedadDTO();
                usu.setIdNovedad(res.getInt(1));
                usu.setTitulo(res.getString(2));
                usu.setLinkimg(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setFecha(res.getString(5));
                usu.setTiponovedad(res.getInt(6));
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
    public boolean eliminarNovedad(NovedadDTO dto) throws Exception {
        boolean exito = false;
        try {
            System.out.println("--1" + dto.getIdNovedad()+ "." + dto.getTitulo());
            conn = Conexion.conectar();
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM novedad WHERE idnovedad='"
                    + dto.getIdNovedad()+ "' AND titulo='" + dto.getTitulo()+ "';");
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
    public boolean actualizarNovedadDTO(int idNovedad, String titulo, String linkimg, 
            String descripcion, String fecha, int tiponovedad) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idNovedad!=0 & !titulo.equalsIgnoreCase("") & !linkimg.equalsIgnoreCase("")
                    & !descripcion.equalsIgnoreCase("") & !fecha.equalsIgnoreCase("") 
                    & tiponovedad!=0) {
                stmt = conn.prepareStatement("UPDATE docente SET titulo='" + titulo + 
                        "', linkimg='" + linkimg + "', descripcion='" + descripcion +
                        "', descripcion='" + descripcion + "', tiponovedad=" + 
                        tiponovedad + " WHERE idNovedad=" + idNovedad);
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
