/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 *
 * @author CASA
 */
public class JDBCMiddler {

    protected String controlador = "sun.jdbc.odbc.JdbcOdbcDriver";
    protected String url = "jdbc.odbc.default";
    protected Connection conexion;
    protected String usuario;
    protected String clave = new String();
    protected String SQL;

    protected JDBCMiddler() {
    }

    /**
     * Crea un objeto JDBCMiddler, que encapsula toda la informacion y Métodos
     * de acceso a una base de datos dentro de una aplicacion en el contexto
     * JDBC.
     *
     * @param comandoSQL
     * @param parametros
     * @return
     * @throws java.lang.Exception
     */
    protected boolean ejecutarActualizacionSQL(String comandoSQL, Iterator parametros) throws Exception {
        boolean ok;
        if (this.conectar()) {
            //System.err.println(comandoSQL+"-->");
            try ( //La consulta es preparada porque requiere de parametros
                    //por ejemplo:
                    //delete from producto where precio=?
                    //insert into producto values (?,?,?,?,?)
                    //los ? indican parametros ordenados por posicion
                    PreparedStatement sql = this.conexion.prepareStatement(comandoSQL)) {
                //System.err.println(comandoSQL+"-->");
                for (int i = 1; parametros.hasNext(); i++) {
                    String parametro = parametros.next().toString();
                    sql.setString(i, parametro);
                    //System.err.println("param["+i+"]="+parametro);
                }
                ok = sql.executeUpdate() != 0;
                //importante cerrar la conexión
            }
            this.desconectar();

            return ok;
        } else {
            return false;
        }
    }//Fin ejecutarSQL

    protected JDBCMiddler(String controlador, String url) {
        this.controlador = controlador;
        this.url = url;
    }//Fin Constructor JDBCMiddler

    /**
     * Crea un objeto JDBCMiddler, que encapsula toda la informacion y Métodos
     * de acceso a una base de datos dentro de una aplicacion en el contexto
     * JDBC.
     *
     * @param	controlador	Una cadena con el controlador JDBC a emplear
     * @param	url	Una cadena de conexión JDBC a la Base de Datos
     * @param usuario	Una cadena con el login
     * @param	clave	Una cadena con la clave de acceso
     */
    protected JDBCMiddler(String controlador, String url, String usuario,
            String clave) {
        this.controlador = controlador;
        this.url = url;
        this.usuario = usuario;
        this.clave = clave;
    }//Fin Constructor JDBCMiddler

    /**
     * Averigua si la conexi�n con la Base de Datos est� disponible.
     *
     * @return	Regresa verdadero (true) si la conexi�n est� disponible. La
     * conexi�n est� disponible cuando conexi�n!=null y !conexi�n.isClosed()
     */
    protected boolean hayconexion() {
        return this.conexion != null;
    }//Fin hayConexi�n	

    /**
     * Establece una conexión con la base de datos. Si existen parametros de
     * conexión los usa y se conecta de la manera tradicional.
     *
     * @return	Regresa verdadero (true) si pudo establecer la conexión de lo
     * contrario regresa falso (false).
     * @throws java.lang.Exception
     */
    protected boolean conectar() throws Exception {
        if (!hayconexion()) {
            return conectar(this.usuario, this.clave);
        } else {
            return true;
        }
    }//Fin conectar

