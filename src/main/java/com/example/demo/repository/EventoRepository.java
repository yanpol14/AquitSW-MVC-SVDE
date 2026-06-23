package com.example.demo.repository;

import java.util.List;
import java.time.LocalDate;

import com.example.demo.DAO.EventoDAO;
import com.example.demo.model.Categoria;
import com.example.demo.model.Evento;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class EventoRepository implements EventoDAO {
    private final JdbcTemplate jdbcTemplate;

    public EventoRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public final RowMapper<Evento> EventoRowMapper = (rs, rowNum) -> {
        Evento evento = new Evento(
                rs.getInt("id_evento"),
                rs.getInt("id_categoria"),
                rs.getString("titulo"),
                rs.getString("descripcion"),
                rs.getObject("fecha_evento", LocalDate.class),
                rs.getDouble("precio"),
                rs.getString("lugar"),
                rs.getInt("aforo_total"),
                rs.getInt("aforo_disponible"),
                rs.getString("imagen_url"),
                rs.getInt("estado") == 1
        );
        Categoria categoria = new Categoria(
                rs.getInt("id_categoria"),
                rs.getString("nombre_c"),
                rs.getString("desc_c"),
                rs.getInt("estado_c") == 1
        );

        evento.setCategoria(categoria);
        return evento;
    };

    @Override
    // CORREGIDO: Añadida la lógica de filtrado dinámico
    public List<Evento> ListarEventos(int idCategoria) {
        if (idCategoria <= 0) {
            String query = "SELECT e.*, " +
                    "c.nombre AS nombre_categoria, " +
                    "c.descripcion AS desc_categoria, " +
                    "c.estado AS estado_categoria " +
                    "FROM evento e " +
                    "INNER JOIN categoria c ON e.id_categoria = c.id_categoria " +
                    "WHERE e.estado = 1";
            return jdbcTemplate.query(query, EventoRowMapper);
        } else {
            String query = "SELECT e.*, " +
                    "c.nombre AS nombre_categoria, " +
                    "c.descripcion AS desc_categoria, " +
                    "c.estado AS estado_categoria " +
                    "FROM evento e " +
                    "INNER JOIN categoria c ON e.id_categoria = c.id_categoria " +
                    "WHERE e.id_categoria = ? AND e.estado = 1";
            return jdbcTemplate.query(query, EventoRowMapper, idCategoria);
        }
    }

    @Override
    public List<Evento> MostrarDestacados() {
        String query = "SELECT e.*, " +
                "c.nombre AS nombre_c, " +
                "c.descripcion AS desc_c, " +
                "c.estado AS estado_c " +
                "FROM evento e " +
                "INNER JOIN categoria c ON e.id_categoria = c.id_categoria " +
                "WHERE e.destacado = 1 AND e.estado = 1";
        return jdbcTemplate.query(query, EventoRowMapper);
    }
}