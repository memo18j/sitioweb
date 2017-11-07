/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.LaboratorioDTO;
import com.sitioweb.model.interfaz.ILaboratorio;
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
public class MySQLLabotorioDAO implements ILaboratorio{

    private Connection conn;
    
    @Override
    public boolean registrarLaboratorio(LaboratorioDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO laboratorio" + "(nombre, tipo, "
                    + "descripcion) values (?,?,?)");
            stmt.setString(1, dto.getNombre());
            stmt.setString(2, dto.getTipo());
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
    public ArrayList<LaboratorioDTO> mostrarLaboratorio() throws Exception {
        ArrayList<LaboratorioDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        LaboratorioDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM laboratorio");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new LaboratorioDTO();
                usu.setIdLaboratorio(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setTipo(res.getString(3));
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
    public boolean eliminarLaboratorio(int idLaboratorio) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarLaboratorio(int idLaboratorio, String nombre, String tipo, 
            String descripcion) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idLaboratorio!=0 & !nombre.equalsIgnoreCase("") & !tipo.equalsIgnoreCase("")
                    & !tipo.equalsIgnoreCase("") & !descripcion.equalsIgnoreCase("")) {
                stmt = conn.prepareStatement("UPDATE docente SET nombre='" + nombre + 
                        "', tipo='" + tipo + "', descripcion='" + descripcion + 
                        "' WHERE idLaboratorio=" + idLaboratorio);
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
    public ArrayList<LaboratorioDTO> mostrarLaboratorioId(int idLaboratorio) throws Exception {
        ArrayList<LaboratorioDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        LaboratorioDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM laboratorio WHERE idlaboratorio=" 
                    + idLaboratorio);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new LaboratorioDTO();
                usu.setIdLaboratorio(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setTipo(res.getString(3));
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
    public ArrayList<LaboratorioDTO> mostrarLaboratorioTipo(String tipo) throws Exception {
        ArrayList<LaboratorioDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        LaboratorioDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM laboratorio WHERE tipo='" + tipo + "'");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new LaboratorioDTO();
                usu.setIdLaboratorio(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setTipo(res.getString(3));
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
