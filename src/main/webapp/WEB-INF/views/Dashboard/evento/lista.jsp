<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h1 class="h2 fw-bold text-dark m-0">CRUD EVENTO</h1>
            <p class="text-muted small mb-0">Listado general de eventos cargado en el sistema.</p>
        </div>
        <a href="form.jsp" class="btn btn-verde-menta rounded-pill fw-bold px-4 shadow-sm">
            <i class="bi bi-plus-circle me-2"></i> Registrar Nuevo Evento
        </a>
    </div>

    <div class="bg-white rounded-4 shadow-sm border border-light-subtle p-4">
        <div class="table-responsive">
            <table class="table table-hover align-middle mb-0">
                <thead class="table-light text-secondary small text-uppercase">
                    <tr>
                        <th style="width: 80px;">ID</th>
                        <th>Titulo</th>
                        <th>Fecha</th>
                        <th>Categoría</th>
                        <th>Precio</th>
                        <th>Lugar</th>
                        <th>Aforo_total</th>
                        <th>Aforo_disponible</th>
                        <th>Estado</th>
                        <th class="text-end" style="width: 150px;">Acciones</th>
                    </tr>
                </thead>
                <tbody class="small text-dark">
                    <tr>
                        <td class="fw-bold text-secondary">#1</td>
                        <td class="fw-bold text-dark">Bharat</td>
                        <td><i class="bi bi-calendar3 me-1 text-muted"></i> 2026-05-10</td>
                        <td><span class="badge bg-light text-dark border px-2 py-1">Peliculas (drama)</span></td>
                        <td class="fw-bold text-success">S/ 20.00</td>
                        <td class="text-center fw-bold">Cineplanet</td>
                        <td class="text-center">45</td>
                        <td class="text-center">15</td>
                        <td class="text-center text-success fw-bold">Activo</td>
                        <td class="text-end">
                            <div class="btn-group shadow-sm rounded-pill">
                                <a href="#" class="btn btn-outline-secondary btn-sm border-0 px-3" title="Editar">
                                    <i class="bi bi-pencil-square text-primary"></i>
                                </a>
                                <a href="#" class="btn btn-outline-secondary btn-sm border-0 px-3" title="Eliminar">
                                    <i class="bi bi-trash3-fill text-danger"></i>
                                </a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="fw-bold text-secondary">#2</td>
                        <td class="fw-bold text-dark">Airback Live</td>
                        <td><i class="bi bi-calendar3 me-1 text-muted"></i> 2026-05-23</td>
                        <td><span class="badge bg-light text-dark border px-2 py-1">Conciertos</span></td>
                        <td class="fw-bold text-success">S/ 120.00</td>
                        <td class="text-center fw-bold">Estadio Nacional</td>
                        <td class="text-center">45</td>
                        <td class="text-center">15</td>
                        <td class="text-center text-danger fw-bold">Desactivo</td>
                        <td class="text-end">
                            <div class="btn-group shadow-sm rounded-pill">
                                <a href="#" class="btn btn-outline-secondary btn-sm border-0 px-3"><i class="bi bi-pencil-square text-primary"></i></a>
                                <a href="#" class="btn btn-outline-secondary btn-sm border-0 px-3"><i class="bi bi-trash3-fill text-danger"></i></a>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</main>