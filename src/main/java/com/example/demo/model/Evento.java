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
    private String url_imagen;
    private boolean estado;

    public Evento() {
    }

    public int getid_evento() {
        return id_evento;
    }

    public int getid_categoria() {
        return id_categoria;
    }

    public String gettitulo() {
        return titulo;
    }

    public void settitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getdescripcion() {
        return descripcion;
    }

    public void setdescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getfechav() {
        return fecha_evento;
    }

    public void setfechav(String fv) {
        this.fecha_evento = fv;
    }

    public double getprecio() {
        return precio;
    }

    public void setprecio(double precio) {
        this.precio = precio;
    }

    public String getlugar() {
        return lugar;
    }

    public void setlugar(String lugar) {
        this.lugar = lugar;
    }

    public int getaforot() {
        return aforo_total;
    }

    public void setaforot(int ft) {
        this.aforo_total = ft;
    }

    public int getaforod() {
        return aforo_disponible;
    }

    public void setaforod(int fd) {
        this.aforo_disponible = fd;
    }

    public String geturlimg() {
        return url_imagen;
    }

    public void seturlimg(String url) {
        this.url_imagen = url;
    }

    public boolean getestado() {
        return estado;
    }

    public void setestado(boolean estado) {
        this.estado = estado;
    }

}