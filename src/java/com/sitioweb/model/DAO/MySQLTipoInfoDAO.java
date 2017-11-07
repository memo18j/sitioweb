/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.TipoInfoDTO;
import com.sitioweb.model.interfaz.ITipoInfo;
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
public class MySQLTipoInfoDAO implements ITipoInfo{
    
    private Connection conn;

    @Override
    public boolean registrarTipoInfo(TipoInfoDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO tipoinfo" + "(descripcion, pestana)"
                    + " values (?,?)");
            stmt.setString(1, dto.getDescripcion());
            stmt.setInt(2, dto.getPestana());
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
    public ArrayList<TipoInfoDTO> mostrarTipoInfo() throws Exception {
        System.out.println("pep3");
        ArrayList<TipoInfoDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        TipoInfoDTO usu = null;
        ResultSet res = null;
        try {
            System.out.println("pep4");
            conn = Conexion.conectar();
            System.out.println("pep5");
            stmt = conn.prepareStatement("SELECT idinfo, descripcion FROM tipoinfo");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new TipoInfoDTO();
                usu.setIdinfo(res.getInt(1));
                usu.setDescripcion(res.getString(2));
                //usu.setPestana(res.getInt(3));
                System.out.println("---"+ usu.getDescripcion());
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
    public boolean eliminarTipoInfo(int idinfo) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarTipoInfo(int idinfo, String descripcion, int pestana) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idinfo!=0 & !descripcion.equalsIgnoreCase("")) {
                stmt = conn.prepareStatement("UPDATE tipoinfo SET descripcion='" + 
                        descripcion + "', pestana=" + pestana + " WHERE idinfo=" + idinfo);
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
