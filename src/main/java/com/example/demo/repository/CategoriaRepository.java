package com.example.demo.repository;

import com.example.demo.DAO.CategoriaDAO;
import com.example.demo.model.Categoria;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.swing.*;
import java.util.List;

@Repository
public class CategoriaRepository implements CategoriaDAO {

    private final JdbcTemplate jdbcTemplate;

    public CategoriaRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public final RowMapper<Categoria> CategoriaRowMapper = ((rs, rowNum) -> {
        return new Categoria(
                rs.getInt("id_categoria"),
                rs.getString("nombre"),
                rs.getString("descripcion"),
                rs.getBoolean("estado")
        );
    });

    @Override
    public List<Categoria> ListarCategoriasActivas() {
        String query = "SELECT * FROM categoria WHERE estado = 1";
        return jdbcTemplate.query(query, CategoriaRowMapper);
    }

    @Override
    public List<Categoria> ListarTodasLasCategorias(){
        String query = "SELECT * FROM categoria";
        return jdbcTemplate.query(query, CategoriaRowMapper);
    }

    @Override
    public void crearCategoria(Categoria categoria){
        String query = "INSERT INTO categoria (nombre, descripcion) VALUES(?, ?)";
        jdbcTemplate.update(query, categoria.getNombre(), categoria.getDescripcion());
    }

    @Override
    public Categoria buscarPorId(int id) {
        String query = "SELECT * FROM categoria WHERE id_categoria = ?";
        return jdbcTemplate.queryForObject(query, CategoriaRowMapper, id);
    }

    @Override
    public void actualizarCategoria(Categoria categoria) {
        String query = "UPDATE categoria SET nombre = ?, descripcion = ?, estado = ? WHERE id_categoria = ?";
        jdbcTemplate.update(query, categoria.getNombre(), categoria.getDescripcion(), categoria.isEstado(), categoria.getId_categoria());
    }

    @Override
    public void eliminarCategoria(int id) {
        String query = "DELETE FROM categoria WHERE id_categoria = ?";
        jdbcTemplate.update(query, id);
    }
}