/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.InfraestructuraDTO;
import com.sitioweb.model.interfaz.IInfraestructura;
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
public class MySQLInfraestructuraDAO implements IInfraestructura{

    private Connection conn;
    
    @Override
    public boolean registrarInfraestructura(InfraestructuraDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO infraestructura" + "(nombre, ubicacion, "
                    + "descripcion, tipo) "
                    + "values (?,?,?,?)");
            stmt.setString(1, dto.getNombre());
            stmt.setString(2, dto.getUbicacion());
            stmt.setString(3, dto.getDescripcion());
            stmt.setInt(4, dto.getTipo());
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
    public ArrayList<InfraestructuraDTO> mostrarInfraestructura() throws Exception {
        ArrayList<InfraestructuraDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        InfraestructuraDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM infraestructura");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new InfraestructuraDTO();
                usu.setIdInfra(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setUbicacion(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setTipo(res.getInt(5));
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
    public ArrayList<InfraestructuraDTO> mostrarInfraestructuraId(int idInfra) throws Exception {
        ArrayList<InfraestructuraDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        InfraestructuraDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM infraestructura WHERE idinfra=" + idInfra);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new InfraestructuraDTO();
                usu.setIdInfra(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setUbicacion(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setTipo(res.getInt(5));
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
    public ArrayList<InfraestructuraDTO> mostrarInfraestructuraTipo(int tipo) throws Exception {
        ArrayList<InfraestructuraDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        InfraestructuraDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM infraestructura WHERE tipo=" + tipo);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new InfraestructuraDTO();
                usu.setIdInfra(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setUbicacion(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setTipo(res.getInt(5));
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
    public boolean eliminarInfraestructura(InfraestructuraDTO dto) throws Exception {
      boolean exito = false;
        try {
            System.out.println("--1" + dto.getIdInfra()+ "." + dto.getNombre());
            conn = Conexion.conectar();
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM infraestructura WHERE idinfra='"
                    + dto.getIdInfra()+ "' AND nombre='" + dto.getNombre() + "';");
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
    public boolean actualizarInfraestructura(int idInfra, String nombre, String ubicacion, 
            String descripcion, int tipo) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idInfra!=0 & !nombre.equalsIgnoreCase("") & !ubicacion.equalsIgnoreCase("")
                    & !descripcion.equalsIgnoreCase("") & tipo!=0) {
                stmt = conn.prepareStatement("UPDATE grupoinvestigacion SET nombre='" + nombre + 
                        "', ubicacion='" + ubicacion + "', descripcion='" + descripcion 
                        + "', tipo=" + tipo + " WHERE idInfra=" + idInfra);
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
