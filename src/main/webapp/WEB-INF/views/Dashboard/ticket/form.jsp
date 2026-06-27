<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 🌟 Inclusión corregida con dos niveles hacia atrás (../../) --%>
<jsp:include page="../../componentes/Dheader.jsp" />

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">

    <div class="d-flex justify-content-between align-items-center pt-2 pb-2 mb-4 border-bottom border-light-subtle">
        <div>
            <h1 class="h2 fw-bold text-dark m-0">
                <c:choose>
                    <c:when test="${ticket.id_ticket > 0}">Modificar Ticket</c:when>
                    <c:otherwise>Emitir Nuevo Ticket</c:otherwise>
                </c:choose>
            </h1>
            <p class="text-muted small mb-0">Asigna y genera un boleto vinculando un usuario con su respectivo evento.</p>
        </div>
        <a href="/ticket/list" class="btn btn-outline-secondary rounded-pill fw-semibold btn-sm px-3">
            <i class="bi bi-arrow-left me-1"></i> Cancelar y Volver
        </a>
    </div>

    <div class="row justify-content-start">
        <div class="col-12 col-xl-8">
            <div class="bg-white rounded-4 shadow-sm border border-light-subtle p-4 p-md-5">

                <form:form action="/ticket/guardar" method="POST" modelAttribute="ticket">
                    <form:hidden path="id_ticket" />
                    <form:hidden path="fecha_compra" />

                    <div class="row g-3">
                        <%-- Detalle --%>
                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="detalle">Detalle / Concepto</label>
                            <form:input path="detalle" id="detalle" class="form-control" required="required" placeholder="Ej. Entrada VIP - Concierto" />
                        </div>

                        <%-- Selección de Evento Dinámico --%>
                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="evento.id_evento">Evento Vinculado</label>
                            <form:select path="evento.id_evento" id="evento.id_evento" class="form-select" required="required">
                                <option value="" disabled="disabled" selected="selected">Seleccione un Evento...</option>
                                <c:forEach items="${eventos}" var="ev">
                                    <option value="${ev.id_evento}" ${ev.id_evento == ticket.evento.id_evento ? 'selected' : ''}>${ev.titulo}</option>
                                </c:forEach>
                            </form:select>
                        </div>

                        <%-- Selección de Usuario Dinámico --%>
                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="usuario.id_usuario">Cliente / Usuario</label>
                            <form:select path="usuario.id_usuario" id="usuario.id_usuario" class="form-select" required="required">
                                <option value="" disabled="disabled" selected="selected">Seleccione el Cliente...</option>
                                <c:forEach items="${usuarios}" var="user">
                                    <option value="${user.id_usuario}" ${user.id_usuario == ticket.usuario.id_usuario ? 'selected' : ''}>${user.nombre} ${user.apellido_paterno}</option>
                                </c:forEach>
                            </form:select>
                        </div>

                        <%-- Cantidad --%>
                        <div class="col-12 col-md-6">
                            <label class="form-label small fw-bold text-secondary" for="cantidad">Cantidad de Boletos</label>
                            <form:input type="number" path="cantidad" id="cantidad" class="form-control" required="required" min="1" placeholder="1" />
                        </div>

                        <%-- Subtotal --%>
                        <div class="col-12 col-md-4">
                            <label class="form-label small fw-bold text-secondary" for="subtotal">Subtotal</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light text-muted">S/</span>
                                <form:input type="number" path="subtotal" id="subtotal" class="form-control" required="required" placeholder="0.00" step="0.01" />
                            </div>
                        </div>

                        <%-- Total --%>
                        <div class="col-12 col-md-4">
                            <label class="form-label small fw-bold text-secondary" for="total">Total a Pagar</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light text-muted">S/</span>
                                <form:input type="number" path="total" id="total" class="form-control" required="required" placeholder="0.00" step="0.01" />
                            </div>
                        </div>

                        <%-- Tipo Pago --%>
                        <div class="col-12 col-md-4">
                            <label class="form-label small fw-bold text-secondary" for="tipo_pago">Método de Pago</label>
                            <form:select path="tipo_pago" id="tipo_pago" class="form-select" required="required">
                                <option value="Tarjeta de Crédito">Tarjeta de Crédito</option>
                                <option value="Efectivo">Efectivo / Depósito</option>
                                <option value="Yape/Plin">Yape / Plin</option>
                            </form:select>
                        </div>

                        <%-- Estado --%>
                        <div class="col-12">
                            <label class="form-label small fw-bold text-secondary" for="estado">Estado del Boleto</label>
                            <form:select path="estado" id="estado" class="form-select" required="required">
                                <option value="true">Activo / Válido</option>
                                <option value="false">Inactivo / Cancelado</option>
                            </form:select>
                        </div>
                    </div>

                    <div class="mt-4 pt-3 border-top border-light-subtle d-flex justify-content-end gap-2">
                        <button type="submit" class="btn btn-verde-menta rounded-pill px-4 fw-bold shadow-sm small">
                            <i class="bi bi-cloud-arrow-up-fill me-1"></i> Guardar Ticket
                        </button>
                    </div>
                </form:form>

            </div>
        </div>
    </div>

</main>