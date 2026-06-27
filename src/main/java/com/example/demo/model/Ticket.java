package com.example.demo.model;

import java.time.LocalDate;

public class Ticket {
    private int id_ticket;
    private int cantidad;
    private double subtotal;
    private double total;
    private LocalDate fecha_compra;
    private boolean estado;
    private String tipo_pago;
    private String detalle;

    private Usuario usuario;
    private Evento evento;

    public Ticket() {
    }

    public Ticket(int id_ticket, int cantidad, double subtotal, double total,
                  java.time.LocalDate fecha_compra, boolean estado, String tipo_pago, String detalle,
                  Usuario usuario, Evento evento) {
        this.id_ticket = id_ticket;
        this.cantidad = cantidad;
        this.subtotal = subtotal;
        this.total = total;
        this.fecha_compra = fecha_compra;
        this.estado = estado;
        this.tipo_pago = tipo_pago;
        this.detalle = detalle;
        this.usuario = usuario;
        this.evento = evento;
    }

    public int getId_ticket() { return id_ticket; }
    public void setId_ticket(int id_ticket) { this.id_ticket = id_ticket; }

    public int getCantidad() { return cantidad; }
    public void setCantidad(int cantidad) { this.cantidad = cantidad; }

    public double getSubtotal() { return subtotal; }
    public void setSubtotal(double subtotal) { this.subtotal = subtotal; }

    public double getTotal() { return total; }
    public void setTotal(double total) { this.total = total; }

    public LocalDate getFecha_compra() { return fecha_compra; }
    public void setFecha_compra(LocalDate fecha_compra) { this.fecha_compra = fecha_compra; }

    public boolean isEstado() { return estado; }
    public void setEstado(boolean estado) { this.estado = estado; }

    public String getTipo_pago() { return tipo_pago; }
    public void setTipo_pago(String tipo_pago) { this.tipo_pago = tipo_pago; }

    public String getDetalle() { return detalle; }
    public void setDetalle(String detalle) { this.detalle = detalle; }

    public Usuario getUsuario() { return usuario; }
    public void setUsuario(Usuario usuario) { this.usuario = usuario; }

    public Evento getEvento() { return evento; }
    public void setEvento(Evento evento) { this.evento = evento; }
}