/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.InvestigacionDTO;
import com.sitioweb.model.interfaz.IInvestigacion;
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
 * @author personal
 */
public class MySQLInvestigacionDAO implements IInvestigacion{

    private Connection conn;
    
    @Override
    public boolean registrarInvestigacion(InvestigacionDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO investigacion" + "(nombre, director, "
                    + "correo, lineainvest, estatus,link, tipo) "
                    + "values (?,?,?,?,?,?,?)");
            stmt.setString(1, dto.getNombre());
            stmt.setString(2, dto.getDirector());
            stmt.setString(3, dto.getCorreo());
            stmt.setString(4, dto.getLineainvest());
            stmt.setString(5, dto.getEstatus());           
            stmt.setString(6, dto.getLink());
            stmt.setInt(7, dto.getTipo());
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
    public ArrayList<InvestigacionDTO> mostrarInvestigacion() throws Exception {
        ArrayList<InvestigacionDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        InvestigacionDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM investigacion");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new InvestigacionDTO();
                usu.setIdInvestigacion(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setDirector(res.getString(3));
                usu.setCorreo(res.getString(4));
                usu.setLineainvest(res.getString(5));
                usu.setEstatus(res.getString(6));            
                usu.setLink(res.getString(7));
                usu.setTipo(res.getInt(8));
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
    public ArrayList<InvestigacionDTO> mostrarInvestigacionId(int idInvestigacion) throws Exception {
        ArrayList<InvestigacionDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        InvestigacionDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM investigacion WHERE idinvestigacion=" 
                    + idInvestigacion);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new InvestigacionDTO();
                usu.setIdInvestigacion(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setDirector(res.getString(3));
                usu.setCorreo(res.getString(4));
                usu.setLineainvest(res.getString(5));
                usu.setEstatus(res.getString(6));               
                usu.setLink(res.getString(7));
                usu.setTipo(res.getInt(8));
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
    public ArrayList<InvestigacionDTO> mostrarInvestigacionTipo(int tipo) throws Exception {
        ArrayList<InvestigacionDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        InvestigacionDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM investigacion WHERE tipo=" + tipo);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new InvestigacionDTO();
                usu.setIdInvestigacion(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setDirector(res.getString(3));
                usu.setCorreo(res.getString(4));
                usu.setLineainvest(res.getString(5));
                usu.setEstatus(res.getString(6));          
                usu.setLink(res.getString(7));
                usu.setTipo(res.getInt(8));
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
    public boolean eliminarInvestigacion(InvestigacionDTO dto) throws Exception {
        boolean exito = false;
        try {
            System.out.println("--1" + dto.getIdInvestigacion()+ "." + dto.getNombre());
            conn = Conexion.conectar();
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM investigacion WHERE idinvestigacion='"
                    + dto.getIdInvestigacion()+ "' AND nombre='" + dto.getNombre() + "';");
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
    public boolean actualizarInvestigacion(int idInvestigacion, String nombre, String director, 
            String correo, String lineainvest, String estatus, 
            String link, int tipo) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idInvestigacion!=0 & !nombre.equalsIgnoreCase("") & !correo.equalsIgnoreCase("")
                    & !lineainvest.equalsIgnoreCase("") & !director.equalsIgnoreCase("")
                    & !estatus.equalsIgnoreCase("") & !link.equalsIgnoreCase("") &
                    tipo!=0) {
                stmt = conn.prepareStatement("UPDATE investigacion SET nombre='" + nombre + 
                        "', director='" + director + "', correo='" + correo + "', lineainvest='" + 
                        lineainvest + "', estatus='" + estatus + "', link='" + link + "', tipo=" + tipo
                        + " WHERE idInvestigacion=" + idInvestigacion);
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
