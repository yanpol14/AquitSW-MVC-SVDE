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
}