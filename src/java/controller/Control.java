/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Home
 */
@Controller
public class Control {

    @RequestMapping("/index")
    public String iniciando(){
        return "index";
    }
    
    /*
    @RequestMapping("/login")
    public String entrar(){
    
        
    }*/
    @RequestMapping("/cadastro-estabelecimento")
    public String cadastro(){
    
        return "cadastro-estabelecimento";
    }
}
