package com.example.demo.service;

import com.example.demo.model.Ticket;

import java.util.List;

public interface TicketService {
    List<Ticket> ListarTodosTickets();

    Ticket buscarPorId(int id);

    void crearTicket(Ticket ticket);

    void actualizarTicket(Ticket ticket);

    void eliminarTicket(int id);
}
