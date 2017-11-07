/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.ProgramaDTO;
import com.sitioweb.model.interfaz.IPrograma;
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
public class MySQLProgramaDAO implements IPrograma{

    private Connection conn;
    
    @Override
    public boolean registrarPrograma(ProgramaDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO programa" + "(nombre, tipo, "
                    + "director, correoprograma, ubicacion, telefono, codsnies, modalidad,"
                    + "horarioatencion, imagen, link) values (?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setString(1, dto.getNombre());
            stmt.setInt(2, dto.getTipo());
            stmt.setString(3, dto.getDirector());
            stmt.setString(4, dto.getCorreoprograma());
            stmt.setString(5, dto.getUbicacion());
            stmt.setString(6, dto.getTelefono());
            stmt.setInt(7, dto.getCodsnies());
            stmt.setString(8, dto.getModalidad());
            stmt.setString(9, dto.getHorario());
            stmt.setString(10, dto.getImagen());
            stmt.setString(11, dto.getLink());
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
    public ArrayList<ProgramaDTO> mostrarPrograma() throws Exception {
        ArrayList<ProgramaDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        ProgramaDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM programa");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new ProgramaDTO();
                usu.setIdPrograma(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setTipo(res.getInt(3));
                usu.setDirector(res.getString(4));
                usu.setCorreoprograma(res.getString(5));
                usu.setUbicacion(res.getString(6));
                usu.setTelefono(res.getString(7));
                usu.setCodsnies(res.getInt(8));
                usu.setModalidad(res.getString(9));
                usu.setHorario(res.getString(10));
                usu.setImagen(res.getString(11));
                usu.setLink(res.getString(12));
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
    public ArrayList<ProgramaDTO> mostrarProgramaId(int idPrograma) throws Exception {
        ArrayList<ProgramaDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        ProgramaDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            System.out.println("entro: " + idPrograma);
            stmt = conn.prepareStatement("SELECT * FROM programa WHERE idprograma=" + idPrograma);
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new ProgramaDTO();
                usu.setIdPrograma(res.getInt(1));
                usu.setNombre(res.getString(2));
                usu.setTipo(res.getInt(3));
                usu.setDirector(res.getString(4));
                usu.setCorreoprograma(res.getString(5));
                usu.setUbicacion(res.getString(6));
                usu.setTelefono(res.getString(7));
                usu.setCodsnies(res.getInt(8));
                usu.setModalidad(res.getString(9));
                usu.setHorario(res.getString(10));
                usu.setImagen(res.getString(11));
                usu.setLink(res.getString(12));
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
    public boolean eliminarPrograma(ProgramaDTO dto) throws Exception {
        boolean exito = false;
        try {
            System.out.println("--1" + dto.getIdPrograma()+ "." + dto.getNombre());
            conn = Conexion.conectar();
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM programa WHERE idprograma='"
                    + dto.getIdPrograma()+ "' AND nombre='" + dto.getNombre() + "';");
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
    public boolean actualizarPrograma(int idPrograma, String nombre, int tipo, String director, 
            String correoprograma, String ubicacion, String telefono, int codsnies, 
            String modalidad, String horario, String imagen, String link) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (idPrograma!=0 & !nombre.equalsIgnoreCase("") & tipo!=0 & !director.equalsIgnoreCase("")
                    & !correoprograma.equalsIgnoreCase("") & !ubicacion.equalsIgnoreCase("") 
                    & !telefono.equalsIgnoreCase("") & codsnies!=0 & !modalidad.equalsIgnoreCase("")
                    & !horario.equalsIgnoreCase("") & !imagen.equalsIgnoreCase("") 
                    & !link.equalsIgnoreCase("")) {
                stmt = conn.prepareStatement("UPDATE departamento SET nombre='" + nombre + 
                        "', tipo=" + tipo + ", director='" + director + "', correoprograma='" + 
                        correoprograma + "', ubicacion='" + ubicacion + "', telefono='" + telefono +
                        "', codsnies=" + codsnies + ", modalidad='" + modalidad + "', horario='" + 
                        horario + "', imagen='" + imagen + "', link='" + link + "' WHERE idPrograma=" + idPrograma);
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
