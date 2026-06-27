package com.example.demo.DAO;

import java.util.List;
import com.example.demo.model.Categoria;

public interface CategoriaDAO {
    List<Categoria> ListarCategoriasActivas();

    List<Categoria> ListarTodasLasCategorias();

    void crearCategoria(Categoria categoria);

    Categoria buscarPorId(int id);

    void actualizarCategoria(Categoria categoria);

    void eliminarCategoria(int id);
}
