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

}
