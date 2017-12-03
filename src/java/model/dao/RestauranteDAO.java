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
import model.bean.Restaurante;

/**
 *
 * @author Home
 */
public class RestauranteDAO {
    public void create(Restaurante restaurante) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO restaurante (id,"
                    + "email, "
                    + "senha,"
                    + "nomeEstabelecimento,"
                    + "nomeResponsavel,"
                    + "cnpj,"
                    + "endereco,"
                    + "telefone,"
                    + "tipoRestaurante,"
                    + "qtdMesa) VALUES(?,?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1, restaurante.getId());
            stmt.setString(2, restaurante.getEmail());
            stmt.setString(3, restaurante.getSenha());
            stmt.setString(4, restaurante.getNomeEstabelecimento());
            stmt.setString(5, restaurante.getNomeResponsavel());
            stmt.setInt(6, restaurante.getCnpj());
            stmt.setString(7, restaurante.getEndereco());
            stmt.setInt(8, restaurante.getTelefone());
            stmt.setString(9, restaurante.getTipoRestaurante());
            stmt.setInt(10, restaurante.getQtdMesa());
          

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "salvo com sucesso");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "erro ao salvar " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }

    public List<Restaurante> read() {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        ResultSet rs = null;

        List<Restaurante> restaurantes = new ArrayList();

        try {
            stmt = con.prepareStatement("SELECT * FROM restaurante");
            rs = stmt.executeQuery();

            while (rs.next()) {
                Restaurante restaurante = new Restaurante();

                restaurante.setId(rs.getInt("id"));
                restaurante.setEmail(rs.getString("email"));
                restaurante.setSenha(rs.getString("senha"));
                restaurante.setNomeEstabelecimento(rs.getString("nomeEstabelecimento"));
                restaurante.setNomeResponsavel(rs.getString("nomeResponsavel"));
                restaurante.setCnpj(rs.getInt("cnpj"));
                restaurante.setEndereco(rs.getString("endereco"));
                restaurante.setTelefone(rs.getInt("telefone"));
                restaurante.setTipoRestaurante(rs.getString("tipoRestaurante"));
                restaurante.setQtdMesa(rs.getInt("qtdMesa"));

                restaurantes.add(restaurante);
            }

        } catch (SQLException ex) {
            System.out.println("Erro read " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return restaurantes;
    }

    public void update(Restaurante restaurante) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {

            stmt = con.prepareStatement("Update restaurante SET id =?,"
                    + "email = ?, "
                    + "senha= ?,"
                    + "nomeEstabelecimento= ?,"
                    + "nomeResponsavel= ?,"
                    + "cnpj= ?,"
                    + "endereco= ?,"
                    + "telefone= ?,"
                    + "tipoRestaurante= ?,"
                    + "qtdMesa= ? WHERE id=?");
            stmt.setInt(1, restaurante.getId());
            stmt.setString(2, restaurante.getEmail());
            stmt.setString(3, restaurante.getSenha());
            stmt.setString(4, restaurante.getNomeEstabelecimento());
            stmt.setString(5, restaurante.getNomeResponsavel());
            stmt.setInt(6, restaurante.getCnpj());
            stmt.setString(7, restaurante.getEndereco());
            stmt.setInt(8, restaurante.getTelefone());
            stmt.setString(9, restaurante.getTipoRestaurante());
            stmt.setInt(10, restaurante.getQtdMesa());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "update successful");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "update error! " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }
    
    public void delete(Restaurante restaurante) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("DELETE FROM restaurante WHERE id = ?");

            stmt.setInt(1, restaurante.getId());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "delete successful");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "delete error! " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }
}
