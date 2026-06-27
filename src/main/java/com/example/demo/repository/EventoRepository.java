package com.example.demo.repository;

import java.util.List;
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
        return new Evento(
                rs.getInt("id_evento"),
                rs.getString("titulo"),
                rs.getString("descripcion"),
                rs.getDate("fecha_evento").toLocalDate(),
                rs.getDouble("precio"),
                rs.getString("lugar"),
                rs.getInt("aforo_total"),
                rs.getInt("aforo_disponible"),
                rs.getString("imagen_url"),
                rs.getBoolean("estado"),
                rs.getBoolean("destacado"),
                new Categoria(
                        rs.getInt("id_categoria"),
                        rs.getString("nombre"),
                        rs.getString("descripcion"),
                        rs.getBoolean("estado_c")
                )
        );

    };

    @Override
    public List<Evento> MostrarDestacados() {
        String query = "SELECT e.*," +
                "c.nombre AS nombre_c, " +
                "c.descripcion AS desc_c, " +
                "c.estado AS estado_c " +
                "FROM evento e " +
                "INNER JOIN categoria c ON e.id_categoria = c.id_categoria " +
                "WHERE e.destacado = 1 AND e.estado = 1";
        return jdbcTemplate.query(query, EventoRowMapper);
    }

    @Override
    public List<Evento> ListarEventosPorCategoria(int idCategoria) {
        String query;
        if (idCategoria == 0) {
            query = "SELECT e.*, c.nombre AS nombre_c, c.descripcion AS desc_c, c.estado AS estado_c " +
                    "FROM evento e " +
                    "INNER JOIN categoria c ON e.id_categoria = c.id_categoria " +
                    "WHERE e.estado = 1";
            return jdbcTemplate.query(query, EventoRowMapper);
        } else {
            query = "SELECT e.*, c.nombre AS nombre_c, c.descripcion AS desc_c, c.estado AS estado_c " +
                    "FROM evento e " +
                    "INNER JOIN categoria c ON e.id_categoria = c.id_categoria " +
                    "WHERE e.estado = 1 AND e.id_categoria = ?";
            return jdbcTemplate.query(query, EventoRowMapper, idCategoria);
        }
    }

    @Override
    public List<Evento> ListarTodosEventos() {
        String query = "SELECT e.*, " +
                "c.nombre AS nombre_c, " +
                "c.descripcion AS desc_c, " +
                "c.estado AS estado_c " +
                "FROM evento e " +
                "INNER JOIN categoria c ON e.id_categoria = c.id_categoria";

        return jdbcTemplate.query(query, EventoRowMapper);
    }

    @Override
    public Evento buscarPorId(int id) {
        String query = "SELECT e.*, c.nombre AS nombre_c, c.descripcion AS desc_c, c.estado AS estado_c " +
                "FROM evento e " +
                "INNER JOIN categoria c ON e.id_categoria = c.id_categoria " +
                "WHERE e.id_evento = ?";
        return jdbcTemplate.queryForObject(query, EventoRowMapper, id);
    }

    @Override
    public void crearEvento(Evento evento) {
        String query = "INSERT INTO evento (titulo, descripcion, fecha_evento, precio, lugar, aforo_total, aforo_disponible, imagen_url, estado, destacado, id_categoria) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(query, evento.getTitulo(), evento.getDescripcion(), evento.getFecha_evento(), evento.getPrecio(), evento.getLugar(), evento.getAforo_total(), evento.getAforo_total(), evento.getImagen_url(), evento.isEstado(), evento.getDestacado(), evento.getCategoria().getId_categoria());
    }

    @Override
    public void actualizarEvento(Evento evento) {
        String query = "UPDATE evento SET titulo = ?, descripcion = ?, fecha_evento = ?, precio = ?, lugar = ?, aforo_total = ?, aforo_disponible = ?, imagen_url = ?, estado = ?, destacado = ?, id_categoria = ? WHERE id_evento = ?";
        jdbcTemplate.update(query, evento.getTitulo(), evento.getDescripcion(), evento.getFecha_evento(), evento.getPrecio(), evento.getLugar(), evento.getAforo_total(), evento.getAforo_disponible(), evento.getImagen_url(), evento.isEstado(), evento.getDestacado(), evento.getCategoria().getId_categoria(), evento.getId_evento());
    }

    @Override
    public void eliminarEvento(int id) {
        String query = "DELETE FROM evento WHERE id_evento = ?";
        jdbcTemplate.update(query, id);
    }

}