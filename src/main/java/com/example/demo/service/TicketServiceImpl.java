package com.example.demo.service;

import com.example.demo.DAO.TicketDAO;
import com.example.demo.model.Ticket;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TicketServiceImpl implements TicketService{

    private final TicketDAO ticketDAO;

    public TicketServiceImpl(TicketDAO ticketDAO){
        this.ticketDAO = ticketDAO;
    }

    @Override
    public List<Ticket> ListarTodosTickets(){
        return ticketDAO.ListarTodosTickets();
    }

    @Override
    public Ticket buscarPorId(int id){
        return ticketDAO.buscarPorId(id);
    }

    @Override
    public void crearTicket(Ticket ticket){
        ticketDAO.crearTicket(ticket);
    }

    @Override
    public void actualizarTicket(Ticket ticket){
        ticketDAO.actualizarTicket(ticket);
    }

    @Override
    public void eliminarTicket(int id){
        ticketDAO.eliminarTicket(id);
    }
}
