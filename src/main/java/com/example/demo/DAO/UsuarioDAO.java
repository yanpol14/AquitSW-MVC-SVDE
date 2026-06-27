package com.example.demo.DAO;

import com.example.demo.model.Usuario;
import java.util.List;

public interface UsuarioDAO {
    Usuario bucarPorEmail(String email);

    List<Usuario> ListarTodosUsuarios();

    Usuario buscarPorid(int id);

    void crearUsuario(Usuario usuario);

    void actualizarUsuario(Usuario usuario);

    void eliminarUsuario(int id);

}