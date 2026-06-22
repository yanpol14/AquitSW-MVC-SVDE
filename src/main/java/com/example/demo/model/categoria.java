package com.example.demo.model;

public class categoria {
    private int id_categoria;
    private String nombre;
    private String descripcion;
    private boolean estado;

    public categoria() {
    }

    public int getidc() {
        return id_categoria;
    }

    public void setidc(int id_c) {
        this.id_categoria = id_c;
    }

    public String getnombre() {
        return nombre;
    }

    public void setnombre(String nombre) {
        this.nombre = nombre;
    }

    public String getdescipcion() {
        return descripcion;
    }

    public void setdescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public boolean getsetado() {
        return estado;
    }

    public void setestado(boolean estado) {
        this.estado = estado;
    }
}
