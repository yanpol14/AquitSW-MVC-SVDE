<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h1 class="h2 fw-bold text-dark m-0">CRUD TICKETS</h1>
            <p class="text-muted small mb-0">Listado general de boletos emitidos y vendidos en la plataforma.</p>
        </div>
        <a href="form.jsp" class="btn btn-verde-menta rounded-pill fw-bold px-4 shadow-sm">
            <i class="bi bi-plus-circle me-2"></i> Emitir Nuevo Ticket
        </a>
    </div>

    <div class="bg-white rounded-4 shadow-sm border border-light-subtle p-4">
        <div class="table-responsive">
            <table class="table table-hover align-middle mb-0">
                <thead class="table-light text-secondary small text-uppercase">
                    <tr>
                        <th style="width: 80px;">ID</th>
                        <th>Código Único</th>
                        <th>Evento</th>
                        <th>Cliente / Usuario</th>
                        <th>Zona / Tipo</th>
                        <th>Precio Pagado</th>
                        <th>Fecha Emisión</th>
                        <th>Estado</th>
                        <th class="text-end" style="width: 150px;">Acciones</th>
                    </tr>
                </thead>
                <tbody class="small text-dark">
                    <tr>
                        <td class="fw-bold text-secondary">#1</td>
                        <td><code class="text-dark fw-bold">TK-8941-XYZ</code></td>
                        <td class="fw-bold">Airback Live</td>
                        <td>juan.perez@correo.com</td>
                        <td><span class="badge bg-primary px-2 py-1">VIP</span></td>
                        <td class="fw-bold text-success">S/ 120.00</td>
                        <td>2026-05-12</td>
                        <td><span class="badge bg-success-subtle text-success border border-success-subtle px-2 py-1 rounded-pill">Válido</span></td>
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
                        <td><code class="text-dark fw-bold">TK-4125-ABC</code></td>
                        <td class="fw-bold">Bharat</td>
                        <td>maria.mendoza@correo.com</td>
                        <td><span class="badge bg-secondary px-2 py-1">General</span></td>
                        <td class="fw-bold text-success">S/ 20.00</td>
                        <td>2026-05-14</td>
                        <td><span class="badge bg-secondary-subtle text-secondary border border-secondary-subtle px-2 py-1 rounded-pill">Usado</span></td>
                        <td class="text-end">
                            <div class="btn-group shadow-sm rounded-pill">
                                <a href="#" class="btn btn-outline-secondary btn-sm border-0 px-3" title="Editar"><i class="bi bi-pencil-square text-primary"></i></a>
                                <a href="#" class="btn btn-outline-secondary btn-sm border-0 px-3" title="Eliminar"><i class="bi bi-trash3-fill text-danger"></i></a>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</main>