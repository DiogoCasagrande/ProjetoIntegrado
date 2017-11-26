/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DAO;

import Connection.Connector;
import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.DataSource;

/*
* Caian Rais - 20733152
* Diogo Casagrande - 20718678
* Julia Gil - 20511823
* Leticia Serpa - 20678178
*/

/**
 *CRUD
 */
public class CategoriaDAO {
    private Connection con = null;
    
    public CategoriaDAO(){
        con = Connector.getConnection();
    }
    
    public boolean save(DataSource categoria){
        
        String sql = "INSERT INTO categoria (descricao) VALUES (?)";
        
        PreparedStatement stmt = null;
        
        try {
            stmt = (PreparedStatement) con.prepareStatement(sql);
            stmt.setString(1, categoria.getDescricao());
            stmt.executeUpdate();
            return true;
        } catch (SQLException ex) {
            System.out.println("Erro: "+ex);
            return false;
        }finally{
            Connector.closeConnection(con, stmt);
        }
    }
    
    public List<DataSource> findAll(){
        
        
        String sql = "SELECT * FROM categoria";
        
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        List<DataSource> categorias = new ArrayList<>();
        
        try{
            stmt = (PreparedStatement) con.prepareStatement(sql);
            rs = stmt.executeQuery();
            
            while(rs.next()){
                DataSource categoria = new DataSource();
                categoria.setDescricao(rs.getString("descricao"));
                categorias.add(categoria);
            }
            
        }catch(SQLException e){
            System.out.println("erro findall");
        }finally{
            Connector.closeConnection(con,stmt);
        }
        return categorias;
    }
    
    public boolean update(DataSource categoria){
        
        String sql = "UPDATE categoria SET descricao = ? WHERE id = ?";
        
        PreparedStatement stmt = null;
        
        try {
            stmt = (PreparedStatement) con.prepareStatement(sql);
            stmt.setString(1, categoria.getDescricao());
            stmt.setInt(2, categoria.getId());
            stmt.executeUpdate();
            return true;
        } catch (SQLException ex) {
            System.out.println("Erro: "+ex);
            return false;
        }finally{
            Connector.closeConnection(con, stmt);
        }
    }
    public boolean delete(DataSource categoria){
        
        String sql = "DELETE FROM categoria WHERE id = ?";
        
        PreparedStatement stmt = null;
        
        try {
            stmt = (PreparedStatement) con.prepareStatement(sql);
            stmt.setInt(1, categoria.getId());
            stmt.executeUpdate();
            return true;
        } catch (SQLException ex) {
            System.out.println("Erro: "+ex);
            return false;
        }finally{
            Connector.closeConnection(con, stmt);
        }
    }
}
