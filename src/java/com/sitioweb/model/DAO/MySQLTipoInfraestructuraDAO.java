/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.TipoInfraestructuraDTO;
import com.sitioweb.model.interfaz.ITipoInfraestructura;
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
public class MySQLTipoInfraestructuraDAO implements ITipoInfraestructura{

    private Connection conn;
    
    @Override
    public boolean registrarTipoInfraestructura(TipoInfraestructuraDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO tipoinfraestructura" + "(nombre) "
                    + "values (?)");
            stmt.setString(1, dto.getNombre());
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
    public ArrayList<TipoInfraestructuraDTO> mostrarTipoInfraestructura() throws Exception {
        ArrayList<TipoInfraestructuraDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        TipoInfraestructuraDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM tipoinfraestructura");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new TipoInfraestructuraDTO();
                usu.setIdTipoInfra(res.getInt(1));
                usu.setNombre(res.getString(2));
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
    public ArrayList<TipoInfraestructuraDTO> mostrarTipoInfraestructuraId(int idTipoInfra) throws Exception {
        ArrayList<TipoInfraestructuraDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        TipoInfraestructuraDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM tipoinfraestructura WHERE idtipoinfra=" + idTipoInfra);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new TipoInfraestructuraDTO();
                usu.setIdTipoInfra(res.getInt(1));
                usu.setNombre(res.getString(2));
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
    public boolean eliminarTipoInfraestructura(int idTipoInfra) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarTipoInfraestructura(int idTipoInfra, String nombre) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idTipoInfra!=0 & !nombre.equalsIgnoreCase("")) {
                stmt = conn.prepareStatement("UPDATE grupoinvestigacion SET nombre='" + nombre + 
                        " WHERE idTipoInfra=" + idTipoInfra);
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
