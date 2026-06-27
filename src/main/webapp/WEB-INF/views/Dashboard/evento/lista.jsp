<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h1 class="h2 fw-bold text-dark m-0">CRUD EVENTOS</h1>
            <p class="text-muted small mb-0">Listado general de eventos cargado en el sistema.</p>
        </div>
        <a href="/evento/crear" class="btn btn-verde-menta rounded-pill fw-bold px-4 shadow-sm">
            <i class="bi bi-plus-circle me-2"></i> Registrar Nuevo Evento
        </a>
    </div>

    <div class="bg-white rounded-4 shadow-sm border border-light-subtle p-4">
        <div class="table-responsive">
            <table class="table table-hover align-middle mb-0">
                <thead class="table-light text-secondary small text-uppercase">
                    <tr>
                        <th style="width: 80px;">ID</th>
                        <th>Título</th>
                        <th>Fecha</th>
                        <th>Categoría</th>
                        <th>Precio</th>
                        <th>Lugar</th>
                        <th class="text-center">Aforo Total</th>
                        <th class="text-center">Disponible</th>
                        <th class="text-center">Estado</th>
                        <th class="text-end" style="width: 150px;">Acciones</th>
                    </tr>
                </thead>
                <tbody class="small text-dark">

                    <%-- 🌟 BUCLE DINÁMICO DE EVENTOS 🌟 --%>
                    <c:forEach items="${Eventos}" var="ev">
                        <tr>
                            <td class="fw-bold text-secondary">#${ev.id_evento}</td>
                            <td class="fw-bold text-dark">${ev.titulo}</td>
                            <td><i class="bi bi-calendar3 me-1 text-muted"></i> ${ev.fecha_evento}</td>
                            <td>
                                <%-- Obtenemos el nombre de la categoría gracias al objeto anidado --%>
                                <span class="badge bg-light text-dark border px-2 py-1">
                                    ${ev.categoria.nombre}
                                </span>
                            </td>
                            <td class="fw-bold text-success">S/ ${ev.precio}</td>
                            <td>${ev.lugar}</td>
                            <td class="text-center">${ev.aforo_total}</td>
                            <td class="text-center">${ev.aforo_disponible}</td>
                            <td class="text-center">
                                <c:choose>
                                    <c:when test="${ev.estado}">
                                        <span class="badge bg-success-subtle text-success border border-success-subtle rounded-pill px-2 py-1">Activo</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-danger-subtle text-danger border border-danger-subtle rounded-pill px-2 py-1">Inactivo</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td class="text-end">
                                <div class="btn-group shadow-sm rounded-pill">
                                    <%-- Botón Editar --%>
                                    <a href="/evento/editar/${ev.id_evento}" class="btn btn-outline-secondary btn-sm border-0 px-3" title="Editar">
                                        <i class="bi bi-pencil-square text-primary"></i>
                                    </a>
                                    <%-- Botón Eliminar con confirmación --%>
                                    <a href="/evento/eliminar/${ev.id_evento}" class="btn btn-outline-secondary btn-sm border-0 px-3" title="Eliminar"
                                       onclick="return confirm('¿Estás seguro de eliminar este evento?');">
                                        <i class="bi bi-trash3-fill text-danger"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </div>
    </div>

</main>