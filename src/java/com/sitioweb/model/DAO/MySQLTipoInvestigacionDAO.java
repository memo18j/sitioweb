/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.TipoInvestigacionDTO;
import com.sitioweb.model.interfaz.ITipoInvestigacion;
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
public class MySQLTipoInvestigacionDAO implements ITipoInvestigacion{

    private Connection conn;
    
    @Override
    public boolean registrarTipoInvestigacion(TipoInvestigacionDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO tipoinvest" + "(nombre) "
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
    public ArrayList<TipoInvestigacionDTO> mostrarTipoInvestigacion() throws Exception {
        ArrayList<TipoInvestigacionDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        TipoInvestigacionDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM tipoinvest");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new TipoInvestigacionDTO();
                usu.setIdTipoInvest(res.getInt(1));
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
    public ArrayList<TipoInvestigacionDTO> mostrarTipoInvestigacionId(int idTipoInvest) throws Exception {
        ArrayList<TipoInvestigacionDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        TipoInvestigacionDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM tipoinvest WHERE idtipoinvest=" + idTipoInvest);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new TipoInvestigacionDTO();
                usu.setIdTipoInvest(res.getInt(1));
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
    public boolean eliminarTipoInvestigacion(int idTipoInvest) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarTipoInvestigacion(int idTipoInvest, String nombre) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
