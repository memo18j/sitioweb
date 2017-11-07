/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.test;

import com.sitioweb.model.DTO.TipoInfoDTO;
import com.sitioweb.util.Conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public class PruebaConexion {

//    private static final String DATA_BASE = "sitioweb2";
    private static final String LOGIN = "root";
    private static final String PASS = "";
    private static final String URL = "jdbc:mysql://localhost/sitioweb2";
    private static final String DRIVER= "org.gjt.mm.mysql.Driver";
//    private static JDBCMiddler jdbc;
    private Connection conn;
//    private String DRIVER = "org.gjt.mm.mysql.Driver";
//    private String DBURL = "jdbc:mysql://localhost/sifi";
//    private String DB = "sifi";
//    private String USER = "ufps_38";
//    private String PASS = "ufps_uy";
    public boolean keepConnection;

    public PruebaConexion(boolean keepConnection) {
        this.keepConnection = keepConnection;
        try {
            Class.forName(DRIVER).newInstance();
            conn = DriverManager.getConnection(URL, LOGIN, PASS);
            if (conn != null) {
                System.out.println("Conexion establecida");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public ArrayList<TipoInfoDTO> mostrarTipoInfo() throws Exception {
        System.out.println("pep3");
        ArrayList<TipoInfoDTO> list = new ArrayList();
        PreparedStatement stmt = null;
        TipoInfoDTO usu = null;
        ResultSet res = null;
        try {
            System.out.println("pep4");
            conn = Conexion.conectar();
            System.out.println("pep5");
            stmt = conn.prepareStatement("SELECT idinfo, descripcion FROM tipoinfo");
            res = stmt.executeQuery();
            while (res.next()) {
                usu = new TipoInfoDTO();
                usu.setIdinfo(res.getInt(1));
                usu.setDescripcion(res.getString(2));
//                usu.setPestana(res.getInt(3));
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
    
    public static void main(String[] args) throws Exception{
        PruebaConexion p = new PruebaConexion(true);
        System.out.println("AAAAA:"+p.mostrarTipoInfo());
    }
}
