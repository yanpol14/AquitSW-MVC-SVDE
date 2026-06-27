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
    public List<Evento> MostrarDestacados(){
        return  eventoDAO.MostrarDestacados();
    }

    @Override
    public List<Evento> ListarEventosPorCategoria(int idCategoria) {
        return eventoDAO.ListarEventosPorCategoria(idCategoria);
    }

    @Override
    public List<Evento> ListarTodosEventos(){
        return eventoDAO.ListarTodosEventos();
    }

    @Override
    public Evento buscarPorId(int id) {
        return eventoDAO.buscarPorId(id);
    }

    @Override
    public void crearEvento(Evento evento) {
        eventoDAO.crearEvento(evento);
    }

    @Override
    public void actualizarEvento(Evento evento) {
        eventoDAO.actualizarEvento(evento);
    }

    @Override
    public void eliminarEvento(int id) {
        eventoDAO.eliminarEvento(id);
    }
}