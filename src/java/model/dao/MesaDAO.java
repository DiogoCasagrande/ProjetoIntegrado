/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.bean.Mesa;

/**
 *
 * @author Home
 */
public class MesaDAO {
    public void create(Mesa mesa) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO mesa (id,"
                    + "numero,"
                    + "qtdLugares,"

                    + "genero) VALUES(?,?,?)");
            stmt.setInt(1, mesa.getId());
            stmt.setInt(2, mesa.getNumero());
            stmt.setInt(3, mesa.getQtdLugares());


            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "salvo com sucesso");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "erro ao salvar " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }

    public List<Mesa> read() {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        ResultSet rs = null;

        List<Mesa> mesas = new ArrayList();

        try {
            stmt = con.prepareStatement("SELECT * FROM mesa");
            rs = stmt.executeQuery();

            while (rs.next()) {
                Mesa mesa = new Mesa();

                mesa.setId(rs.getInt("id"));
                mesa.setNumero(rs.getInt("numero"));
                mesa.setQtdLugares(rs.getInt("qtdLugares"));

                mesas.add(mesa);
            }

        } catch (SQLException ex) {
            System.out.println("Erro read " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return mesas;
    }

    public void update(Mesa mesa) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("Update mesa SET"
                    + "id = ?,"
                    + "numero = ?,"
                    + "qtdLugares = ?");

            stmt.setInt(1, mesa.getId());
            stmt.setInt(2, mesa.getNumero());
            stmt.setInt(3, mesa.getQtdLugares());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "update successful");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "update error! " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }

    public void delete(Mesa mesa) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("DELETE FROM mesa WHERE id = ?");

            stmt.setInt(1, mesa.getId());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "delete successful");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "delete error! " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }
}
