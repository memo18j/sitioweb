/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.TipoInfoGraduadoDTO;
import com.sitioweb.model.interfaz.ITipoInfoGraduado;
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
 * @author Memo
 */
public class MySQLTipoInfoGraduadoDAO implements ITipoInfoGraduado{

    private Connection conn;
    
    @Override
    public boolean registrarTipoInfoGraduado(TipoInfoGraduadoDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO tipoinfograduado" + "(descripcion)"
                    + " values (?)");
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
    public ArrayList<TipoInfoGraduadoDTO> mostrarTipoInfoGraduado() throws Exception {
        ArrayList<TipoInfoGraduadoDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        TipoInfoGraduadoDTO usu = null;
        ResultSet res = null;
        try {
            System.out.println("pep4");
            conn = Conexion.conectar();
            System.out.println("pep5");
            stmt = conn.prepareStatement("SELECT idtipoinfo, descripcion FROM tipoinfograduado");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new TipoInfoGraduadoDTO();
                usu.setIdtipoinfo(res.getInt(1));
                usu.setDescripcion(res.getString(2));
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
    public boolean eliminarTipoInfoGraduado(int idtipoinfo) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarTipoInfoGraduado(int idtipoinfo, String descripcion) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idtipoinfo!=0 & !descripcion.equalsIgnoreCase("")) {
                stmt = conn.prepareStatement("UPDATE tipoinfograduado SET descripcion='" + 
                        descripcion + "' WHERE idtipoinfo=" + idtipoinfo);
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
