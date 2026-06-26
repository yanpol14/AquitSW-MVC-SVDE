<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<jsp:include page="componentes/header.jsp" />

<main class="w-100 m-0 p-0">
    <section class="py-5 catalogo-section">
        <div class="container">

            <div class="mb-2">
                <span class="badge rounded-pill border text-uppercase fw-bold badge-catalogo">
                    Catálogo Completo
                </span>
            </div>

            <h1 class="display-5 fw-bold text-white mb-4">Todas las películas</h1>

            <div class="d-flex flex-wrap gap-2 mb-4" id="botones-generos-peliculas">
                <a href="/catalogo?id=0" class="btn rounded-pill px-4 fw-medium filter-movie-btn btn-active-pink">Todos</a>

                <c:forEach items="${listCategorias}" var="cat">
                    <a href="/catalogo?id=${cat.id_categoria}" class="btn rounded-pill bg-white bg-opacity-10 border border-secondary border-opacity-25 text-white opacity-75 px-4 filter-movie-btn">
                        ${cat.nombre}
                    </a>
                </c:forEach>
            </div>

            <div class="row g-3 align-items-center mb-5">
                <div class="col-12 col-md-5 col-lg-4">
                    <div class="position-relative">
                        <i class="bi bi-search position-absolute top-50 start-0 translate-middle-y ms-3 text-secondary opacity-75"></i>
                        <input type="text" id="input-buscar-pelicula" class="form-control rounded-pill bg-white bg-opacity-10 border border-secondary border-opacity-50 text-white ps-5 py-2 shadow-none" placeholder="Buscar por título...">
                    </div>
                </div>
                <div class="col-12 col-md-4 col-lg-3">
                    <select id="select-ordenar-pelicula" class="form-select rounded-pill bg-white bg-opacity-10 border border-secondary border-opacity-50 text-white py-2 px-4 shadow-none select-custom-catalogo">
                        <option class="bg-dark text-white" value="recientes" selected>Fecha próxima primero</option>
                        <option class="bg-dark text-white" value="az">Por nombre (A-Z)</option>
                        <option class="bg-dark text-white" value="za">Por nombre (Z-A)</option>
                    </select>
                </div>
            </div>

            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4 justify-content-start" id="contenedor-peliculas-filtradas">
                <c:forEach items="${listPorCategoria}" var="evento">
                    <div class="col">
                        <div class="card h-100 shadow-sm border-0 rounded-3 overflow-hidden bg-white">
                            <img src="${evento.imagen_url}" class="card-img-top" alt="${evento.titulo}" style="height: 220px; object-fit: cover;">
                            <div class="card-body d-flex flex-column p-3">
                                <div class="d-flex justify-content-start mb-2">
                                    <span class="badge bg-primary-subtle text-primary border border-primary-subtle rounded-pill px-3 py-1 fw-semibold">
                                        ${evento.categoria.nombre}
                                    </span>
                                </div>
                                <h5 class="card-title fw-bold fs-6 text-dark mb-2">${evento.titulo}</h5>
                                <p class="card-text text-muted small mb-1">
                                    <i class="bi bi-calendar3 me-1"></i> ${evento.fecha_evento}
                                </p>
                                <p class="fw-bold text-danger fs-5 mt-auto mb-3">S/ ${evento.precio}</p>
                                <a href="#" class="btn btn-warning text-dark fw-bold btn-sm w-100 rounded-pill py-2">
                                    Adquirir Entradas
                                </a>
                            </div>
                        </div>
                    </div>
                </c:forEach>

                <%-- Mensaje alternativo si la categoría seleccionada no tiene eventos --%>
                <c:if test="${empty listPorCategoria}">
                    <div class="col-12 text-center py-5">
                        <h4 class="text-white opacity-50">No hay eventos disponibles para esta categoría.</h4>
                    </div>
                </c:if>
            </div>

        </div>
    </section>
</main>

<jsp:include page="componentes/footer.jsp" />