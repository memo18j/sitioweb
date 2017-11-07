/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.DepartamentoDTO;
import com.sitioweb.model.interfaz.IDepartamento;
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
public class MySQLDepartamentoDAO implements IDepartamento {

    private Connection conn;

    @Override
    public boolean registrarDepartamento(DepartamentoDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            System.out.println("1: " + dto.getNombre() + "2: " + dto.getDirector() + "3: " + dto.getDirector()
                    + "4: " + dto.getLink());
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO departamento" + "(nombre, director, "
                    + "descripcion, link) values (?,?,?,?)");
            stmt.setString(1, dto.getNombre());
            stmt.setString(2, dto.getDirector());
            stmt.setString(3, dto.getDescripcion());
            stmt.setString(4, dto.getLink());
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
    public ArrayList<DepartamentoDTO> mostrarDepartamento() throws Exception {
        ArrayList<DepartamentoDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        DepartamentoDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM departamento");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new DepartamentoDTO();
                usu.setIddpto(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setDirector(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setLink(res.getString(5));
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
    public boolean eliminarDepartamento(DepartamentoDTO dto) throws Exception {
        boolean exito = false;
        try {
            System.out.println("--1" + dto.getIddpto() + "." + dto.getNombre());
            conn = Conexion.conectar();
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM departamento WHERE iddpto='"
                    + dto.getIddpto() + "' AND nombre='" + dto.getNombre() + "';");
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
    public boolean actualizarDepartamento(int iddpto, String nombre, String director,
            String descripcion, String link) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (iddpto != 0 & !nombre.equalsIgnoreCase("") & !descripcion.equalsIgnoreCase("")
                    & !link.equalsIgnoreCase("") & !director.equalsIgnoreCase("")) {
                stmt = conn.prepareStatement("UPDATE departamento SET nombre='" + nombre
                        + "', director='" + director + "', descripcion='" + descripcion
                        + "', link='" + link + "' WHERE iddpto=" + iddpto);
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
    public ArrayList<DepartamentoDTO> mostrarDepartamentoId(int iddpto) throws Exception {
        ArrayList<DepartamentoDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        DepartamentoDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM departamento WHERE iddpto=" + iddpto);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new DepartamentoDTO();
                usu.setIddpto(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setDirector(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setLink(res.getString(5));
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
