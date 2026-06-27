package com.example.demo.controller;

import com.example.demo.model.Usuario;
import com.example.demo.service.UsuarioService;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

    private final UsuarioService usuarioService;

    public UsuarioController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    @ModelAttribute
    public void agregarAtributosGlobales(Model model) {
        // Marcamos la pestaña como "usuarios" para iluminar el menú lateral
        model.addAttribute("pestana", "usuarios");
    }

    @GetMapping("/list")
    public String ListarUsuarios(Model model) {
        model.addAttribute("Usuarios", usuarioService.ListarTodosUsuarios());
        return "Dashboard/usuario/lista"; // 🌟 Ruta exacta según tu captura
    }

    @GetMapping("/crear")
    public String mostrarFormularioCrear(Model model) {
        Usuario usuario = new Usuario();
        usuario.setEstado(true);
        usuario.setFecha_creacion(LocalDate.now().toString());

        model.addAttribute("usuario", usuario);
        return "Dashboard/usuario/form"; // 🌟 Ruta exacta según tu captura
    }

    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable("id") int id, Model model) {
        model.addAttribute("usuario", usuarioService.buscarPorid(id));
        return "Dashboard/usuario/form";
    }

    @PostMapping("/guardar")
    public String guardarOActualizarUsuario(@ModelAttribute("usuario") Usuario usuario) {
        if (usuario.getId_usuario() > 0) {
            usuarioService.actualizarUsuario(usuario);
        } else {
            if (usuario.getFecha_creacion() == null || usuario.getFecha_creacion().isEmpty()) {
                usuario.setFecha_creacion(LocalDate.now().toString());
            }
            usuarioService.crearUsuario(usuario);
        }
        return "redirect:/usuario/list";
    }

    @GetMapping("/eliminar/{id}")
    public String eliminarUsuario(@PathVariable("id") int id) {
        usuarioService.eliminarUsuario(id);
        return "redirect:/usuario/list";
    }
}