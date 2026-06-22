package com.example.demo.DAO;

import java.util.List;
import com.example.demo.model.Evento;

public interface EventoDAO {
    // CORREGIDO: Firma lista para recibir el id de filtro
    List<Evento> ListarEventos(int idCategoria);
}