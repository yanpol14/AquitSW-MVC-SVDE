package com.example.demo.model;

public class usuario {

    private int id_usuario;
    private String nombre;
    private String apellido_materno;
    private String apellido_paterno;
    private String email;
    private String contraseña;
    private String rol;
    private boolean estado;
    private String fecha_creacion;

    public usuario() {
    }

    public int getiduser() {
        return id_usuario;
    }

    public void setiduser(int iduser) {
        this.id_usuario = iduser;
    }

    public String getnombre() {
        return nombre;
    }

    public void setnombre(String nombre) {
        this.nombre = nombre;
    }

    public String getapellido_m() {
        return apellido_materno;
    }

    public void setapellido_m(String apellido_m) {
        this.apellido_materno = apellido_m;
    }

    public String getapellido_p() {
        return apellido_paterno;
    }

    public void getapellido_p(String apellido_p) {
        this.apellido_paterno = apellido_p;
    }

    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;
    }

    public String getcontraseña() {
        return contraseña;
    }

    public void setcontraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getrol() {
        return rol;
    }

    public void setrol(String rol) {
        this.rol = rol;
    }

    public boolean getestado() {
        return estado;
    }

    public void setestado(boolean estado) {
        this.estado = estado;
    }

    public String getf_crecion() {
        return fecha_creacion;
    }

    public void setf_creacion(String f_creacion) {
        this.fecha_creacion = f_creacion;
    }
}
