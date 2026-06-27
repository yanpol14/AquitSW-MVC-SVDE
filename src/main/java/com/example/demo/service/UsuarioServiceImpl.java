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

    @Override
    public List<Usuario> ListarTodosUsuarios() { // 🌟 Nuevo método implementado
        return usuarioDAO.ListarTodosUsuarios();
    }

    @Override
    public Usuario buscarPorid(int id){
        return usuarioDAO.buscarPorid(id);
    }

    @Override
    public void crearUsuario(Usuario usuario){
        usuarioDAO.crearUsuario(usuario);
    }

    @Override
    public void actualizarUsuario(Usuario usuario){
        usuarioDAO.actualizarUsuario(usuario);
    }

    @Override
    public void eliminarUsuario(int id){
        usuarioDAO.eliminarUsuario(id);
    }

}