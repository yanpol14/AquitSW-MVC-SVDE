<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h1 class="h2 fw-bold text-dark m-0">Emitir / Editar Ticket</h1>
            <p class="text-muted small mb-0">Asigna y genera un boleto físico o virtual para un usuario y evento determinado.</p>
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
                            <label class="form-label small fw-bold text-secondary">Código del Ticket (Serial)</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light text-muted"><i class="bi bi-qr-code"></i></span>
                                <input type="text" class="form-control text-uppercase" required placeholder="Ej. TK-XXXX-XXXX">
                            </div>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Seleccionar Evento</label>
                            <select class="form-select" required>
                                <option value="" disabled selected>Seleccione un evento...</option>
                                <option value="1">Airback Live (Estadio Nacional)</option>
                                <option value="2">Bharat (Cineplanet)</option>
                            </select>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Usuario / Cliente Comprador</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light text-muted"><i class="bi bi-envelope"></i></span>
                                <input type="email" class="form-control" required placeholder="correo@ejemplo.com">
                            </div>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Zona / Tipo de Entrada</label>
                            <select class="form-select" required>
                                <option value="" disabled selected>Seleccione la zona...</option>
                                <option value="vip">VIP</option>
                                <option value="preferencial">Preferencial</option>
                                <option value="general">General</option>
                            </select>
                        </div>

                        <div class="col-12 col-md-4">
                            <label class="form-label small fw-bold text-secondary">Precio Final (S/)</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light text-muted">S/</span>
                                <input type="number" class="form-control" required placeholder="120.00" min="0" step="0.01">
                            </div>
                        </div>

                        <div class="col-12 col-md-4">
                            <label class="form-label small fw-bold text-secondary">Asiento / Butaca (Opcional)</label>
                            <input type="text" class="form-control" placeholder="Ej. A-12">
                        </div>

                        <div class="col-12 col-md-4">
                            <label class="form-label small fw-bold text-secondary">Estado del Boleto</label>
                            <select class="form-select" required>
                                <option value="valido" selected>Válido</option>
                                <option value="usado">Usado</option>
                                <option value="cancelado">Cancelado / Reembolsado</option>
                            </select>
                        </div>
                    </div>

                    <div class="mt-4 pt-3 border-top border-light-subtle d-flex justify-content-end gap-2">
                        <button type="submit" class="btn btn-verde-menta rounded-pill px-4 fw-bold shadow-sm small">
                            Emitir y Guardar Ticket
                        </button>
                    </div>

                </form>

            </div>
        </div>
    </div>

</main>