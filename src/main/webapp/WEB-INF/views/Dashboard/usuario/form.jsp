<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 🌟 Inclusión corregida para salir dos niveles atrás según tu árbol de carpetas --%>
<jsp:include page="../../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h1 class="h2 fw-bold text-dark m-0">
                <c:choose>
                    <c:when test="${usuario.id_usuario > 0}">Modificar Usuario</c:when>
                    <c:otherwise>Registrar Usuario</c:otherwise>
                </c:choose>
            </h1>
            <p class="text-muted small mb-0">Crea o modifica una cuenta de usuario asignando sus credenciales y permisos.</p>
        </div>
        <a href="/usuario/list" class="btn btn-outline-secondary rounded-pill fw-semibold btn-sm px-3">
            <i class="bi bi-arrow-left me-1"></i> Cancelar y Volver
        </a>
    </div>

    <div class="row justify-content-start">
        <div class="col-12 col-xl-8">
            <div class="bg-white rounded-4 shadow-sm border border-light-subtle p-4 p-md-5">

                <form:form action="/usuario/guardar" method="POST" modelAttribute="usuario">
                    <form:hidden path="id_usuario" />
                    <form:hidden path="fecha_creacion" />

                    <div class="row g-3">
                        <div class="col-12 col-md-4">
                            <label class="form-label small fw-bold text-secondary" for="nombre">Nombre</label>
                            <form:input path="nombre" id="nombre" class="form-control" required="required" placeholder="Ej. Juan" />
                        </div>

                        <div class="col-12 col-md-4">
                            <label class="form-label small fw-bold text-secondary" for="apellido_paterno">Apellido Paterno</label>
                            <form:input path="apellido_paterno" id="apellido_paterno" class="form-control" required="required" placeholder="Ej. Pérez" />
                        </div>

                        <div class="col-12 col-md-4">
                            <label class="form-label small fw-bold text-secondary" for="apellido_materno">Apellido Materno</label>
                            <form:input path="apellido_materno" id="apellido_materno" class="form-control" required="required" placeholder="Ej. Gómez" />
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="email">Correo Electrónico</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light text-muted"><i class="bi bi-envelope-fill"></i></span>
                                <form:input type="email" path="email" id="email" class="form-control" required="required" placeholder="juan.perez@email.com" />
                            </div>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="contrasena">Contraseña</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light text-muted"><i class="bi bi-lock-fill"></i></span>
                                <form:input type="password" path="contrasena" id="contrasena" class="form-control" required="required" placeholder="••••••••" />
                            </div>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="rol">Asignar Rol</label>
                            <form:select path="rol" id="rol" class="form-select" required="required">
                                <option value="" disabled="disabled">Seleccione un Rol...</option>
                                <option value="ROLE_CLIENTE">Cliente</option>
                                <option value="ROLE_ADMIN">Admin</option>
                            </form:select>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="estado">Estado Inicial</label>
                            <form:select path="estado" id="estado" class="form-select" required="required">
                                <option value="true">Activo</option>
                                <option value="false">Inactivo</option>
                            </form:select>
                        </div>
                    </div>

                    <div class="mt-4 pt-3 border-top border-light-subtle d-flex justify-content-end gap-2">
                        <button type="submit" class="btn btn-verde-menta rounded-pill px-4 fw-bold shadow-sm small">
                            <i class="bi bi-cloud-arrow-up-fill me-1"></i> Guardar Usuario
                        </button>
                    </div>
                </form:form>

            </div>
        </div>
    </div>

</main>