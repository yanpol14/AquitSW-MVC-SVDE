package com.example.demo.model;

import java.time.LocalDate;

public class Evento {
    private int id_evento;
    private int id_categoria;
    private String titulo;
    private String descripcion;
    private LocalDate fecha_evento;
    private double precio;
    private String lugar;
    private int aforo_total;
    private int aforo_disponible;
    private String imagen_url; // Cambiado para que coincida exactamente con la BD
    private boolean estado;

    private Categoria categoria;

    public Evento() {
    }

    public Evento(int id_evento, int id_categoria, String titulo, String descripcion,
            LocalDate fecha_evento, double precio, String lugar, int aforo_total,
            int aforo_disponible, String imagen_url, boolean estado) {
        this.id_evento = id_evento;
        this.id_categoria = id_categoria;
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.fecha_evento = fecha_evento;
        this.precio = precio;
        this.lugar = lugar;
        this.aforo_total = aforo_total;
        this.aforo_disponible = aforo_disponible;
        this.imagen_url = imagen_url;
        this.estado = estado;
    }

    // --- GETTERS Y SETTERS ESTÁNDAR (CamelCase para JSTL) ---
    public int getId_evento() {
        return id_evento;
    }

    public void setId_evento(int id_evento) {
        this.id_evento = id_evento;
    }

    public int getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public LocalDate getFecha_evento() {
        return fecha_evento;
    }

    public void setFecha_evento(LocalDate fecha_evento) {
        this.fecha_evento = fecha_evento;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public int getAforo_total() {
        return aforo_total;
    }

    public void setAforo_total(int aforo_total) {
        this.aforo_total = aforo_total;
    }

    public int getAforo_disponible() {
        return aforo_disponible;
    }

    public void setAforo_disponible(int aforo_disponible) {
        this.aforo_disponible = aforo_disponible;
    }

    public String getImagen_url() {
        return imagen_url;
    }

    public void setImagen_url(String imagen_url) {
        this.imagen_url = imagen_url;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public Categoria getCategoria(){
        return categoria;
    }

    public void setCategoria(Categoria categoria){
        this.categoria = categoria;
    }

}