/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Home
 */
@Controller
public class Control {

    @RequestMapping("/")
    public String index(){
        return "index";
    }
    @RequestMapping("/cadastrar_mesa")
    public String cadastrarMesa(){
        return "cadastrar_mesa";
    }
    
    @RequestMapping("/cadastrar_cliente")
    public String cadastrarCliente(){
        return "cadastrar_cliente";
    }
    
    @RequestMapping("/cadastrar_estabelecimento")
    public String cadastrarEstabelecimento(){
        return "cadastrar_estabelecimento";
    }
    
    @RequestMapping(value="/estabelecimentos", method=RequestMethod.GET)
    public String listarEstabelecimentos(){
        return "estabelecimentos";
    }
    
    @RequestMapping("/reservar")
    public String reservar(){
        return "reservar";
    }
    
    @RequestMapping("/reservar_mesa")
    public String reservarMesa(){
        return "reservar_mesa";
    }
    
    @RequestMapping("/reservar_prato")
    public String reservarPrato(){
        return "reservar_prato";
    }
    
    @RequestMapping("/seja_nosso_parceiro")
    public String sejaNossoParceiro(){
        return "seja_nosso_parceiro";
    }
}
