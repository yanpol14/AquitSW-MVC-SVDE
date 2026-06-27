package com.example.demo.repository;

import java.util.List;
import com.example.demo.DAO.TicketDAO;
import com.example.demo.model.Ticket;
import com.example.demo.model.Usuario;
import com.example.demo.model.Evento;
import com.example.demo.model.Categoria;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class TicketRepository implements TicketDAO {

    private final JdbcTemplate jdbcTemplate;

    public TicketRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Ticket> TicketRowMapper = (rs, rowNum) -> {
        return new Ticket(
                rs.getInt("id_ticket"),
                rs.getInt("cantidad"),
                rs.getDouble("subtotal"),
                rs.getDouble("total"),
                rs.getDate("fecha_compra").toLocalDate(),
                rs.getBoolean("estado_t"),
                rs.getString("tipo_pago"),
                rs.getString("detalle"),
                new Usuario(
                        rs.getInt("id_usuario"),
                        rs.getString("nom_usuario"),
                        rs.getString("ape_materno_u"),
                        rs.getString("ape_parnetno_u"), // Ajustar según tus columnas exactas de Usuario
                        rs.getString("email_usuario"),
                        rs.getString("pass_usuario"),
                        rs.getString("rol_usuario"),
                        rs.getBoolean("estado_u"),
                        rs.getString("f_creacion_u")
                ),
                new Evento(
                        rs.getInt("id_evento"),
                        rs.getString("tit_evento"),
                        rs.getString("desc_evento"),
                        rs.getDate("fecha_ev").toLocalDate(),
                        rs.getDouble("prec_evento"),
                        rs.getString("lugar_ev"),
                        rs.getInt("aforo_t_ev"),
                        rs.getInt("aforo_d_ev"),
                        rs.getString("img_ev"),
                        rs.getBoolean("estado_ev"),
                        rs.getBoolean("destacado_ev"),
                        new Categoria( // El evento SÍ sigue manteniendo su categoría
                                rs.getInt("id_categoria"),
                                rs.getString("nom_categoria"),
                                rs.getString("desc_categoria"),
                                rs.getBoolean("estado_c")
                        )
                ) // Constructor de Ticket cierra aquí (10 parámetros estrictos)
        );
    };

    @Override
    public List<Ticket> ListarTodosTickets() {
        String query = "SELECT t.*, t.estado AS estado_t, " +
                "u.nombre AS nom_usuario, u.apellido_paterno AS ape_parnetno_u, u.apellido_materno AS ape_materno_u, u.email AS email_usuario, u.contrasena AS pass_usuario, u.rol AS rol_usuario, u.estado AS estado_u, u.fecha_creacion AS f_creacion_u, " +
                "e.titulo AS tit_evento, e.descripcion AS desc_evento, e.fecha_evento AS fecha_ev, e.precio AS prec_evento, e.lugar AS lugar_ev, e.aforo_total AS aforo_t_ev, e.aforo_disponible AS aforo_d_ev, e.imagen_url AS img_ev, e.estado AS estado_ev, e.destacado AS destacado_ev, " +
                "c.id_categoria, c.nombre AS nom_categoria, c.descripcion AS desc_categoria, c.estado AS estado_c " +
                "FROM ticket t " +
                "INNER JOIN usuario u ON t.id_usuario = u.id_usuario " +
                "INNER JOIN evento e ON t.id_evento = e.id_evento " +
                "INNER JOIN categoria c ON e.id_categoria = c.id_categoria";
        return jdbcTemplate.query(query, TicketRowMapper);
    }

    @Override
    public Ticket buscarPorId(int id) {
        String query = "SELECT t.*, t.estado AS estado_t, " +
                "u.nombre AS nom_usuario, u.apellido_paterno AS ape_parnetno_u, u.apellido_materno AS ape_materno_u, u.email AS email_usuario, u.contrasena AS pass_usuario, u.rol AS rol_usuario, u.estado AS estado_u, u.fecha_creacion AS f_creacion_u, " +
                "e.titulo AS tit_evento, e.descripcion AS desc_evento, e.fecha_evento AS fecha_ev, e.precio AS prec_evento, e.lugar AS lugar_ev, e.aforo_total AS aforo_t_ev, e.aforo_disponible AS aforo_d_ev, e.imagen_url AS img_ev, e.estado AS estado_ev, e.destacado AS destacado_ev, " +
                "c.id_categoria, c.nombre AS nom_categoria, c.descripcion AS desc_categoria, c.estado AS estado_c " +
                "FROM ticket t " +
                "INNER JOIN usuario u ON t.id_usuario = u.id_usuario " +
                "INNER JOIN evento e ON t.id_evento = e.id_evento " +
                "INNER JOIN categoria c ON e.id_categoria = c.id_categoria " +
                "WHERE t.id_ticket = ?";
        return jdbcTemplate.queryForObject(query, TicketRowMapper, id);
    }

    @Override
    public void crearTicket(Ticket ticket) {
        String query = "INSERT INTO ticket (id_usuario, id_evento, id_categoria, cantidad, subtotal, total, fecha_compra, estado, tipo_pago, detalle) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(query,
                ticket.getUsuario().getId_usuario(),
                ticket.getEvento().getId_evento(),
                ticket.getEvento().getCategoria().getId_categoria(), // 🌟 Solucionado: Sacado desde el evento
                ticket.getCantidad(),
                ticket.getSubtotal(),
                ticket.getTotal(),
                ticket.getFecha_compra(),
                ticket.isEstado(),
                ticket.getTipo_pago(),
                ticket.getDetalle()
        );
    }

    @Override
    public void actualizarTicket(Ticket ticket) {
        String query = "UPDATE ticket SET id_usuario = ?, id_evento = ?, id_categoria = ?, cantidad = ?, subtotal = ?, total = ?, fecha_compra = ?, estado = ?, tipo_pago = ?, detalle = ? WHERE id_ticket = ?";
        jdbcTemplate.update(query,
                ticket.getUsuario().getId_usuario(),
                ticket.getEvento().getId_evento(),
                ticket.getEvento().getCategoria().getId_categoria(), // 🌟 Solucionado: Sacado desde el evento
                ticket.getCantidad(),
                ticket.getSubtotal(),
                ticket.getTotal(),
                ticket.getFecha_compra(),
                ticket.isEstado(),
                ticket.getTipo_pago(),
                ticket.getDetalle(),
                ticket.getId_ticket()
        );
    }

    @Override
    public void eliminarTicket(int id) {
        String query = "DELETE FROM ticket WHERE id_ticket = ?";
        jdbcTemplate.update(query, id);
    }
}