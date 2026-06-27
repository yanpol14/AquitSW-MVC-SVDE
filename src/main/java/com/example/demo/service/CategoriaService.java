package com.example.demo.service;

import java.util.List;
import com.example.demo.model.Categoria;

public interface CategoriaService {

     List<Categoria> ListarCategoriasActivas();

     List<Categoria> ListarTodasLasCategorias();

     void crearCategoria(Categoria categoria);

     Categoria buscarPorId(int id);

     void actualizarCategoria(Categoria categoria);

     void eliminarCategoria(int id);
}
