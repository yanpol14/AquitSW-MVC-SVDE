package com.example.demo.controller;

import com.example.demo.service.EventoService;
import com.example.demo.service.CategoriaService;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class indexController {

    private final EventoService eventoService;
    private final CategoriaService categoriaService;

    public indexController(EventoService eventoService, CategoriaService categoriaService){
        this.eventoService = eventoService;
        this.categoriaService = categoriaService;
    }

    @GetMapping({"/", "/index"})
    public String inicio(Model model) {
        model.addAttribute("listDestacados", eventoService.MostrarDestacados());
        return "index";
    }

    @GetMapping("/catalogo")
    public String catalogo(@RequestParam(value = "id", defaultValue = "0") int id, Model model) {
        model.addAttribute("listPorCategoria", eventoService.ListarEventosPorCategoria(id));
        model.addAttribute("listCategorias", categoriaService.ListarCategoriasActivas());
        return "catalogo";
    }

    @GetMapping("/publicidad")
    public String publicidad(){
        return "publicidad";
    }

    @GetMapping("/contactanos")
    public String contactanos(){
        return "contactanos";
    }

    @GetMapping("/login")
    public String login(){
        return "login";
    }
}