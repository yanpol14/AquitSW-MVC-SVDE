<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h2 class="h2 fw-bold text-dark m-0">Crear Categoría</h2>
            <p class="text-muted small mb-0">Inserta los parámetros de la nueva clasificación para agrupar los eventos.</p>
        </div>
        <a href="/categoria/list" class="btn btn-outline-secondary rounded-pill fw-semibold btn-sm px-3">
            <i class="bi bi-arrow-left me-1"></i> Cancelar y Volver
        </a>
    </div>

    <div class="row justify-content-start">
        <div class="col-12 col-xl-8">
            <div class="bg-white rounded-4 shadow-sm border border-light-subtle p-4 p-md-5">

                <form:form action="/categoria/crear" method="post" modelAttribute="categoria">
                    <form:hidden path="id_categoria" />

                    <div class="row g-3">
                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="nombre">Nombre de la Categoría</label>
                            <form:input path="nombre" id="nombre" class="form-control" required="required" placeholder="Ej. Conciertos" />
                        </div>

                        <div class="col-12">
                            <label for="descripcion" class="form-label small fw-bold text-secondary">Descripción de la Categoría</label>
                            <form:textarea path="descripcion" id="descripcion" class="form-control" rows="3" placeholder="Escribe un breve resumen..." required="required" />
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="estado">Estado</label>
                            <form:select path="estado" id="estado" class="form-select" required="required">
                                <option value="" disabled="disabled" selected="selected">Seleccione un estado...</option>
                                <option value="true">Activo</option>
                                <option value="false">Inactivo</option>
                            </form:select>
                        </div>
                    </div>

                    <div class="mt-4 pt-3 border-top border-light-subtle d-flex justify-content-end gap-2">
                        <button type="submit" class="btn btn-verde-menta rounded-pill px-4 fw-bold shadow-sm small">
                            Guardar Categoría
                        </button>
                    </div>
                </form:form>

            </div>
        </div>
    </div>

</main>