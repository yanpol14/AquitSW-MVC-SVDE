package com.example.demo.controller;

import com.example.demo.service.CategoriaService;
import com.example.demo.model.Categoria;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/categoria")
public class CategoriaController {

    private final CategoriaService categoriaService;

    public CategoriaController(CategoriaService categoriaService){
        this.categoriaService = categoriaService;
    }

    @ModelAttribute
    public void agregarAtributosGlobales(Model model) {
        model.addAttribute("pestana", "categorias");
    }

    @GetMapping("/list")
    public String ListarCategorias(Model model){
        model.addAttribute("categorias", categoriaService.ListarTodasLasCategorias());
        return "Dashboard/categoria/lista";
    }

    @GetMapping("/crear")
    public String mostrarFormularioCrear(Model model){
        model.addAttribute("categoria", new Categoria());
        return "Dashboard/categoria/form";
    }

    @PostMapping("/crear")
    public String guardarOActualizarCategoria(@ModelAttribute("categoria") Categoria categoria) {
        if (categoria.getId_categoria() > 0) {
            // Si ya tiene un ID asignado en la BD, se actualiza
            categoriaService.actualizarCategoria(categoria);
        } else {
            // Si el ID es 0, es una nueva inserción
            categoriaService.crearCategoria(categoria);
        }
        return "redirect:/categoria/list";
    }

    @GetMapping("/eliminar/{id}")
    public String eliminarCategoria(@PathVariable("id") int id) {
        categoriaService.eliminarCategoria(id);
        return "redirect:/categoria/list";
    }

    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable("id") int id, Model model) {
        Categoria categoriaExistente = categoriaService.buscarPorId(id);
        model.addAttribute("categoria", categoriaExistente);
        return "Dashboard/categoria/form";
    }

}