    /**
     * Se conecta a un servicio JDBC usando java.naming. Los parametros de
     * configuracion se manejan para el contexto de la aplicacion, permitiendo
     * un pool de conexiónes persistentes disponibles para toda la aplicacion.
     * Tomcat proporciona este servicio configurandolo en el archivo web.xml o
     * server.xml
     *
     * @param	servicio	Una cadena como "java:comp/env/servicio"
     * @return
     * @throws java.lang.Exception
     *
     */
    protected boolean conectar(String servicio) throws Exception {
        /*
	   *Para conectarse con Tomcat
	   *en el archivo de coniguracion se especifican
	   *los parametros de conexión.
         */
        long t = System.currentTimeMillis();
        //Context es un objeto que encapsula el contexto de la aplicacion
        Context ctx = new InitialContext();
        //DataSource es el origen de datos, 
        //un servicio JDBC proporcionado mediante java naming
        //El nombre del servicio deberia ser recibido como
        //argumento
        DataSource ds = (DataSource) ctx.lookup(servicio);

        //Ahora si obtiene la conexión
        this.conexion = ds.getConnection();

        return this.conexion != null;
    }//Fin conectar

    /**
     * Establece una conexión con la base de datos, usando el usuario y clave
     * especificados. Si ya hay una conexi�n, esta es cerrada.
     *
     * @param	usuario	Una cadena con el nombre de usuario
     * @param clave	Una cadena con la clave
     * @return	Regresa verdadero (true) si pudo establecer la conexión de lo
     * contrario regresa falso (false).
     * @throws java.lang.Exception
     */
    protected boolean conectar(String usuario, String clave) throws Exception {

        //Registra el controlador de manera implicita
        Class.forName(controlador).newInstance();
        //Obtiene la conexión
        this.conexion = DriverManager.getConnection(url, usuario, clave);
        //Actualiza usuario y clave del middler
        this.usuario = usuario;
        this.clave = clave;
        return this.conexion != null;
    }//Fin conectar

    /**
     * Cierra la conexión con la base de datos
     *
     * @throws java.lang.Exception
     */
    protected void desconectar() throws Exception {
        if (this.hayconexion()) {
            this.conexion.close();
            this.conexion = null;
        }
    }//Fin desconectar

    /**
     * Ejecuta una sentencia SQL y regresa como resultado un objeto ResultSet
     *
     * @param	consultaSQL	Cadena que contiene una sentencia de consulta SQL:
     * SELECT listaCampos FROM listaTablas WHERE listaCondiciones
     * @return	Regresa un objeto ResulSet con el resultado de la consulta
     * @throws java.lang.Exception
     */
    protected ResultSet ejecutarSQL(String consultaSQL) throws Exception {
        if (this.conectar()) {
            Statement sql = this.conexion.createStatement();
            return sql.executeQuery(consultaSQL);
        } else {
            return null;
        }
    }//Fin ejecutarSQL

    /**
     * Ejecuta una sentencia SQL y regresa como resultado un objeto ResultSet.
     * La Consulta requiere de parametros en tiempo de ejecuci�n.
     *
     * @param comandoSQL
     * @return	Regresa un objeto ResulSet con el resultado de la consulta
     * @throws java.lang.Exception
     *
     */
    protected boolean ejecutarActualizacionSQL(String comandoSQL) throws Exception {
        boolean ok;
        if (this.conectar()) {
            //System.err.println(comandoSQL+"-->");
            /*for(int i=1;parametros.hasNext();i++){
            String parametro= parametros.next().toString();
            sql.setString(i,parametro);
            //System.err.println("param["+i+"]="+parametro);
            }*/
            try ( //La consulta es preparada porque requiere de parametros
                    //por ejemplo:
                    //delete from producto where precio=?
                    //insert into producto values (?,?,?,?,?)
                    //los ? indican parametros ordenados por posicion
                    PreparedStatement sql = this.conexion.prepareStatement(comandoSQL)) {
                //System.err.println(comandoSQL+"-->");
                /*for(int i=1;parametros.hasNext();i++){
                String parametro= parametros.next().toString();
                sql.setString(i,parametro);
                //System.err.println("param["+i+"]="+parametro);
                }*/
                ok = sql.executeUpdate() != 0;
                //importante cerrar la conexión
                //this.desconectar();
            }

            return ok;
        } else {
            return false;
        }
    }//Fin ejecutarSQL

