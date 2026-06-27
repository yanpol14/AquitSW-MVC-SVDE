package com.example.demo.model;

public class Usuario {

    private int id_usuario;
    private String nombre;
    private String apellido_materno;
    private String apellido_paterno;
    private String email;
    private String contraseña;
    private String rol;
    private boolean estado;
    private String fecha_creacion;

    public Usuario() {
    }

    public Usuario(int id_usuario, String nombre, String apellido_materno,
                   String apellido_paterno, String email, String contraseña,
                   String rol, boolean estado, String fecha_creacion) {
        this.id_usuario = id_usuario;
        this.nombre = nombre;
        this.apellido_materno = apellido_materno;
        this.apellido_paterno = apellido_paterno;
        this.email = email;
        this.contraseña = contraseña;
        this.rol = rol;
        this.estado = estado;
        this.fecha_creacion = fecha_creacion;
    }

    public int getId_usuariouser() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuariouser) {
        this.id_usuario = id_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido_materno() {
        return apellido_materno;
    }

    public void setapellido_materno(String apellido_m) {
        this.apellido_materno = apellido_m;
    }

    public String getApellido_paterno() {
        return apellido_paterno;
    }

    public void setApellido_paterno(String apellido_p) {
        this.apellido_paterno = apellido_p;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContrasena() {
        return contraseña;
    }

    public void setContrasena(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public boolean getEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }
}
