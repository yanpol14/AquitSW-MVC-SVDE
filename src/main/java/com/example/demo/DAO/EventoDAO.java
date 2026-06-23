package com.example.demo.DAO;

import java.util.List;
import com.example.demo.model.Evento;

public interface EventoDAO {

    List<Evento> MostrarDestacados();

    List<Evento> ListarEventos(int idCategoria);
}