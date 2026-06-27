package com.example.demo.DAO;

import java.util.List;
import com.example.demo.model.Ticket;

public interface TicketDAO {
    List<Ticket> ListarTodosTickets();

    Ticket buscarPorId(int id);

    void crearTicket(Ticket ticket);

    void actualizarTicket(Ticket ticket);

    void eliminarTicket(int id);
}