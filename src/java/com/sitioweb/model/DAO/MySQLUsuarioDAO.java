/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.DTO.UsuarioDTO;
import com.sitioweb.model.interfaz.IUsuario;
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
public class MySQLUsuarioDAO implements IUsuario{
    
    private Connection conn;
//    private String DRIVER = "org.gjt.mm.mysql.Driver";
//    private String DBURL = "jdbc:mysql://localhost/sitioweb";
//    private String USER = "root";
//    private String PASS = "";
//    public boolean keepConnection;
//
//    public MySQLUsuarioDAO(boolean keepConnection) {
//        this.keepConnection = keepConnection;
//        try {
//            Class.forName(DRIVER).newInstance();
//            conn = DriverManager.getConnection(DBURL, USER, PASS);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
    
    @Override
    public boolean registrarUsuario(UsuarioDTO dto) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("INSERT INTO usuario" + "(codusuario, contrasena, "
                    + "nombre, correo, telefono) values (?,?,?,?,?)");
            stmt.setInt(1, dto.getCodusuario());
            stmt.setString(2, dto.getContrasena());
            stmt.setString(3, dto.getNombre());
            stmt.setString(4, dto.getCorreo());
            stmt.setInt(5, dto.getTelefono());
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
    public ArrayList<UsuarioDTO> mostrarUsuario() throws Exception {
        ArrayList<UsuarioDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        UsuarioDTO usu = null;
        ResultSet res = null;
        try {
            conn = Conexion.conectar();
            stmt = conn.prepareStatement("SELECT * FROM usuario");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new UsuarioDTO();
                usu.setCodusuario(res.getInt(1));
                usu.setContrasena(res.getString(2));
                usu.setNombre(res.getString(3));
                usu.setCorreo(res.getString(4));
                usu.setTelefono(res.getInt(5));
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
    public boolean eliminarUsuario(int codusuario) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarDatosUsuario(int codusuario, String contrasena, String nombre, 
            String correo, int telefono) throws Exception {
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            if (codusuario!=0 & !nombre.equalsIgnoreCase("") & !contrasena.equalsIgnoreCase("") 
                    & !correo.equalsIgnoreCase("") & telefono!=0) {
                stmt = conn.prepareStatement("UPDATE usuario SET nombre='" + nombre + 
                        "', contrasena='" + contrasena + "', correo='" + correo +
                        "', telefono=" + telefono + " WHERE codusuario=" + codusuario);
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
