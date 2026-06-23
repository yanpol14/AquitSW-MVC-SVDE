package com.example.demo.controller;

import com.example.demo.service.EventoService;
import com.example.demo.service.CategoriaService;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
        // Trae exclusivamente los eventos con destacado = 1
        model.addAttribute("listDestacados", eventoService.MostrarDestacados());
        return "index";
    }
}