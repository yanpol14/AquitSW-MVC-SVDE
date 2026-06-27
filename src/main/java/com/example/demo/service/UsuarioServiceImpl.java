package com.example.demo.service;

import java.util.List;
import com.example.demo.model.Usuario;
import com.example.demo.DAO.UsuarioDAO;
import org.springframework.stereotype.Service;

@Service
public class UsuarioServiceImpl implements UsuarioService {

    private final UsuarioDAO usuarioDAO;

    public UsuarioServiceImpl(UsuarioDAO usuarioDAO){
        this.usuarioDAO = usuarioDAO;
    }

    @Override
    public Usuario bucarPorEmail(String email){
        return usuarioDAO.bucarPorEmail(email);
    }
}
