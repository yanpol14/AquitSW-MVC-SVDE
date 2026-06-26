<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="componentes/header.jsp" />

<main class="catalogo-section">
    <div class="container py-5">

        <div class="text-center mb-5">
            <span class="badge badge-catalogo mb-2 px-3 py-2 text-uppercase fw-bold">Centro de ayuda</span>
            <h1 class="display-4 fw-bold mb-3">Estamos para Ayudarte</h1>
            <p class="lead text-muted mx-auto" style="max-width: 600px;">
                ¿Tienes dudas sobre tus entradas o quieres anunciar con nosotros? Escríbenos y te responderemos a la brevedad.
            </p>
        </div>

        <div class="row g-5 justify-content-center">
            <div class="col-12 col-lg-6">
                <div class="p-4 rounded-4 shadow-sm bg-white bg-opacity-75 border border-light-subtle">
                    <h4 class="fw-bold mb-4 text-dark"><i class="bi bi-envelope-fill text-success me-2"></i>Enviar Mensaje</h4>

                    <div id="alerta-contacto" class="alert alert-success d-none mb-4" role="alert">
                        <i class="bi bi-check-circle-fill me-2"></i>¡Mensaje enviado con éxito! Nos comunicaremos contigo pronto.
                    </div>

                    <form id="form-contacto-general">
                        <div class="mb-3">
                            <label class="form-label small fw-bold text-secondary">Nombre Completo</label>
                            <input type="text" class="form-control" required placeholder="Ej. Ana García">
                        </div>
                        <div class="mb-3">
                            <label class="form-label small fw-bold text-secondary">Correo Electrónico</label>
                            <input type="email" class="form-control" required placeholder="correo@ejemplo.com">
                        </div>
                        <div class="mb-3">
                            <label class="form-label small fw-bold text-secondary">Motivo del Mensaje</label>
                            <select id="select-motivo-contacto" class="form-select" required>
                                <option value="soporte">Soporte / Problema con Entradas</option>
                                <option value="publicidad">Publicidad y Alianzas</option>
                                <option value="sugerencia">Sugerencias</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label small fw-bold text-secondary">Mensaje o Detalles</label>
                            <textarea class="form-control" rows="4" required placeholder="Escribe aquí tu consulta..."></textarea>
                        </div>
                        <button type="submit" class="btn btn-success w-100 rounded-pill fw-bold py-2 shadow-sm">Enviar Mensaje</button>
                    </form>
                </div>
            </div>

            <div class="col-12 col-lg-5">
                <h4 class="fw-bold mb-4 text-dark"><i class="bi bi-question-circle-fill text-success me-2"></i>Preguntas Frecuentes</h4>

                <div class="accordion shadow-sm rounded-4 overflow-hidden" id="acordeonFaq">
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button fw-bold" type="button" data-bs-toggle="collapse" data-bs-target="#faq1">
                                ¿Cómo recibo mis entradas digitales?
                            </button>
                        </h2>
                        <div id="faq1" class="accordion-collapse collapse show" data-bs-parent="#acordeonFaq">
                            <div class="accordion-body text-muted small">
                                Una vez confirmado tu pago, las entradas se envían automáticamente a tu correo electrónico registrado y se guardan en tu sección de "Pedidos".
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed fw-bold" type="button" data-bs-toggle="collapse" data-bs-target="#faq2">
                                ¿Puedo solicitar devoluciones?
                            </button>
                        </h2>
                        <div id="faq2" class="accordion-collapse collapse" data-bs-parent="#acordeonFaq">
                            <div class="accordion-body text-muted small">
                                Las devoluciones están sujetas a las políticas de cada organizador del evento. Puedes escribirnos seleccionando el motivo "Soporte" para evaluar tu caso.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</main>

<jsp:include page="componentes/footer.jsp" />