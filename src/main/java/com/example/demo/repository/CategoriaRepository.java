package com.example.demo.repository; // O el paquete donde lo tengas guardado

import com.example.demo.DAO.CategoriaDAO;
import com.example.demo.model.Categoria;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository; // <-- ASEGÚRATE DE ESTA IMPORTACIÓN
import java.util.List;

@Repository // <--- ¡ESTA ANOTACIÓN ES LA QUE FALTA!
public class CategoriaRepository implements CategoriaDAO {

    private final JdbcTemplate jdbcTemplate;

    public CategoriaRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Categoria> ListarCategoriasActivas() {
        String query = "SELECT * FROM categoria WHERE estado = 1";
        // Aquí va tu RowMapper o mapeo correspondiente
        return jdbcTemplate.query(query, (rs, rowNum) -> {
            return new Categoria(
                    rs.getInt("id_categoria"),
                    rs.getString("nombre"),
                    rs.getString("descripcion"),
                    rs.getInt("estado") == 1
            );
        });
    }
}