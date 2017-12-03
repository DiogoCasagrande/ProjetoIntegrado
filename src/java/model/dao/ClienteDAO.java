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
import model.bean.Cliente;

/**
 *
 * @author Home
 */
public class ClienteDAO {

    public void create(Cliente cliente) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO cliente (id,"
                    + "email,"
                    + "senha,"
                    + "nome,"
                    + "sobrenome,"
                    + "nascimento,"
                    + "telefone,"
                    + "cpf,"
                    + "genero) VALUES(?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1, cliente.getId());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getSenha());
            stmt.setString(4, cliente.getNome());
            stmt.setString(5, cliente.getSobrenome());
            stmt.setDate(6, cliente.getNascimento());
            stmt.setInt(7, cliente.getTelefone());
            stmt.setInt(8, cliente.getCpf());
            stmt.setString(9, cliente.getGenero());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "salvo com sucesso");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "erro ao salvar " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }

    public List<Cliente> read() {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        ResultSet rs = null;

        List<Cliente> clientes = new ArrayList();

        try {
            stmt = con.prepareStatement("SELECT * FROM cliente");
            rs = stmt.executeQuery();

            while (rs.next()) {
                Cliente cliente = new Cliente();

                cliente.setId(rs.getInt("id"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
                cliente.setNome(rs.getString("nome"));
                cliente.setSobrenome(rs.getString("sobrenome"));
                cliente.setNascimento(rs.getDate("nascimento"));
                cliente.setTelefone(rs.getInt("telefone"));
                cliente.setCpf(rs.getInt("cpf"));
                cliente.setGenero(rs.getString("genero"));

                clientes.add(cliente);
            }

        } catch (SQLException ex) {
            System.out.println("Erro read " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return clientes;
    }

    public void update(Cliente cliente) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("Update cliente SET"
                    + "email = ?,"
                    + "senha = ?,"
                    + "nome = ?,"
                    + "sobrenome = ?,"
                    + "nascimento = ?,"
                    + "telefone = ?,"
                    + "cpf = ?,"
                    + "genero = ?,"
                    + "WHERE id = ?");

            stmt.setString(1, cliente.getEmail());
            stmt.setString(2, cliente.getSenha());
            stmt.setString(3, cliente.getNome());
            stmt.setString(4, cliente.getSobrenome());
            stmt.setDate(5, cliente.getNascimento());
            stmt.setInt(6, cliente.getTelefone());
            stmt.setInt(7, cliente.getCpf());
            stmt.setString(8, cliente.getGenero());
            stmt.setInt(9, cliente.getId());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "update successful");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "update error! " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }

    public void delete(Cliente cliente) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("DELETE FROM cliente WHERE id = ?");

            stmt.setInt(1, cliente.getId());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "delete successful");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "delete error! " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
    }
}
