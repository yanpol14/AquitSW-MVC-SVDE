package com.example.demo.controller;

import com.example.demo.model.Ticket;
import com.example.demo.service.EventoService;
import com.example.demo.service.TicketService;
import com.example.demo.service.UsuarioService;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;

@Controller
@RequestMapping("/ticket")
public class TicketController {

    private final TicketService ticketService;
    private final EventoService eventoService;
    private final UsuarioService usuarioService;

    public TicketController(TicketService ticketService, EventoService eventoService, UsuarioService usuarioService) {
        this.ticketService = ticketService;
        this.eventoService = eventoService;
        this.usuarioService = usuarioService;
    }

    @ModelAttribute
    public void agregarAtributosGlobales(Model model) {
        model.addAttribute("pestana", "tickets");
    }

    @GetMapping("/list")
    public String ListarTickets(Model model) {
        // "Tickets" con mayúscula para mantener consistencia con Eventos y Usuarios
        model.addAttribute("Tickets", ticketService.ListarTodosTickets());
        return "Dashboard/ticket/lista";
    }

    @GetMapping("/crear")
    public String mostrarFormularioCrear(Model model) {
        Ticket ticket = new Ticket();
        ticket.setFecha_compra(LocalDate.now());

        model.addAttribute("ticket", ticket);
        model.addAttribute("eventos", eventoService.ListarTodosEventos());
        model.addAttribute("usuarios", usuarioService.ListarTodosUsuarios());
        return "Dashboard/ticket/form";
    }

    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable("id") int id, Model model) {
        model.addAttribute("ticket", ticketService.buscarPorId(id));
        model.addAttribute("eventos", eventoService.ListarTodosEventos());
        model.addAttribute("usuarios", usuarioService.ListarTodosUsuarios());
        return "Dashboard/ticket/form";
    }

    @PostMapping("/guardar")
    public String guardarOActualizarTicket(@ModelAttribute("ticket") Ticket ticket) {
        if (ticket.getId_ticket() > 0) {
            ticketService.actualizarTicket(ticket);
        } else {
            ticketService.crearTicket(ticket);
        }
        return "redirect:/ticket/list";
    }

    @GetMapping("/eliminar/{id}")
    public String eliminarTicket(@PathVariable("id") int id) {
        ticketService.eliminarTicket(id);
        return "redirect:/ticket/list";
    }
}