<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 🌟 Inclusión corregida con dos niveles hacia atrás (../../) --%>
<jsp:include page="../../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h1 class="h2 fw-bold text-dark m-0">CRUD TICKETS</h1>
            <p class="text-muted small mb-0">Listado general de boletos emitidos y vendidos en la plataforma.</p>
        </div>
        <a href="/ticket/crear" class="btn btn-verde-menta rounded-pill fw-bold px-4 shadow-sm">
            <i class="bi bi-plus-circle me-2"></i> Emitir Nuevo Ticket
        </a>
    </div>

    <div class="bg-white rounded-4 shadow-sm border border-light-subtle p-4">
        <div class="table-responsive">
            <table class="table table-hover align-middle mb-0">
                <thead class="table-light text-secondary small text-uppercase">
                    <tr>
                        <th style="width: 80px;">ID</th>
                        <th>Detalle</th>
                        <th>Cantidad</th>
                        <th>Total</th>
                        <th>Fecha Compra</th>
                        <th class="text-center">Estado</th>
                        <th class="text-end" style="width: 150px;">Acciones</th>
                    </tr>
                </thead>
                <tbody class="small text-dark">

                    <%-- 🌟 Iteramos sobre la lista "Tickets" (Con Mayúscula como el controlador) --%>
                    <c:forEach items="${Tickets}" var="tk">
                        <tr>
                            <td class="fw-bold text-secondary">#${tk.id_ticket}</td>
                            <td><span class="fw-bold">${tk.detalle}</span></td>
                            <td>${tk.cantidad}</td>
                            <td class="fw-bold text-success">S/ ${tk.total}</td>
                            <td>${tk.fecha_compra}</td>
                            <td class="text-center">
                                <c:choose>
                                    <c:when test="${tk.estado}">
                                        <span class="badge bg-success-subtle text-success border border-success-subtle px-2 py-1 rounded-pill">Válido</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-danger-subtle text-danger border border-danger-subtle px-2 py-1 rounded-pill">Inactivo / Cancelado</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td class="text-end">
                                <div class="btn-group shadow-sm rounded-pill">
                                    <a href="/ticket/editar/${tk.id_ticket}" class="btn btn-outline-secondary btn-sm border-0 px-3" title="Editar">
                                        <i class="bi bi-pencil-square text-primary"></i>
                                    </a>
                                    <a href="/ticket/eliminar/${tk.id_ticket}" class="btn btn-outline-secondary btn-sm border-0 px-3" title="Eliminar"
                                       onclick="return confirm('¿Estás seguro de eliminar este boleto?');">
                                        <i class="bi bi-trash3-fill text-danger"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${empty Tickets}">
                        <tr>
                            <td colspan="7" class="text-center py-4 text-muted">
                                <i class="bi bi-ticket-perforated me-2 fs-5"></i> No se encontraron tickets emitidos en el sistema.
                            </td>
                        </tr>
                    </c:if>

                </tbody>
            </table>
        </div>
    </div>

</main>