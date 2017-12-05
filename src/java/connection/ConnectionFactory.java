/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Home
 */
public class ConnectionFactory {

    private static final String DRIVE = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/dbrestaurante?zeroDateTimeBehavior=convertToNull";
    private static final String USER = "root";
    private static final String PASS = "";

    public static Connection getConnection() {
        try {
            Class.forName(DRIVE);
            return DriverManager.getConnection(URL, USER, PASS);

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("erro da pqp "+ ex);
            throw new RuntimeException("erro de conecção ", ex);
        }
    }

    public static void closeConnection(Connection con) {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("erro para fechar a conecção"+ ex);
            }
        }
    }
    public static void closeConnection(Connection con, PreparedStatement stmt) {
        
        closeConnection(con);
        
        try{
            if(stmt != null){
                stmt.close();
            }
        }catch(SQLException ex){
            System.out.println("Erro na closeConnection "+ ex);
        }
    }
    public static void closeConnection(Connection con, PreparedStatement stmt, ResultSet rs) {
        
        closeConnection(con, stmt);
        
        try{
            if(rs != null)
                rs.close();
        }catch(SQLException ex){
            System.out.println("Erro na closeConnection "+ ex);
        }
    }
}
