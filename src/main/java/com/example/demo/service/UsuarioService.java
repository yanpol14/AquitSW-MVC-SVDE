package com.example.demo.service;

import java.util.List;
import com.example.demo.model.Usuario;

public interface UsuarioService {

    Usuario bucarPorEmail(String email);

    List<Usuario> ListarTodosUsuarios();

    Usuario buscarPorid(int id);

    void crearUsuario(Usuario usuario);

    void actualizarUsuario(Usuario usuario);

    void eliminarUsuario(int id);

}