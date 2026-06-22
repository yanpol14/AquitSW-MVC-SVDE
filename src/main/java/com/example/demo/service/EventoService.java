package com.example.demo.service;

import java.util.List;
import com.example.demo.model.Evento;

public interface EventoService {
    List<Evento> ListarEventos(int idCategoria);
}