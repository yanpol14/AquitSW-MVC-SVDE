<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="componentes/header.jsp" />

<main class="catalogo-section">
    <div class="container py-5">

        <div class="text-center mb-5">
            <span class="badge badge-catalogo mb-2 px-3 py-2 text-uppercase fw-bold">Alianzas comerciales</span>
            <h1 class="display-4 fw-bold mb-3">Impulsa tu Marca con Nosotros</h1>
            <p class="lead text-muted mx-auto" style="max-width: 700px;">
                Conecta tu negocio con miles de amantes del entretenimiento en vivo. Diseñamos espacios publicitarios integrados de alto impacto.
            </p>
        </div>

        <div class="row g-4 text-center mb-5 justify-content-center">
            <div class="col-md-4">
                <div class="p-4 bg-white bg-opacity-75 rounded-4 border border-light-subtle shadow-sm">
                    <i class="bi bi-graph-up-arrow text-success fs-1 mb-2 d-block"></i>
                    <h4 class="fw-bold text-dark">Mayor Alcance</h4>
                    <p class="text-muted small mb-0">Más de 50,000 visitas mensuales buscando eventos activamente.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-4 bg-white bg-opacity-75 rounded-4 border border-light-subtle shadow-sm">
                    <i class="bi bi-target text-success fs-1 mb-2 d-block"></i>
                    <h4 class="fw-bold text-dark">Público Segmentado</h4>
                    <p class="text-muted small mb-0">Llega directamente a jóvenes y adultos interesados en cultura y ocio.</p>
                </div>
            </div>
        </div>

        <div class="row g-4 justify-content-center">
            <div class="col-12 col-md-5">
                <div class="card h-100 p-4 border border-light-subtle shadow-sm">
                    <div class="card-body d-flex flex-column text-center">
                        <i class="bi bi-layout-three-columns text-success fs-1 mb-3"></i>
                        <h3 class="card-title fw-bold">Banner Principal</h3>
                        <p class="card-text text-muted small flex-grow-1">Tu marca en la vitrina más importante: la rotación del banner de inicio que ven todos los usuarios al ingresar.</p>
                        <a href="contacto.html?motivo=publicidad" class="btn btn-success rounded-pill fw-bold w-100 mt-4 py-2">Cotizar Banner</a>
                    </div>
                </div>
            </div>

            <div class="col-12 col-md-5">
                <div class="card h-100 p-4 border border-light-subtle shadow-sm">
                    <div class="card-body d-flex flex-column text-center">
                        <i class="bi bi-grid-3x3-gap text-success fs-1 mb-3"></i>
                        <h3 class="card-title fw-bold">Tarjetas Destacadas</h3>
                        <p class="card-text text-muted small flex-grow-1">Aparece intercalado de manera orgánica como un evento auspiciado dentro de las categorías del catálogo.</p>
                        <a href="contacto.html?motivo=publicidad" class="btn btn-success rounded-pill fw-bold w-100 mt-4 py-2">Cotizar Tarjeta</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
</main>

<jsp:include page="componentes/footer.jsp" />