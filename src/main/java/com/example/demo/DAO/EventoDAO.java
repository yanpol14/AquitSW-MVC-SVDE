package com.example.demo.DAO;

import java.util.List;
import com.example.demo.model.Evento;

public interface EventoDAO {

    List<Evento> MostrarDestacados();

    List<Evento> ListarEventosPorCategoria(int idCategoria);

    List<Evento> ListarTodosEventos();

    Evento buscarPorId(int id);

    void crearEvento(Evento evento);

    void actualizarEvento(Evento evento);

    void eliminarEvento(int id);
}