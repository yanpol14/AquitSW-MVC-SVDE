package com.example.demo.repository;

import java.util.List;
import com.example.demo.model.Usuario;
import com.example.demo.DAO.UsuarioDAO;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class UsuarioRepository implements UsuarioDAO {
    private final JdbcTemplate jdbcTemplate;

    public UsuarioRepository(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Usuario> usuarioRowMapper = (rs, rowNum) -> {
        return new Usuario(
                rs.getInt("id_usuario"),
                rs.getString("nombre"),
                rs.getString("apellido_materno"),
                rs.getString("apellido_paterno"),
                rs.getString("email"),
                rs.getString("contrasena"),
                rs.getString("rol"),
                rs.getBoolean("estado"),
                rs.getString("fecha_creacion")
        );
    };

    @Override
    public Usuario bucarPorEmail(String email){
        String query = "SELECT * FROM usuario WHERE email = ? AND estado = 1";
        try {
            return jdbcTemplate.queryForObject(query, usuarioRowMapper, email);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    @Override
    public List<Usuario> ListarTodosUsuarios() {
        String query = "SELECT * FROM usuario";
        return jdbcTemplate.query(query, usuarioRowMapper);
    }

    @Override
    public Usuario buscarPorid(int id) { // 🌟 ¡Punto y coma corregido!
        String query = "SELECT * FROM usuario WHERE id_usuario = ?";
        try {
            // Usamos queryForObject porque buscamos un único usuario
            return jdbcTemplate.queryForObject(query, usuarioRowMapper, id);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    @Override
    public void crearUsuario(Usuario usuario) {
        String query = "INSERT INTO usuario (nombre, apellido_materno, apellido_paterno, email, contrasena, rol, estado, fecha_creacion) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(query,
                usuario.getNombre(),
                usuario.getApellido_materno(),
                usuario.getApellido_paterno(),
                usuario.getEmail(),
                usuario.getContrasena(), // Tu getter mapea a la variable contraseña
                usuario.getRol(),
                usuario.getEstado(),
                usuario.getFecha_creacion()
        );
    }

    @Override
    public void actualizarUsuario(Usuario usuario) {
        String query = "UPDATE usuario SET nombre = ?, apellido_materno = ?, apellido_paterno = ?, email = ?, contrasena = ?, rol = ?, estado = ? WHERE id_usuario = ?";
        jdbcTemplate.update(query,
                usuario.getNombre(),
                usuario.getApellido_materno(),
                usuario.getApellido_paterno(),
                usuario.getEmail(),
                usuario.getContrasena(),
                usuario.getRol(),
                usuario.getEstado(),
                usuario.getId_usuario()
        );
    }

    @Override
    public void eliminarUsuario(int id) {
        String query = "DELETE FROM usuario WHERE id_usuario = ?";
        jdbcTemplate.update(query, id);
    }
}