/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.GraduadoDTO;
import com.sitioweb.model.interfaz.IGraduado;
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
public class MySQLGraduadoDAO implements IGraduado{

    private Connection conn;
    
    @Override
    public boolean registrarGraduado(GraduadoDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO graduado" + "(tipoinfog, "
                    + "descripcion, nombre, link, documento) values (?,?,?,?,?)");
            stmt.setInt(1, dto.getTipoInfog());
            stmt.setString(2, dto.getDescripcion());
            stmt.setString(3, dto.getNombre());
            stmt.setString(4, dto.getLink());
            stmt.setString(5, dto.getDocumento());
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
    public ArrayList<GraduadoDTO> mostrarGraduado() throws Exception {
        ArrayList<GraduadoDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        GraduadoDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT g.idgraduado ,g.tipoinfog, tg.descripcion, g.descripcion, "
                    + "g.nombre, g.link, g.documento FROM graduado g, tipoinfograduado tg WHERE "
                    + "g.tipoinfog=tg.idtipoinfo");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new GraduadoDTO();
                usu.setIdGraduado(res.getInt(1));
                usu.setTipoInfog(res.getInt(2));
                usu.setTnombre(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setNombre(res.getString(5));
                usu.setLink(res.getString(6));
                usu.setDocumento(res.getString(7));
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
    public ArrayList<GraduadoDTO> mostrarGraduadoId(int idGraduado) throws Exception {
        ArrayList<GraduadoDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        GraduadoDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT g.idgraduado ,g.tipoinfog, tg.descripcion, g.descripcion, "
                    + "g.nombre, g.link, g.documento FROM graduado g, tipoinfograduado tg WHERE "
                    + "g.tipoinfog=tg.idtipoinfo AND g.idgraduado=" + idGraduado);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new GraduadoDTO();
                usu.setIdGraduado(res.getInt(1));
                usu.setTipoInfog(res.getInt(2));
                usu.setTnombre(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setNombre(res.getString(5));
                usu.setLink(res.getString(6));
                usu.setDocumento(res.getString(7));
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
    public ArrayList<GraduadoDTO> mostrarGraduadoTipo(int tipo) throws Exception {
        ArrayList<GraduadoDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        GraduadoDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT g.idgraduado ,g.tipoinfog, tg.descripcion, g.descripcion, "
                    + "g.nombre, g.link, g.documento FROM graduado g, tipoinfograduado tg WHERE "
                    + "g.tipoinfog=tg.idtipoinfo AND g.tipoinfog=" + tipo);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new GraduadoDTO();
                usu.setIdGraduado(res.getInt(1));
                usu.setTipoInfog(res.getInt(2));
                usu.setTnombre(res.getString(3));
                usu.setDescripcion(res.getString(4));
                usu.setNombre(res.getString(5));
                usu.setLink(res.getString(6));
                usu.setDocumento(res.getString(7));
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
    public boolean eliminarGraduado(GraduadoDTO dto) throws Exception {
        boolean exito = false;
        try {
            System.out.println("--1" + dto.getIdGraduado()+ "." + dto.getNombre());
            conn = Conexion.conectar();
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM graduado WHERE idgraduado='" 
                    + dto.getIdGraduado() + "' AND nombre='" + dto.getNombre()+  "';");
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
    public boolean actualizarGraduado(int idGraduado, int tipoinfog, String descripcion, String nombre, 
            String link, String documento) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idGraduado!=0 & !descripcion.equalsIgnoreCase("") & !nombre.equalsIgnoreCase("") 
                    & !link.equalsIgnoreCase("") & !documento.equalsIgnoreCase("") & tipoinfog!=0) {
                stmt = conn.prepareStatement("UPDATE graduado SET  tipoinfog=" + tipoinfog + ", descripcion='" 
                        + descripcion + "', nombre='" + nombre + "', link='" + link + 
                        "', documento='" + documento + "' WHERE idgraduado=" + idGraduado);
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
