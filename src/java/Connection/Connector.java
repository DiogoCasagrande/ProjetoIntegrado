package Connection;

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
* Caian Rais - 20733152
* Diogo Casagrande - 20718678
* Julia Gil - 20511823
* Leticia Serpa - 20678178
*/

public class Connector {
    private static final String DRIVER ="com.mysql.jdbc.Driver";
    private static final String URL ="jdbc:mysql://localhost:3306/dbade";
    private static final String USER ="root";
    private static final String PASS ="";
    
    public static Connection getConnection(){
    
        try {
            
            Class.forName(DRIVER);
            return DriverManager.getConnection(URL, USER, PASS);
            
        } catch (ClassNotFoundException | SQLException ex) {
            throw new RuntimeException("erro na conecção",ex);
        }
    }
    
    public static void closeConnection(Connection con){
    
        if(con != null){
            try{
                con.close();
            }catch(SQLException ex){
                System.out.println("Erro ao fechar");
            }
        }
    }
    public static void closeConnection(Connection con, PreparedStatement stmt){
    
        if(stmt != null){
            try{
                stmt.close();
            }catch(SQLException ex){
                System.out.println("Erro ao fechar");
            }
        }
        
        closeConnection(con);
    }
    public static void closeConnection(Connection con, PreparedStatement stmt, ResultSet rs){
    
        if(rs != null){
            try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(Connector.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        closeConnection(con, stmt);
    }
}
