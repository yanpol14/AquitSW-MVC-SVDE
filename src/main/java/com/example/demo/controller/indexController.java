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
    public String inicio(@RequestParam(name = "idCategoria", defaultValue = "0") int idCategoria, Model model) {

        model.addAttribute("listEvento", eventoService.ListarEventos(idCategoria));
        model.addAttribute("listCategorias", categoriaService.ListarCategoriasActivas());

        return "index";
    }
}