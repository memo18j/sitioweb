/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.TipoInternacionalizacionDTO;
import com.sitioweb.model.interfaz.ITipoInternacionalizacion;
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
public class MySQLTipoInternacionalizacionDAO implements ITipoInternacionalizacion{

    private Connection conn;
    
    @Override
    public boolean registrarTipoInternac(TipoInternacionalizacionDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO tipointernacionalizacion" + "(descripcion) "
                    + "values (?)");
            stmt.setString(1, dto.getDescripcion());
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
    public ArrayList<TipoInternacionalizacionDTO> mostrarTipoInternac() throws Exception {
        ArrayList<TipoInternacionalizacionDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        TipoInternacionalizacionDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM tipointernacionalizacion");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new TipoInternacionalizacionDTO();
                usu.setIdTipoInternac(res.getInt(1));
                usu.setDescripcion(res.getString(2));
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
    public ArrayList<TipoInternacionalizacionDTO> mostrarTipoInternacId(int idTipoInternac) throws Exception {
        ArrayList<TipoInternacionalizacionDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        TipoInternacionalizacionDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM tipointernacionalizacion WHERE idtipointernac=" 
                    + idTipoInternac);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new TipoInternacionalizacionDTO();
                usu.setIdTipoInternac(res.getInt(1));
                usu.setDescripcion(res.getString(2));
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
    public boolean eliminarTipoInternac(TipoInternacionalizacionDTO dto) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarTipoInternac(int idTipoInternac, String descripcion) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idTipoInternac!=0 & !descripcion.equalsIgnoreCase("")) {
                stmt = conn.prepareStatement("UPDATE grupoinvestigacion SET descripcion='" + descripcion + 
                        "' WHERE idTipoInternac=" + idTipoInternac);
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