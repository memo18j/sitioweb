/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author CASA
 */
public class Conexion {

   private static final String DATA_BASE = "sitioweb2";
    private static final String LOGIN = "root";
    private static final String PASS = "";
    private static final String URL = "jdbc:mysql://localhost/";
    private static final String DRIVER= "org.gjt.mm.mysql.Driver";
    private static JDBCMiddler jdbc;


    /**
     * Comprueba si hay o no hay conexion
     *
     * @return un boolean, true si hay conexion y false si no
     */
    public static boolean hayConexion() {
        return (jdbc != null && jdbc.hayconexion());
    }

    /**
     * Método que realiza la conexion con administrador de la base de datos
     *
     * @return
     * @throws java.lang.Exception
     */
    public static Connection conectar() throws Exception {
        Connection conn;
        Class.forName(DRIVER).newInstance();
        conn = DriverManager.getConnection(URL + DATA_BASE, LOGIN, PASS);
        return conn;
    }

    /**
     * Método que desconecta la aplicacion de la base de datos
     */
    public static void desconectar() {
        try {
            jdbc.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}