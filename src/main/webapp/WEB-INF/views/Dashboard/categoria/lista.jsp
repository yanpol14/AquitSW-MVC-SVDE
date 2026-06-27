<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h2 class="h2 fw-bold text-dark m-0">CRUD CATEGORÍAS</h2>
            <p class="text-muted small mb-0">Listado de clasificaciones comerciales de eventos.</p>
        </div>
        <a href="/categoria/crear" class="btn btn-verde-menta rounded-pill fw-bold px-4 shadow-sm">
             <i class="bi bi-plus-circle me-2"></i> Registrar Nueva Categoría
        </a>
    </div>

    <div class="bg-white rounded-4 shadow-sm border border-light-subtle p-4">
        <div class="table-responsive">
            <table class="table table-hover align-middle mb-0">
                <thead class="table-light text-secondary small text-uppercase">
                    <tr>
                        <th style="width: 80px;">ID</th>
                        <th>Nombre de la Categoría</th>
                        <th>Descripción</th>
                        <th>Estado</th>
                        <th class="text-end" style="width: 150px;">Acciones</th>
                    </tr>
                </thead>
                <tbody class="small text-dark">

                    <c:forEach items="${categorias}" var="cat">
                        <tr>
                            <td class="fw-bold text-secondary">#${cat.id_categoria}</td>
                            <td class="fw-bold text-dark">${cat.nombre}</td>
                            <td class="text-muted">${cat.descripcion}</td>
                            <td>
                                <c:if test="${cat.estado}">
                                    <span class="badge bg-success-subtle text-success border border-success-subtle rounded-pill px-3 py-1.5">
                                        <i class="bi bi-check-circle-fill me-1"></i> Activo
                                    </span>
                                </c:if>
                                <c:if test="${!cat.estado}">
                                    <span class="badge bg-danger-subtle text-danger border border-danger-subtle rounded-pill px-3 py-1.5">
                                        <i class="bi bi-x-circle-fill me-1"></i> Inactivo
                                    </span>
                                </c:if>
                            </td>
                            <td class="text-end">
                                <div class="btn-group shadow-sm rounded-pill">
                                    <a href="/categoria/editar/${cat.id_categoria}" class="btn btn-outline-secondary btn-sm border-0 px-3" title="Editar">
                                        <i class="bi bi-pencil-square text-primary"></i>
                                    </a>
                                    <a href="/categoria/eliminar/${cat.id_categoria}"
                                       class="btn btn-outline-secondary btn-sm border-0 px-3"
                                       title="Eliminar"
                                       onclick="return confirm('¿Estás seguro de que deseas eliminar esta categoría?');">
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