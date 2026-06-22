package com.example.demo.service;

import java.util.List;
import com.example.demo.model.Evento;
import com.example.demo.DAO.EventoDAO;
import org.springframework.stereotype.Service;

@Service
public class EventoServiceImpl implements EventoService {

    private final EventoDAO eventoDAO;

    public EventoServiceImpl(EventoDAO eventoDAO) {
        this.eventoDAO = eventoDAO;
    }

    @Override
    // CORREGIDO: Pasa el idCategoria hacia el DAO/Repository
    public List<Evento> ListarEventos(int idCategoria) {
        return eventoDAO.ListarEventos(idCategoria);
    }
}