    protected ResultSet ejecutarSQL(String consultaSQL, Iterator parametros)
            throws Exception {
        if (this.conectar()) {
            PreparedStatement sql = this.conexion.prepareStatement(consultaSQL);

            //System.err.println(consultaSQL+"-->");
            for (int i = 1; parametros.hasNext(); i++) {
                String parametro = parametros.next().toString();
                sql.setString(i, parametro);
                //System.err.println("param["+i+"]="+parametro);
            }

            return sql.executeQuery();
        } else {
            return null;
        }
    }//Fin ejecutarSQL

    protected ResultSet ejecutarSQL(String consultaSQL, Object[] param) throws Exception {
        if (this.conectar()) {
            PreparedStatement sql = this.conexion.prepareStatement(consultaSQL);
            cargarParametros(sql, param);
            return sql.executeQuery();
        } else {
            return null;
        }
    }

    private void cargarParametros(PreparedStatement sql, Object[] parametros) throws Exception {

        String clase;
        for (int i = 1; i <= parametros.length; i++) {
            clase = parametros[i - 1].getClass().getName();   // nombre de la clase
            // System.err.println(clase);
            switch (clase) {
                case "java.lang.String":
                    sql.setString(i, (String) parametros[i - 1]);
                    break;
                case "java.lang.Integer":
                    sql.setInt(i, (Integer) parametros[i - 1]);
                    break;
                case "java.lang.Float":
                    sql.setFloat(i, (Float) parametros[i - 1]);
                    break;
                case "java.lang.Double":
                    sql.setDouble(i, (Double) parametros[i - 1]);
                    break;
                case "java.lang.Long":
                    sql.setLong(i, (Long) parametros[i - 1]);
                    break;
            }
        }
    }

    /*-MétodoS DE ACCESO-*/
    /**
     * Método de acceso a la propiedad usuario
     *
     * @return
     */
    protected String getUsuario() {
        return this.usuario;
    }//fin getUsuario

    /**
     * Método de acceso a la propiedad clave
     *
     * @return
     */
    protected String getClave() {
        return this.clave;
    }//fin getClave

    /**
     * Método de acceso a la propiedad url
     *
     * @return
     */
    protected String getUrl() {
        return this.url;
    }//fin getUrl

    /**
     * Método de acceso a la propiedad controlador
     *
     * @return
     */
    protected String getControlador() {
        return this.controlador;
    }//fin getControlador

    /*-MétodoS DE MODIFICACION-*/
    /**
     * Método de modificacion a la propiedad usuario
     *
     * @param usuario
     */
    protected void setUsuario(String usuario) {
        this.usuario = usuario;
    }//fin setUsuario

    /**
     * Método de modificacion a la propiedad clave
     *
     * @param clave
     */
    protected void setClave(String clave) {
        this.clave = clave;
    }//fin setClave

    /**
     * Método de modificacion a la propiedad url
     *
     * @param url
     */
    protected void setUrl(String url) {
        this.url = url;
    }//fin setUrl

    /**
     * Método de modificacion a la propiedad controlador
     *
     * @param controlador
     */
    protected void setControlador(String controlador) {
        this.controlador = controlador;
    }//fin setControlador

    /**
     * Método de modificacion a la propiedad consulta
     *
     * @param SQL
     */
    protected void setSQL(String SQL) {
        this.SQL = SQL;
    }//fin setSQL

    /**
     * EJECUTA UNA CONSULTA Y GENERA LA TABLA HTML
     *
     * @param SQL
     * @return
     * @throws java.lang.Exception
     */
    protected String getHTML(String SQL) throws Exception {
        StringBuilder html = new StringBuilder();
        html.append("<TABLE border='1'>");
        html.append("<TR>");

        if (conectar()) {
            ResultSet rs = ejecutarSQL(SQL);
            ResultSetMetaData rsm = rs.getMetaData();
            html.append("<TR>");
            for (int i = 1; i <= rsm.getColumnCount(); i++) {
                StringBuilder append = html.append("<TH>").append(rsm.getColumnName(i)).append("</TH>");
            }
            html.append("</TR>");
            while (rs.next()) {
                html.append("<TR>");
                for (int i = 1; i <= rsm.getColumnCount(); i++) {
                    StringBuilder append = html.append("<TD>").append(rs.getString(i)).append(".</TD>");
                }
                html.append("</TR>");
            }

        }

        html.append("</TR>");
        html.append("</TABLE>");
        return html.toString();
    }//Fin getHTML

