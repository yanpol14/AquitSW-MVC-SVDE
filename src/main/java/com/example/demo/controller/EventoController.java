package com.example.demo.controller;

import com.example.demo.service.EventoService;
import com.example.demo.service.CategoriaService;
import com.example.demo.model.Evento;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/evento")
public class EventoController {

    private final EventoService eventoService;
    private final CategoriaService categoriaService;

    public EventoController(EventoService eventoService, CategoriaService categoriaService){
        this.eventoService = eventoService;
        this.categoriaService = categoriaService;
    }

    @ModelAttribute
    public void agregarAtributosGlobales(Model model) {
        model.addAttribute("pestana", "eventos");
    }

    @GetMapping("/list")
    public String ListarEventos(Model model){
        model.addAttribute("Eventos", eventoService.ListarTodosEventos());
        return "Dashboard/evento/lista";
    }

    @GetMapping("/crear")
    public String mostrarFormularioCrear(Model model) {
        model.addAttribute("evento", new Evento());
        model.addAttribute("categorias", categoriaService.ListarCategoriasActivas()); // Para llenar el select de categorías
        return "Dashboard/evento/form";
    }

    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable("id") int id, Model model) {
        model.addAttribute("evento", eventoService.buscarPorId(id));
        model.addAttribute("categorias", categoriaService.ListarCategoriasActivas());
        return "Dashboard/evento/form";
    }

    @PostMapping("/guardar")
    public String guardarOActualizarEvento(@ModelAttribute("evento") Evento evento) {
        if (evento.getId_evento() > 0) {
            eventoService.actualizarEvento(evento);
        } else {
            eventoService.crearEvento(evento);
        }
        return "redirect:/evento/list";
    }

    @GetMapping("/eliminar/{id}")
    public String eliminarEvento(@PathVariable("id") int id) {
        eventoService.eliminarEvento(id);
        return "redirect:/evento/list";
    }
}