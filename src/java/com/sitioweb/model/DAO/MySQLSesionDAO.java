/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.model.DAO;

import com.sitioweb.model.interfaz.ISesion;
import com.sitioweb.util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author CASA
 */
public class MySQLSesionDAO implements ISesion {

    private Connection conn;

    @Override
    public boolean iniciarSesion(String usuario, String contrasenia) {
        boolean exito = false;
        try {
            conn = Conexion.conectar();
            PreparedStatement stmt = conn.prepareStatement("SELECT codusuario, contrasena "
                    + "FROM usuario WHERE codusuario=" + usuario + " AND contrasena='" + contrasenia + "';");
            ResultSet res = stmt.executeQuery();
            while (res.next()) {
                String u = res.getString(1);
                String c = res.getString(2);
                if (usuario.equalsIgnoreCase(u) && contrasenia.equalsIgnoreCase(c)) {
                    exito = true;
                }
            }
            stmt.close();
            res.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
        return exito;
    }

}