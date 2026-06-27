package com.example.demo.controller;

import com.example.demo.service.EventoService;
import com.example.demo.service.CategoriaService;
import com.example.demo.model.Usuario;
import com.example.demo.service.UsuarioService;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import jakarta.servlet.http.HttpSession;

@Controller
public class indexController {

    private final EventoService eventoService;
    private final CategoriaService categoriaService;
    private final UsuarioService usuarioService;

    public indexController(EventoService eventoService, CategoriaService categoriaService, UsuarioService usuarioService){
        this.eventoService = eventoService;
        this.categoriaService = categoriaService;
        this.usuarioService = usuarioService;
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

    @PostMapping("/login/acceder")
    public String procesarAcceso(
            @RequestParam("correo") String correo,
            @RequestParam("password") String password,
            HttpSession session,
            Model model) {

        Usuario usuario = usuarioService.bucarPorEmail(correo.trim());

        if (usuario != null && usuario.getContrasena().equals(password)) {

            session.setAttribute("usuarioLogueadoRol", usuario.getRol());
            session.setAttribute("usuarioNombre", usuario.getNombre());

            if ("ADMIN".equals(usuario.getRol())) {
                return "redirect:/dashboard/metricas";
            } else {
                return "redirect:/index";
            }

        } else {
            model.addAttribute("errorLogin", "El correo electrónico o la contraseña son incorrectos.");
            return "login";
        }
    }
}