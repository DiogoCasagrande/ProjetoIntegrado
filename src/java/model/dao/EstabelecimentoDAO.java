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
import model.bean.Estabelecimento;

/**
 *
 * @author Home
 */
public class EstabelecimentoDAO {
    public void create(Estabelecimento estabelecimento) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO estabelecimento (id,"
                    + "email, "
                    + "senha,"
                    + "nomeEstabelecimento,"
                    + "nomeResponsavel,"
                    + "cnpj,"
                    + "endereco,"
                    + "telefone,"
                    + "tipoRestaurante,"
                    + "mesas) VALUES(?,?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1, estabelecimento.getId());
            stmt.setString(2, estabelecimento.getEmail());
            stmt.setString(3, estabelecimento.getSenha());
            stmt.setString(4, estabelecimento.getNomeEstabelecimento());
            stmt.setString(5, estabelecimento.getNomeResponsavel());
            stmt.setInt(6, estabelecimento.getCnpj());
            stmt.setString(7, estabelecimento.getEndereco());
            stmt.setInt(8, estabelecimento.getTelefone());
            stmt.setString(9, estabelecimento.getTipoRestaurante());
            stmt.setInt(10, estabelecimento.getMesa());
          
            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "salvo com sucesso");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "erro ao salvar " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }

    public List<Estabelecimento> read() {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        ResultSet rs = null;

        List<Estabelecimento> estabelecimentos = new ArrayList();

        try {
            stmt = con.prepareStatement("SELECT * FROM estabelecimento");
            rs = stmt.executeQuery();

            while (rs.next()) {
                Estabelecimento estabelecimento = new Estabelecimento();

                estabelecimento.setId(rs.getInt("id"));
                estabelecimento.setEmail(rs.getString("email"));
                estabelecimento.setSenha(rs.getString("senha"));
                estabelecimento.setNomeEstabelecimento(rs.getString("nomeEstabelecimento"));
                estabelecimento.setNomeResponsavel(rs.getString("nomeResponsavel"));
                estabelecimento.setCnpj(rs.getInt("cnpj"));
                estabelecimento.setEndereco(rs.getString("endereco"));
                estabelecimento.setTelefone(rs.getInt("telefone"));
                estabelecimento.setTipoRestaurante(rs.getString("tipoRestaurante"));
                estabelecimento.setMesa(rs.getInt("mesa"));

                estabelecimentos.add(estabelecimento);
            }

        } catch (SQLException ex) {
            System.out.println("Erro read " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return estabelecimentos;
    }

    public void update(Estabelecimento estabelecimento) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {

            stmt = con.prepareStatement("Update estabelecimento SET id =?,"
                    + "email = ?, "
                    + "senha= ?,"
                    + "nomeEstabelecimento= ?,"
                    + "nomeResponsavel= ?,"
                    + "cnpj= ?,"
                    + "endereco= ?,"
                    + "telefone= ?,"
                    + "tipoRestaurante= ?,"
                    + "qtdMesa= ? WHERE id=?");
            stmt.setInt(1, estabelecimento.getId());
            stmt.setString(2, estabelecimento.getEmail());
            stmt.setString(3, estabelecimento.getSenha());
            stmt.setString(4, estabelecimento.getNomeEstabelecimento());
            stmt.setString(5, estabelecimento.getNomeResponsavel());
            stmt.setInt(6, estabelecimento.getCnpj());
            stmt.setString(7, estabelecimento.getEndereco());
            stmt.setInt(8, estabelecimento.getTelefone());
            stmt.setString(9, estabelecimento.getTipoRestaurante());
            stmt.setInt(10, estabelecimento.getMesa());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "update successful");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "update error! " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }
    
    public void delete(Estabelecimento estabelecimento) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("DELETE FROM estabelecimento WHERE id = ?");

            stmt.setInt(1, estabelecimento.getId());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "delete successful");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "delete error! " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }
}
