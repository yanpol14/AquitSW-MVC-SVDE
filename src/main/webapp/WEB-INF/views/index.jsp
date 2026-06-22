<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="componentes/header.jsp" />

<main class="w-100 container-fluid p-0">

    <div id="carouselExampleCaptions" class="carousel slide shadow-sm position-relative" data-bs-ride="carousel" data-bs-interval="3000">

        <div class="carousel-indicators mb-4">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>

        <div class="carousel-inner">

            <div class="carousel-item active position-relative">
                <img src="/imagenes/banners/banner1.jpg" class="d-block w-100" alt="Banner 1" style="min-height: 450px; object-fit: cover; filter: brightness(0.6);">

                <div class="carousel-caption-container text-start d-flex flex-column justify-content-center h-100 bottom-0 start-0 ps-5">
                    <div class="mb-3">
                        <span class="badge text-white px-3 py-2 text-uppercase fw-bold" style="background: linear-gradient(90deg, #ff007f, #8a2be2); letter-spacing: 1px;">
                            Próximos Eventos
                        </span>
                    </div>
                    <h1 class="display-3 fw-bold text-white mb-3" style="line-height: 1.1;">
                        El entretenimiento que <span style="background: linear-gradient(90deg, #00f2fe, #4facfe, #ff007f); -webkit-background-clip: text; -webkit-text-fill-color: transparent;">mereces</span>
                    </h1>
                    <p class="lead text-light opacity-75 mb-4 fs-5">
                        Explora los mejores eventos del momento y reserva en segundos.
                    </p>
                    <div class="d-flex gap-3 flex-wrap">
                        <a href="catalogo.jsp" class="btn btn-lg text-white fw-bold px-4 py-2 shadow-sm" style="background-color: #b5269c; border: none;">
                            <i class="bi bi-film me-2"></i> VER CATÁLOGO
                        </a>
                        <a href="contactar.jsp" class="btn btn-lg btn-outline-light text-white px-4 py-2" style="background-color: rgba(255, 255, 255, 0.1); border-color: rgba(255,255,255,0.3);">
                            Contactar
                        </a>
                    </div>
                </div>
            </div>

            <div class="carousel-item position-relative">
                <img src="/imagenes/banners/banner2.jpg" class="d-block w-100" alt="Banner 2" style="min-height: 450px; object-fit: cover; filter: brightness(0.6);">
                <div class="carousel-caption-container text-start d-flex flex-column justify-content-center h-100 bottom-0 start-0 ps-5">
                    <h1 class="display-3 fw-bold text-white mb-3">Los mejores Conciertos</h1>
                    <p class="lead text-light opacity-75 mb-4 fs-5">Vive la música en vivo con tus artistas favoritos.</p>
                    <div class="d-flex gap-3">
                        <a href="catalogo.jsp" class="btn btn-lg text-white fw-bold px-4 py-2" style="background-color: #b5269c; border: none;">VER CATÁLOGO</a>
                    </div>
                </div>
            </div>
        </div>

        <button class="carousel-control-prev btn-carrusel-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="icono-circular"><i class="bi bi-chevron-left"></i></span>
            <span class="visually-hidden">Previous</span>
        </button>

        <button class="carousel-control-next btn-carrusel-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="icono-circular"><i class="bi bi-chevron-right"></i></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <section class="container my-5">
        <div class="row align-items-center justify-content-center">

            <div class="col-md-10 col-lg-5 mb-4 mb-lg-0 text-center text-lg-start">
                <h1 class="fw-bold text-danger mb-3">¡Bienvenido!</h1>
                <p class="lead mb-4 text-secondary">
                    Tu próxima experiencia comienza aquí. Encuentra y compra entradas para los mejores eventos de forma rápida, sencilla y segura. Descubre conciertos, espectáculos y actividades únicas en una sola plataforma.
                </p>

                <ul class="list-group list-group-flush mb-4 d-inline-block text-start w-100" style="max-width: 450px;">
                    <li class="list-group-item bg-transparent px-0"><i class="bi bi-check-circle-fill text-success me-2"></i>Compra rápida y segura</li>
                    <li class="list-group-item bg-transparent px-0"><i class="bi bi-check-circle-fill text-success me-2"></i>Eventos para todos los gustos</li>
                    <li class="list-group-item bg-transparent px-0"><i class="bi bi-check-circle-fill text-success me-2"></i>Acceso digital inmediato</li>
                    <li class="list-group-item bg-transparent px-0"><i class="bi bi-check-circle-fill text-success me-2"></i>Promociones exclusivas</li>
                </ul>

                <div class="mt-2">
                    <a href="catalogo.jsp" class="btn btn-dark btn-lg fw-bold px-4 py-2 shadow-sm">Explora nuestro CATÁLOGO</a>
                </div>
            </div>

            <div class="col-lg-1 d-none d-lg-block"></div>

            <div class="col-md-10 col-lg-5 text-center">
                <img src="img/publicidad.png" class="img-fluid rounded shadow-lg" alt="Publicidad TicketLandia" style="max-height: 450px; object-fit: cover;">
            </div>

        </div>
    </section>

    <section class="promo text-center py-5 bg-light rounded mb-5">
        <h2 class="fw-bold text-danger">Tu próximo evento comienza aquí</h2>
        <p class="lead text-warning">Compra entradas para conciertos, teatro, deportes y mucho más en una plataforma rápida, segura y confiable.</p>
        <a class="btn btn-panaderia btn-lg fw-bold shadow" href="catalogo.jsp">Ver Eventos Disponibles</a>
    </section>

    <section class="container mb-5">
        <div class="text-center mb-4">
            <h2 class="fw-bold text-danger">Eventos Destacados</h2>
            <p class="text-muted">Elige una categoría para los eventos más populares...</p>
        </div>

        <div class="d-flex justify-content-center gap-2 mb-4 flex-wrap">

            <a href="/index?idCategoria=0"
               class="btn btn-outline-warning fw-bold ${param.idCategoria == null || param.idCategoria == 0 ? 'active' : ''}">
               Todos
            </a>

            <c:forEach items="${listCategorias}" var="cat">
                <a href="/index?idCategoria=${cat.id_categoria}"
                   class="btn btn-outline-warning fw-bold ${param.idCategoria == cat.id_categoria ? 'active' : ''}">
                   ${cat.nombre}
                </a>
            </c:forEach>

        </div>

       <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4 justify-content-center mb-5">
           <c:forEach items="${listEvento}" var="eventos">
               <div class="col">
                   <div class="card h-100 shadow-sm border-0 rounded-3 overflow-hidden bg-white">
                       <img src="${eventos.imagen_url}" class="card-img-top" alt="${eventos.titulo}" style="height: 220px; object-fit: cover;">
                       <div class="card-body d-flex flex-column p-3">
                           <div class="d-flex justify-content-start mb-2">
                               <span class="badge bg-primary-subtle text-primary border border-primary-subtle rounded-pill px-3 py-1 fw-semibold text-wrap text-end">
                                   ${eventos.categoria.nombre}
                               </span>
                           </div>
                           <h5 class="card-title fw-bold fs-6 text-dark mb-2">${eventos.titulo}</h5>
                           <p class="card-text text-muted small mb-1">
                               <i class="bi bi-calendar3 me-1"></i> ${eventos.fecha_evento}
                           </p>
                           <p class="fw-bold text-danger fs-5 mt-auto mb-3">S/ ${eventos.precio}</p>
                           <a href="#" class="btn btn-warning text-dark fw-bold btn-sm w-100 rounded-pill py-2">
                               Adquirir Entradas
                           </a>
                       </div>
                   </div>
               </div>
           </c:forEach>
       </div>

        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4 justify-content-center" id="card-eventos">
            <%-- Los eventos se cargarán dinámicamente mediante jsgeneral.js --%>
        </div>
    </section>
</main>

<%-- Inclusión del Footer --%>
<jsp:include page="componentes/footer.jsp" />