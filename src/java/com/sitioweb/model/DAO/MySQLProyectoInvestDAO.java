/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.ProyectoInvestDTO;
import com.sitioweb.model.interfaz.IProyectoInvest;
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
public class MySQLProyectoInvestDAO implements IProyectoInvest{

    private Connection conn;
    
    @Override
    public boolean registrarProyectoInvest(ProyectoInvestDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO proyectoinvest" + "(nombre, grupo, "
                    + "descripcion) values (?,?,?)");
            stmt.setString(1, dto.getNombre());
            stmt.setInt(2, dto.getGrupo());
            stmt.setString(3, dto.getDescripcion());
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
    public ArrayList<ProyectoInvestDTO> mostrarProyectoInvest() throws Exception {
        ArrayList<ProyectoInvestDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        ProyectoInvestDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM proyectoinvest");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new ProyectoInvestDTO();
                usu.setIdProyecto(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setGrupo(res.getInt(3));
                usu.setDescripcion(res.getString(4));
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
    public boolean eliminarProyectoInvest(int idProyecto) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarProyectoInvest(int idProyecto, String nombre, String descripcion, 
            int grupo) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idProyecto!=0 & !nombre.equalsIgnoreCase("") & !descripcion.equalsIgnoreCase("")
                    & grupo!=0) {
                stmt = conn.prepareStatement("UPDATE docente SET nombre='" + nombre + 
                        "', grupo=" + grupo + ", descripcion='" + descripcion + 
                        "' WHERE idProyecto=" + idProyecto);
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
    public ArrayList<ProyectoInvestDTO> mostrarProyectoInvestId(int idProyecto) throws Exception {
        ArrayList<ProyectoInvestDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        ProyectoInvestDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM proyectoinvest WHERE idproyecto=" 
                    + idProyecto);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new ProyectoInvestDTO();
                usu.setIdProyecto(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setGrupo(res.getInt(3));
                usu.setDescripcion(res.getString(4));
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
    public ArrayList<ProyectoInvestDTO> mostrarProyectoInvestGrupo(int grupo) throws Exception {
        ArrayList<ProyectoInvestDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        ProyectoInvestDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM proyectoinvest WHERE grupo=" + grupo);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new ProyectoInvestDTO();
                usu.setIdProyecto(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setGrupo(res.getInt(3));
                usu.setDescripcion(res.getString(4));
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
