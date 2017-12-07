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
import model.bean.Prato;

/**
 *
 * @author Home
 */
public class PratoDAO {
    public void create(Prato prato) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO prato (id,"
                    + "codigo,"
                    + "prato) VALUES(?,?,?)");
            stmt.setInt(1, prato.getId());
            stmt.setInt(2, prato.getCodigo());
            stmt.setString(3, prato.getPrato());


            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "salvo com sucesso");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "erro ao salvar " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }

    public List<Prato> read() {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        ResultSet rs = null;

        List<Prato> pratos = new ArrayList();

        try {
            stmt = con.prepareStatement("SELECT * FROM prato");
            rs = stmt.executeQuery();

            while (rs.next()) {
                Prato prato = new Prato();

                prato.setId(rs.getInt("id"));
                prato.setCodigo(rs.getInt("codigo"));
                prato.setPrato(rs.getString("prato"));

                pratos.add(prato);
            }

        } catch (SQLException ex) {
            System.out.println("Erro read " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return pratos;
    }

    public void update(Prato prato) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("Update prato SET"
                    + "id = ?,"
                    + "numero = ?,"
                    + "prato = ?");

            stmt.setInt(1, prato.getId());
            stmt.setInt(2, prato.getCodigo());
            stmt.setString(3, prato.getPrato());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "update successful");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "update error! " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }

    public void delete(Prato prato) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("DELETE FROM prato WHERE id = ?");

            stmt.setInt(1, prato.getId());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "delete successful");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "delete error! " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }
}
