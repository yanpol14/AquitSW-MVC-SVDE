package com.example.demo.model;

public class ticket {
    private int id_ticket;
    private int id_usuario;
    private int id_evento;
    private int id_categoria;
    private String tipo_entrada;
    private double precio;
    private boolean estado;
    private String fecha_compra;

    public ticket() {
    }

    public int getid_tikect() {
        return id_ticket;
    }

    public void setid_ticket(int id_t) {
        this.id_ticket = id_t;
    }

    public int getid_usuario() {
        return id_usuario;
    }

    public void setid_usuario(int id_u) {
        this.id_usuario = id_u;
    }

    public int getid_evento() {
        return id_evento;
    }

    public void setid_evento(int id_e) {
        this.id_evento = id_e;
    }

    public int getid_categoria() {
        return id_categoria;
    }

    public void setid_categoria(int id_c) {
        this.id_categoria = id_c;
    }

    public String gettipo_entrada() {
        return tipo_entrada;
    }

    public void settipo_entada(String t_entrada) {
        this.tipo_entrada = t_entrada;
    }

    public double getprcio() {
        return precio;
    }

    public void setprecio(double precio) {
        this.precio = precio;
    }

    public boolean getestado() {
        return estado;
    }

    public void setestado(boolean estado) {
        this.estado = estado;
    }

    public String getfecha_compra() {
        return fecha_compra;
    }

    public void setfecha_compra(String f_compra) {
        this.fecha_compra = f_compra;
    }
}
