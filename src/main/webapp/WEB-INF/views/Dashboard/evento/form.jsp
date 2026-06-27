<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h1 class="h2 fw-bold text-dark m-0">Crear Evento Eventos</h1>
            <p class="text-muted small mb-0">Inserta los parámetros del nuevo evento para el despliegue comercial.</p>
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
                        <div class="col-12">
                            <label class="form-label small fw-bold text-secondary">Nombre del Evento</label>
                            <input type="text" class="form-control" required placeholder="Ej. Avengers Infinite">
                        </div>

                        <div class="mb-3">
                            <label class="form-label small fw-bold text-secondary">Descripción del Evento</label>
                            <textarea
                                class="form-control"
                                rows="4"
                                placeholder="Escribe una descripción breve del evento..."
                                required></textarea>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Categoría</label>
                            <select class="form-select select-custom-catalogo" required>
                                <option value="" disabled selected>Seleccione una tabla...</option>
                                <option value="peliculas">Películas</option>
                                <option value="conciertos">Conciertos</option>
                                <option value="entretenimiento">Entretenimiento</option>
                            </select>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Lugar del evento</label>
                            <input type="text" class="form-control" required placeholder="Ej. Lima">
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Aforo Total</label>
                            <input type="number" class="form-control" required min="0">
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Estado</label>
                            <select class="form-select select-custom-catalogo" required>
                                <option value="" disabled selected>Seleccione una estado...</option>
                                <option value="peliculas">Activo</option>
                                <option value="conciertos">Desactivo</option>
                            </select>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Precio de Entrada (S/)</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light text-muted">S/</span>
                                <input type="number" class="form-control" required placeholder="25.00" min="0">
                            </div>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary">Fecha del Evento</label>
                            <input type="date" class="form-control" required>
                        </div>

                        <div class="col-12">
                            <label class="form-label small fw-bold text-secondary">Ruta del archivo de Imagen</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light text-muted"><i class="bi bi-image"></i></span>
                                <input type="text" class="form-control" required placeholder="img...">
                            </div>
                        </div>
                    </div>

                    <div class="mt-4 pt-3 border-top border-light-subtle d-flex justify-content-end gap-2">
                        <button type="submit" class="btn btn-verde-menta rounded-pill px-4 fw-bold shadow-sm small">
                            Guardar Evento en Sistema
                        </button>
                    </div>

                </form>

            </div>
        </div>
    </div>

</main>