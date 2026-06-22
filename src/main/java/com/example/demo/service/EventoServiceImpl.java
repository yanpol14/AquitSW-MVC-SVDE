package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Evento;
import com.example.demo.DAO.EventoDAO;
import org.springframework.stereotype.Service;

@Service
public class EventoServiceImpl implements EventoService {

    private final EventoDAO eventoDAO; // Te recomiendo usar minúscula inicial para la variable de instancia

    public EventoServiceImpl(EventoDAO eventoDAO) {
        this.eventoDAO = eventoDAO;
    }

    @Override
    public List<Evento> ListarEventos(String idCategoria) {
        return eventoDAO.ListarEventos(idCategoria);
    }
}