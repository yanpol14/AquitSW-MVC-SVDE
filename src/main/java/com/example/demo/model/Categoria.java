package com.example.demo.model;

public class Categoria {
    private int id_categoria;
    private String nombre;
    private String descripcion;
    private boolean estado;

    public Categoria() {
    }

    public Categoria(int id_categoria, String nombre, String descripcion, boolean estado) {
        this.id_categoria = id_categoria;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.estado = estado;
    }

    // --- GETTERS Y SETTERS CORREGIDOS PARA JSTL ---
    public int getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
}