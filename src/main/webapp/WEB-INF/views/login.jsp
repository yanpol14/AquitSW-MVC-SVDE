<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="componentes/header.jsp" />

<main class="catalogo-section d-flex align-items-center" style="min-height: 85vh;">
    <div class="container py-4">
        <div class="row justify-content-center">
            <div class="col-12 col-md-8 col-lg-5">

                <div class="p-4 p-md-5 rounded-4 shadow-sm bg-white bg-opacity-75 border border-light-subtle">

                    <div class="text-center mb-4">
                        <h2 class="fw-bold text-dark mb-1">Ticket<span class="text-success">Landia</span></h2>
                        <p class="text-muted small">Tu pase directo al mejor entretenimiento</p>
                    </div>

                    <%-- Alerta dinámica controlada desde Java para errores de credenciales --%>
                    <c:if test="${not empty errorLogin}">
                        <div class="alert alert-danger text-center mb-3 small" role="alert">
                            ${errorLogin}
                        </div>
                    </c:if>

                    <%-- Alerta dinámica controlada desde Java para éxito en el registro --%>
                    <c:if test="${not empty mensajeExito}">
                        <div class="alert alert-success text-center mb-3 small" role="alert">
                            ${mensajeExito}
                        </div>
                    </c:if>

                    <ul class="nav nav-pills nav-fill mb-4 p-1 bg-secondary bg-opacity-10 rounded-pill" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active rounded-pill fw-bold" id="tab-ingresar" data-bs-toggle="pill" data-bs-target="#panel-ingresar" type="button" role="tab">
                                <i class="bi bi-box-arrow-in-right me-1"></i> Ingresar
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link rounded-pill fw-bold" id="tab-registrar" data-bs-toggle="pill" data-bs-target="#panel-registrar" type="button" role="tab">
                                <i class="bi bi-person-plus me-1"></i> Crear Cuenta
                            </button>
                        </li>
                    </ul>

                    <div class="tab-content" id="pills-tabContent">

                        <div class="tab-pane fade show active" id="panel-ingresar" role="tabpanel">
                            <form action="/login/acceder" method="POST">
                                <div class="mb-3">
                                    <label class="form-label small fw-bold text-secondary">Correo Electrónico</label>
                                    <div class="input-group">
                                        <span class="input-group-text bg-white border-end-0 text-muted"><i class="bi bi-envelope"></i></span>
                                        <input type="email" name="correo" class="form-control border-start-0" required placeholder="correo@ejemplo.com">
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label small fw-bold text-secondary">Contraseña</label>
                                    <div class="input-group">
                                        <span class="input-group-text bg-white border-end-0 text-muted"><i class="bi bi-lock"></i></span>
                                        <input type="password" id="login-pass" name="password" class="form-control border-start-0" required placeholder="••••••••">
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mb-4 small">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="mostrarPass"
                                               onclick="document.getElementById('login-pass').type = this.checked ? 'text' : 'password'">
                                        <label class="form-check-label text-muted" for="mostrarPass">Mostrar contraseña</label>
                                    </div>
                                    <a href="#" class="text-success text-decoration-none fw-semibold">¿Olvidaste tu contraseña?</a>
                                </div>

                                <button type="submit" class="btn btn-success w-100 rounded-pill fw-bold py-2 shadow-sm">
                                    Iniciar Sesión
                                </button>
                            </form>
                        </div>

                        <div class="tab-pane fade" id="panel-registrar" role="tabpanel">
                            <form action="/login/registrar" method="POST">
                                <div class="mb-3">
                                    <label class="form-label small fw-bold text-secondary">Nombre</label>
                                    <div class="input-group">
                                        <span class="input-group-text bg-white border-end-0 text-muted"><i class="bi bi-person"></i></span>
                                        <input type="text" name="nombre" class="form-control border-start-0" required placeholder="Ej. Juan">
                                    </div>
                                </div>
                                <div class="row g-3 mb-3">
                                    <div class="col-12 col-md-6">
                                        <label class="form-label small fw-bold text-secondary">Apellido Paterno</label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-white border-end-0 text-muted"><i class="bi bi-person"></i></span>
                                            <input type="text" name="apellidoPaterno" class="form-control border-start-0" required placeholder="Ej. Pérez">
                                        </div>
                                    </div>

                                    <div class="col-12 col-md-6">
                                        <label class="form-label small fw-bold text-secondary">Apellido Materno</label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-white border-end-0 text-muted"><i class="bi bi-person"></i></span>
                                            <input type="text" name="apellidoMaterno" class="form-control border-start-0" required placeholder="Ej. Mendoza">
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label small fw-bold text-secondary">Correo Electrónico</label>
                                    <div class="input-group">
                                        <span class="input-group-text bg-white border-end-0 text-muted"><i class="bi bi-envelope"></i></span>
                                        <input type="email" name="correo" class="form-control border-start-0" required placeholder="ejemplo@correo.com">
                                    </div>
                                </div>
                                <div class="mb-3 col-12 col-md-6">
                                    <label class="form-label small fw-bold text-secondary">Fecha de nacimiento</label>
                                    <input type="date" name="fechaNacimiento" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label small fw-bold text-secondary">Contraseña Nueva</label>
                                    <div class="input-group">
                                        <span class="input-group-text bg-white border-end-0 text-muted"><i class="bi bi-lock"></i></span>
                                        <input type="password" name="password" class="form-control border-start-0" required placeholder="Mínimo 6 caracteres">
                                    </div>
                                </div>
                                <div class="form-check mb-4 small">
                                    <input class="form-check-input" type="checkbox" id="terminos" required>
                                    <label class="form-check-label text-muted" for="terminos">
                                        Acepto los <a href="#" class="text-success text-decoration-none">Términos y Condiciones</a>
                                    </label>
                                </div>
                                <button type="submit" class="btn btn-success w-100 rounded-pill fw-bold py-2 shadow-sm">
                                    Registrarme y Crear Cuenta
                                </button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>