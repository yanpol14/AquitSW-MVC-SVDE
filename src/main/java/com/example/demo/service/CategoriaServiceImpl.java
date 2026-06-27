package com.example.demo.service;

import java.util.List;

import com.example.demo.DAO.CategoriaDAO;
import com.example.demo.model.Categoria;
import org.springframework.stereotype.Service;

@Service
public class CategoriaServiceImpl implements CategoriaService{

    private final CategoriaDAO categoriaDAO;

    public CategoriaServiceImpl(CategoriaDAO categoriaDAO){
        this.categoriaDAO = categoriaDAO;
    }

    @Override
    public List<Categoria> ListarCategoriasActivas(){
        return categoriaDAO.ListarCategoriasActivas();
    }

    @Override
    public List<Categoria> ListarTodasLasCategorias(){
        return categoriaDAO.ListarTodasLasCategorias();
    }

    @Override
    public void crearCategoria(Categoria categoria){
        categoriaDAO.crearCategoria(categoria);
    }

    @Override
    public Categoria buscarPorId(int id) {
        return categoriaDAO.buscarPorId(id);
    }

    @Override
    public void actualizarCategoria(Categoria categoria) {
        categoriaDAO.actualizarCategoria(categoria);
    }

    @Override
    public void eliminarCategoria(int id) {
        categoriaDAO.eliminarCategoria(id);
    }
}