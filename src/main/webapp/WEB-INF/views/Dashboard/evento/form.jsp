<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h1 class="h2 fw-bold text-dark m-0">
                <c:choose>
                    <c:when test="${evento.id_evento > 0}">Modificar Evento</c:when>
                    <c:otherwise>Registrar Evento</c:otherwise>
                </c:choose>
            </h1>
            <p class="text-muted small mb-0">Inserta los parámetros del evento para el despliegue comercial.</p>
        </div>
        <a href="/evento/list" class="btn btn-outline-secondary rounded-pill fw-semibold btn-sm px-3">
            <i class="bi bi-arrow-left me-1"></i> Cancelar y Volver
        </a>
    </div>

    <div class="row justify-content-start">
        <div class="col-12 col-xl-8">
            <div class="bg-white rounded-4 shadow-sm border border-light-subtle p-4 p-md-5">

                <form:form action="/evento/guardar" method="post" modelAttribute="evento">

                    <form:hidden path="id_evento" />

                    <div class="row g-3">
                        <%-- Título del Evento --%>
                        <div class="col-12">
                            <label class="form-label small fw-bold text-secondary" for="titulo">Nombre del Evento</label>
                            <form:input path="titulo" id="titulo" class="form-control" required="required" placeholder="Ej. Avengers Infinite" />
                        </div>

                        <div class="col-12">
                            <label class="form-label small fw-bold text-secondary" for="descripcion">Descripción del Evento</label>
                            <form:textarea path="descripcion" id="descripcion" class="form-control" rows="4" placeholder="Escribe una descripción breve..." required="required" />
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="id_categoria">Categoría</label>
                            <%-- 🌟 NOTA: path mapea directo a la propiedad anidada del modelo Evento.java --%>
                            <form:select path="categoria.id_categoria" id="id_categoria" class="form-select" required="required">
                                <option value="" disabled="disabled" selected="selected">Seleccione una categoría...</option>
                                <c:forEach items="${categorias}" var="cat">
                                    <option value="${cat.id_categoria}" ${cat.id_categoria == evento.categoria.id_categoria ? 'selected' : ''}>
                                        ${cat.nombre}
                                    </option>
                                </c:forEach>
                            </form:select>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="lugar">Lugar del evento</label>
                            <form:input path="lugar" id="lugar" class="form-control" required="required" placeholder="Ej. Estadio Nacional" />
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="aforo_total">Aforo Total</label>
                            <form:input type="number" path="aforo_total" id="aforo_total" class="form-control" required="required" min="1" />
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="precio">Precio de Entrada (S/)</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light text-muted">S/</span>
                                <form:input type="number" step="0.01" path="precio" id="precio" class="form-control" required="required" placeholder="25.00" min="0" />
                            </div>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="fecha_evento">Fecha del Evento</label>
                            <form:input type="date" path="fecha_evento" id="fecha_evento" class="form-control" required="required" />
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="estado">Estado Comercial</label>
                            <form:select path="estado" id="estado" class="form-select" required="required">
                                <option value="true">Activo</option>
                                <option value="false">Inactivo</option>
                            </form:select>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="destacado">¿Mostrar en Destacados de la Web?</label>
                            <form:select path="destacado" id="destacado" class="form-select" required="required">
                                <option value="false">No destacar</option>
                                <option value="true">Sí, destacar evento</option>
                            </form:select>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="imagen_url">Ruta de la Imagen</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light text-muted"><i class="bi bi-image"></i></span>
                                <form:input path="imagen_url" id="imagen_url" class="form-control" required="required" placeholder="Ej. /img/eventos/avengers.jpg" />
                            </div>
                        </div>
                    </div>

                    <div class="mt-4 pt-3 border-top border-light-subtle d-flex justify-content-end gap-2">
                        <button type="submit" class="btn btn-verde-menta rounded-pill px-4 fw-bold shadow-sm small">
                            <i class="bi bi-cloud-arrow-up-fill me-1"></i> Guardar Evento en Sistema
                        </button>
                    </div>

                </form:form>

            </div>
        </div>
    </div>

</main>