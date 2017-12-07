/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

import java.awt.Image;
import java.util.List;

/**
 *
 * @author Home
 */
public class Estabelecimento {

    private int id;
    private String email;
    private String senha;
    private String nomeEstabelecimento;
    private String nomeResponsavel;
    private int cnpj;
    private String endereco;
    private int telefone;
    private String tipoRestaurante;
    private Image cardapio;
    private Image logo;
    private int mesa;

    public Estabelecimento() {
    }

    public Estabelecimento(String email,
            
            String senha,
            String nomeEstabelecimento,
            String nomeResponsavel,
            int cnpj,
            String endereco,
            int telefone,
            String tipoRestaurante,
            Image cardapio,
            Image logo,
            int mesa) {

        this.email = email;
        this.senha = senha;
        this.nomeEstabelecimento = nomeEstabelecimento;
        this.nomeResponsavel = nomeResponsavel;
        this.cnpj = cnpj;
        this.endereco = endereco;
        this.telefone = telefone;
        this.tipoRestaurante = tipoRestaurante;
        this.cardapio = cardapio;
        this.logo = logo;
        this.mesa = mesa;

    }

    public Estabelecimento(String email,
            String senha,
            String nomeEstabelecimento,
            String nomeResponsavel,
            int cnpj,
            String endereco,
            int telefone,
            String tipoRestaurante,
            int mesa) {

        this.email = email;
        this.senha = senha;
        this.nomeEstabelecimento = nomeEstabelecimento;
        this.nomeResponsavel = nomeResponsavel;
        this.cnpj = cnpj;
        this.endereco = endereco;
        this.telefone = telefone;
        this.tipoRestaurante = tipoRestaurante;
        this.mesa = mesa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getNomeEstabelecimento() {
        return nomeEstabelecimento;
    }

    public void setNomeEstabelecimento(String nomeEstabelecimento) {
        this.nomeEstabelecimento = nomeEstabelecimento;
    }

    public String getNomeResponsavel() {
        return nomeResponsavel;
    }

    public void setNomeResponsavel(String nomeResponsavel) {
        this.nomeResponsavel = nomeResponsavel;
    }

    public int getCnpj() {
        return cnpj;
    }

    public void setCnpj(int cnpj) {
        this.cnpj = cnpj;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public String getTipoRestaurante() {
        return tipoRestaurante;
    }

    public void setTipoRestaurante(String tipoRestaurante) {
        this.tipoRestaurante = tipoRestaurante;
    }

    public Image getCardapio() {
        return cardapio;
    }

    public void setCardapio(Image cardapio) {
        this.cardapio = cardapio;
    }

    public Image getLogo() {
        return logo;
    }

    public void setLogo(Image logo) {
        this.logo = logo;
    }

    public int getMesa() {
        return mesa;
    }

    public void setMesa(int mesa) {
        this.mesa = mesa;
    }
}
