<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<jsp:include page="../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h1 class="h2 fw-bold text-dark m-0">Formulario de Usuario</h1>
            <p class="text-muted small mb-0">Crea o modifica una cuenta de usuario asignando sus permisos.</p>
        </div>
        <a href="lista.html" class="btn btn-outline-secondary rounded-pill fw-semibold btn-sm px-3">
            <i class="bi bi-arrow-left me-1"></i> Cancelar y Volver
        </a>
    </div>

    <div class="row justify-content-start">
        <div class="col-12 col-xl-8">
            <div class="bg-white rounded-4 shadow-sm border border-light-subtle p-4 p-md-5">

                <form>
                    <input type="hidden" name="id">

                    <div class="row g-3">
                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Nombre</label>
                            <input type="text" class="form-control" required placeholder="Ej. Juan">
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Apellido Paterno</label>
                            <input type="text" class="form-control" required placeholder="Ej. Perez">
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Apellido Materno</label>
                            <input type="text" class="form-control" required placeholder="Ej. Mendoza">
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Correo Electrónico</label>
                            <input type="email" class="form-control" required placeholder="juan.perez@example.com">
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Contraseña</label>
                            <input type="password" class="form-control" required placeholder="Mínimo 6 caracteres">
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Asignar Rol</label>
                            <select class="form-select select-custom-catalogo" required>
                                <option value="" disabled selected>Seleccione un Rol...</option>
                                <option value="ROLE_CLIENTE">Cliente</option>
                                <option value="ROLE_ADMIN">Admin</option>
                            </select>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Estado Inicial</label>
                            <select class="form-select select-custom-catalogo" required>
                                <option value="true" selected>Activo</option>
                                <option value="false">Desactivo</option>
                            </select>
                        </div>
                    </div>

                    <div class="mt-4 pt-3 border-top border-light-subtle d-flex justify-content-end gap-2">
                        <button type="submit" class="btn btn-verde-menta rounded-pill px-4 fw-bold shadow-sm small">
                            Guardar Usuario
                        </button>
                    </div>

                </form>

            </div>
        </div>
    </div>

</main>