package com.example.demo.repository;

import java.util.List;
import java.sql.ResultSet; // <-- ESTA IMPORTACIÓN CURA EL COLOR ROJO EN LOS rs.

import com.example.demo.DAO.EventoDAO;
import com.example.demo.model.Evento;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class EventoRepository implements EventoDAO {
    private final JdbcTemplate jdbcTemplate;

    public EventoRepository(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    public final RowMapper<Evento> EventoRowMapper = (rs, rowNum) -> {
        return new Evento(
                rs.getInt("id_evento"),
                rs.getInt("id_categoria"),
                rs.getString("id_evento"),
                rs.getString("titulo"),
                rs.getString("descripcion"),
                rs.getDate("fecha_evento"),
                rs.getTime("hora"),
                rs.getDouble("precio"),         // Corregido: "precio" (antes prcio)
                rs.getString("lugar"),
                rs.getInt("aforo_total"),
                rs.getInt("aforo_disponible"),     // Corregido: "aforo_disponible" (antes disponile)
                rs.getString("imagen_url"),         // Corregido: "imagen_url" (antes utl)
                rs.getInt("estado"),
                rs.getInt("tipo_entrada")
        );
    };

    @Override
    public List<Evento> ListarEventos(String idCategoria){
        // Corregido "enevnto" por "evento" y añadida la cláusula WHERE funcional
        String query = "SELECT * FROM evento WHERE id_categoria = ?";
        return jdbcTemplate.query(query, EventoRowMapper, idCategoria);
    }
}