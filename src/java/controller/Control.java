/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import java.util.List;
import model.bean.Cadastro;
import model.bean.Cliente;
import model.bean.Mesa;
import model.bean.Prato;
import model.dao.ClienteDAO;
import model.dao.MesaDAO;
import model.dao.PratoDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Home
 */
@Controller
public class Control {

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/cadastrar_mesa")
    public String cadastrarMesa() {
        return "cadastrar_mesa";
    }

    @RequestMapping("/cadastro_cliente")
    public String cadastrarCliente() {
        return "cadastro_cliente";
    }

    @RequestMapping("/cadastro_estabelecimento")
    public String cadastrarEstabelecimento() {

        return "cadastro_estabelecimento";
    }

    @RequestMapping("/estabelecimentos")
    public String listarEstabelecimentos() {
        return "estabelecimentos";
    }

    @RequestMapping("/reservar")
    public String reservar() {
        return "reservar";
    }

    @RequestMapping("/reservar_mesa")
    public String reservarMesa(Mesa mesa) {
      
        MesaDAO dao = new MesaDAO();
        dao.create(mesa);
        return "/mesa_sucessful";
    }

    @RequestMapping("/reservar_prato")
    public ModelAndView reservarPrato(Prato prato) {
        ModelAndView model = new ModelAndView();
        PratoDAO dao = new PratoDAO();
        dao.create(prato);
        String resp = "/prato_sucessful";
        model.addObject(resp);
        return model;
    }

    @RequestMapping("/seja_nosso_parceiro")
    public String sejaNossoParceiro() {
        return "seja_nosso_parceiro";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/efetuar_login")
    public String efetuarLogin(Cadastro cadastro) {
        
        ClienteDAO dao = new ClienteDAO();
        List<Cliente> listaCliente = new ArrayList();
        listaCliente = dao.read();

        for (Cliente obj : listaCliente) {
            if (obj.getEmail() == cadastro.getEmail()) {
                if (obj.getSenha() == cadastro.getSenha()) {
                    String resp = "/prato_sucessful";
                    return resp;
                }
            }
        }
        String resp = "/login_error";
        return resp;
    }
}
