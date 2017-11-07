/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.DocenteDTO;
import com.sitioweb.model.interfaz.IDocente;
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
public class MySQLDocenteDAO implements IDocente{

    private Connection conn;
    
    @Override
    public boolean registrarDocente(DocenteDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO docente" + "(nombre, correo, "
                    + "tipo, linkcvlad, dpto) values (?,?,?,?,?)");
            stmt.setString(1, dto.getNombre());
            stmt.setString(2, dto.getCorreo());
            stmt.setString(3, dto.getTipo());
            stmt.setString(4, dto.getLinkcvlad());
            stmt.setInt(5, dto.getDpto());
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
    public ArrayList<DocenteDTO> mostrarDocente() throws Exception {
        ArrayList<DocenteDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        DocenteDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM docente");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new DocenteDTO();
                usu.setIdDocente(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setCorreo(res.getString(3));
                usu.setTipo(res.getString(4));
                usu.setLinkcvlad(res.getString(5));
                usu.setDpto(res.getInt(6));
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
    public boolean eliminarDocente(DocenteDTO dto) throws Exception {
        boolean exito = false;
        try {
            System.out.println("--1" + dto.getIdDocente()+ "." + dto.getNombre());
            conn = Conexion.conectar();
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM docente WHERE iddocente='"
                    + dto.getIdDocente()+ "' AND nombre='" + dto.getNombre() + "';");
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
    public boolean actualizarDocente(int idDocente, String nombre, String correo, String tipo, 
            String linkcvlad, int dpto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idDocente!=0 & !nombre.equalsIgnoreCase("") & !correo.equalsIgnoreCase("")
                    & !tipo.equalsIgnoreCase("") & !linkcvlad.equalsIgnoreCase("") & idDocente!=0) {
                stmt = conn.prepareStatement("UPDATE docente SET nombre='" + nombre + 
                        "', correo='" + correo + "', tipo='" + tipo + "', linkcvlad='" + 
                        linkcvlad + "', dpto=" + dpto + " WHERE idDocente=" + idDocente);
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
    public ArrayList<DocenteDTO> mostrarDocenteId(int idDocente) throws Exception {
        ArrayList<DocenteDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        DocenteDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM docente WHERE idDocente=" + idDocente);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new DocenteDTO();
                usu.setIdDocente(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setCorreo(res.getString(3));
                usu.setTipo(res.getString(4));
                usu.setLinkcvlad(res.getString(5));
                usu.setDpto(res.getInt(6));
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
    public ArrayList<DocenteDTO> mostrarDocenteDpto(int dpto) throws Exception {
        ArrayList<DocenteDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        DocenteDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM docente WHERE dpto=" + dpto);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new DocenteDTO();
                usu.setIdDocente(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setCorreo(res.getString(3));
                usu.setTipo(res.getString(4));
                usu.setLinkcvlad(res.getString(5));
                usu.setDpto(res.getInt(6));
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
