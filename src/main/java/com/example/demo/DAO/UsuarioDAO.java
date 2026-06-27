package com.example.demo.DAO;

import com.example.demo.model.Usuario;
import java.util.List;

public interface UsuarioDAO {
    Usuario bucarPorEmail(String email);
}
