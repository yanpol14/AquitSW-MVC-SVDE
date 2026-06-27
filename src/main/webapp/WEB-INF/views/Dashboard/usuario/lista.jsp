<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h1 class="h2 fw-bold text-dark m-0">CRUD USUARIOS</h1>
            <p class="text-muted small mb-0">Administración de credenciales, accesos y roles globales.</p>
        </div>
        <a href="form.jsp" class="btn btn-verde-menta rounded-pill fw-bold px-4 shadow-sm">
            <i class="bi bi-person-plus-fill me-2"></i> Registrar Nuevo Usuario
        </a>
    </div>

    <div class="bg-white rounded-4 shadow-sm border border-light-subtle p-4">
        <div class="table-responsive">
            <table class="table table-hover align-middle mb-0">
                <thead class="table-light text-secondary small text-uppercase">
                    <tr>
                        <th style="width: 80px;">ID</th>
                        <th>Nombre Completo</th>
                        <th>Correo Electrónico</th>
                        <th>Fecha Creación</th>
                        <th>Rol Asignado</th>
                        <th class="text-center">Estado</th>
                        <th class="text-end" style="width: 150px;">Acciones</th>
                    </tr>
                </thead>
                <tbody class="small text-dark">
                    <tr>
                        <td class="fw-bold text-secondary">#1</td>
                        <td class="fw-bold text-dark">Carlos Mendoza Luis</td>
                        <td>carlos.mendoza@email.com</td>
                        <td><i class="bi bi-calendar3 me-1 text-muted"></i> 2026-05-10</td>
                        <td>
                            <span class="badge bg-danger-subtle text-danger border border-danger-subtle rounded-pill px-3 py-1 fw-semibold">
                                ADMIN
                            </span>
                        </td>
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
                        <td class="fw-bold text-dark">Ana María Gómez</td>
                        <td>ana.gomez@email.com</td>
                        <td><i class="bi bi-calendar3 me-1 text-muted"></i> 2026-05-10</td>
                        <td>
                            <span class="badge bg-primary-subtle text-primary border border-primary-subtle rounded-pill px-3 py-1 fw-semibold">
                                CLIENTE
                            </span>
                        </td>
                        <td class="text-center text-success fw-bold">Activo</td>
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