    protected ArrayList<String> getSQL(String SQL) throws Exception {
        StringBuilder html = new StringBuilder();
        ArrayList<String> v = new ArrayList<>();

        if (conectar()) {
            ResultSet rs = ejecutarSQL(SQL);
            ResultSetMetaData rsm = rs.getMetaData();

            while (rs.next()) {
                String r = "";
                for (int i = 1; i <= rsm.getColumnCount(); i++) {
                    r += rs.getString(i) + "&";
                }
                v.add(r);
            }

        }

        return v;
    }//Fin getHTML

    /**
     * EJECUTA UNA CONSULTA Y GENERA XML
     *
     * @return
     * @throws java.lang.Exception
     */
    protected String getXML() throws Exception {
        StringBuilder xml = new StringBuilder();
        xml.append("<registros>");

        if (conectar()) {
            ResultSet rs = ejecutarSQL(this.SQL);
            while (rs.next()) {
                ResultSetMetaData rsm = rs.getMetaData();
                xml.append("<registro>");
                for (int i = 1; i <= rsm.getColumnCount(); i++) {
                    xml.append("<").append(rsm.getColumnName(i)).append(">");
                    xml.append(rs.getString(i));
                    xml.append("</").append(rsm.getColumnName(i)).append(">");
                }
                xml.append("</registro>");
            }

        }

        xml.append("</registros>");
        return xml.toString();
    }//Fin getXML

    /**
     * M�todo de prueba Recibe como argumento el nombre del archivo de
     * configuracion. Para usarlo: java JDBCMiddler archivo.conf
     *
     * @param args
     * @throws java.lang.Exception
     */
    protected static void main(String args[]) throws Exception {
        //Se recibe como argumento del main el archivo de 
        //configuracion que contiene el driver
        //la url, el login y la clave
        String parametros[] = leerParametros(args[0]);
        int n = 1;
        JDBCMiddler middler = new JDBCMiddler(parametros[0],
                parametros[1],
                parametros[2],
                parametros[3]);
        if (middler.conectar()) {
            ResultSet rs = middler.ejecutarSQL(parametros[4]);
            while (rs.next()) {
                ResultSetMetaData rsm = rs.getMetaData();
            }
            middler.desconectar();
        }
    }//fin main

    /**
     * Servicio que permite Leer los parametros de entrada
     *
     * @param rutaArchivo
     * @return
     * @throws java.lang.Exception
     */
    protected static String[] leerParametros(String rutaArchivo) throws Exception {
        String[] parametros = new String[5];
        try (java.io.BufferedReader flujoE = new java.io.BufferedReader(
                new java.io.FileReader(rutaArchivo))) {
            parametros[0] = flujoE.readLine();
            parametros[1] = flujoE.readLine();
            parametros[2] = flujoE.readLine();
            parametros[3] = flujoE.readLine();
            parametros[4] = flujoE.readLine();
        }
        return parametros;
    }//fin leerParametros

    protected boolean ejecutarActualizacionSQL(String comandoSQL, Object[] parametros) throws Exception {
        boolean ok;
        if (this.conectar()) {
            try (PreparedStatement sql = this.conexion.prepareStatement(comandoSQL)) {
                cargarParametros(sql, parametros);
                ok = sql.executeUpdate() != 0;
            }
            this.desconectar();

            return ok;
        } else {
            return false;
        }
    }
}
