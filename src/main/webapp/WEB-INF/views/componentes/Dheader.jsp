<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de Administración - TicketLandia</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

<div class="container-fluid">
    <div class="row">

<nav class="col-md-3 col-lg-2 d-md-block bg-dark text-white min-vh-100 p-3 position-sticky top-0">
    <div class="d-flex align-items-center mb-4 pb-2 border-bottom border-secondary">
        <span class="fs-5 fw-bold">TicketLandia</span>
    </div>
    <ul class="nav nav-pills flex-column mb-auto gap-2">
        <li>
            <a href="/dashboard" class="nav-link ${pestana == 'metricas' ? 'active bg-success text-white' : 'bg-success-subtle text-dark'} w-100 text-start rounded-pill py-2">
                <i class="bi bi-graph-up me-2"></i>Métricas
            </a>
        </li>
        <li>
            <a href="/dashboard/categorias" class="nav-link ${pestana == 'categorias' ? 'active bg-success text-white' : 'bg-success-subtle text-dark'} w-100 text-start rounded-pill py-2">
                <i class="bi bi-tags me-2"></i>Categorías
            </a>
        </li>
        <li>
            <a href="/dashboard/eventos" class="nav-link ${pestana == 'eventos' ? 'active bg-success text-white' : 'bg-success-subtle text-dark'} w-100 text-start rounded-pill py-2">
                <i class="bi bi-calendar-event me-2"></i>Eventos
            </a>
        </li>
        <li>
            <a href="/dashboard/tickets" class="nav-link ${pestana == 'tickets' ? 'active bg-success text-white' : 'bg-success-subtle text-dark'} w-100 text-start rounded-pill py-2">
                <i class="bi bi-ticket-perforated me-2"></i>Tickets
            </a>
        </li>
        <li>
            <a href="/dashboard/usuarios" class="nav-link ${pestana == 'usuarios' ? 'active bg-success text-white' : 'bg-success-subtle text-dark'} w-100 text-start rounded-pill py-2">
                <i class="bi bi-people me-2"></i>Usuarios
            </a>
        </li>

        <li class="mt-4 pt-3 border-top border-secondary">
            <a href="/index" class="nav-link text-warning w-100 text-start rounded-pill py-2">
                <i class="bi bi-box-arrow-left me-2"></i> Volver a la Web
            </a>
        </li>
    </ul>
</nav>