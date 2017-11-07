/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.SemilleroDTO;
import com.sitioweb.model.interfaz.ISemillero;
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
public class MySQLSemilleroDAO implements ISemillero{

    private Connection conn;
    
    @Override
    public boolean registrarSemillero(SemilleroDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO semillero" + "(nombre, director, "
                    + "correo, lineainvest, link) values (?,?,?,?,?)");
            stmt.setString(1, dto.getNombre());
            stmt.setString(2, dto.getDirector());
            stmt.setString(3, dto.getCorreo());
            stmt.setString(4, dto.getLineainvest());
            stmt.setString(5, dto.getLink());
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
    public ArrayList<SemilleroDTO> mostrarSemillero() throws Exception {
        ArrayList<SemilleroDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        SemilleroDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM semillero");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new SemilleroDTO();
                usu.setIdSemillero(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setDirector(res.getString(3));
                usu.setCorreo(res.getString(4));
                usu.setLineainvest(res.getString(5));
                usu.setLink(res.getString(6));
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
    public boolean eliminarSemillero(int idSemillero) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarSemillero(int idSemillero, String nombre, String director, 
            String correo, String lineainvest, String link) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idSemillero!=0 & !nombre.equalsIgnoreCase("") & !correo.equalsIgnoreCase("")
                    & !director.equalsIgnoreCase("") & !lineainvest.equalsIgnoreCase("")
                    & !link.equalsIgnoreCase("")) {
                stmt = conn.prepareStatement("UPDATE docente SET nombre='" + nombre + 
                        "', director='" + director + "', correo='" + correo + "', lineainvest='" + 
                        lineainvest + "', link='" + link + "' WHERE idSemillero=" + idSemillero);
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

    @Override
    public ArrayList<SemilleroDTO> mostrarSemilleroId(int idSemillero) throws Exception {
        ArrayList<SemilleroDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        SemilleroDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM semillero WHERE idsemillero=" 
                    + idSemillero);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new SemilleroDTO();
                usu.setIdSemillero(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setDirector(res.getString(3));
                usu.setCorreo(res.getString(4));
                usu.setLineainvest(res.getString(5));
                usu.setLink(res.getString(6));
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
    
}
