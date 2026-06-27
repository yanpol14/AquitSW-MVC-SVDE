<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 🌟 Inclusión corregida para salir dos niveles atrás según tu árbol de carpetas --%>
<jsp:include page="../../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h1 class="h2 fw-bold text-dark m-0">CRUD USUARIOS</h1>
            <p class="text-muted small mb-0">Administración de credenciales, accesos y roles globales.</p>
        </div>
        <a href="/usuario/crear" class="btn btn-verde-menta rounded-pill fw-bold px-4 shadow-sm">
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

                    <c:forEach items="${Usuarios}" var="user">
                        <tr>
                            <td class="fw-bold text-secondary">#${user.id_usuario}</td>
                            <td class="fw-bold text-dark">${user.nombre} ${user.apellido_paterno} ${user.apellido_materno}</td>
                            <td>${user.email}</td>
                            <td><i class="bi bi-calendar3 me-1 text-muted"></i>${user.fecha_creacion}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${user.rol == 'ROLE_ADMIN'}">
                                        <span class="badge bg-danger-subtle text-danger border border-danger-subtle rounded-pill px-3 py-1 fw-semibold">
                                            ADMIN
                                        </span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-primary-subtle text-primary border border-primary-subtle rounded-pill px-3 py-1 fw-semibold">
                                            CLIENTE
                                        </span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td class="text-center">
                                <c:choose>
                                    <c:when test="${user.estado}">
                                        <span class="badge bg-success-subtle text-success border border-success-subtle rounded-pill px-2 py-1">Activo</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-danger-subtle text-danger border border-danger-subtle rounded-pill px-2 py-1">Inactivo</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td class="text-end">
                                <div class="btn-group shadow-sm rounded-pill">
                                    <a href="/usuario/editar/${user.id_usuario}" class="btn btn-outline-secondary btn-sm border-0 px-3" title="Editar">
                                        <i class="bi bi-pencil-square text-primary"></i>
                                    </a>
                                    <a href="/usuario/eliminar/${user.id_usuario}" class="btn btn-outline-secondary btn-sm border-0 px-3" title="Eliminar"
                                       onclick="return confirm('¿Estás seguro de que deseas eliminar este usuario?');">
                                        <i class="bi bi-trash3-fill text-danger"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${empty Usuarios}">
                        <tr>
                            <td colspan="7" class="text-center py-4 text-muted">
                                <i class="bi bi-people me-2 fs-5"></i> No se encontraron usuarios registrados.
                            </td>
                        </tr>
                    </c:if>

                </tbody>
            </table>
        </div>
    </div>

</main>