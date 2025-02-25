<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--Search pop up-->
<div class="search-popup">
    <div class="search-popup-container">

        <form role="search" method="get" class="search-form" action="">
            <input type="search" id="search-form" class="search-field" placeholder="Type and press enter" value="" name="s">
            <button type="submit" class="search-submit"><svg class="search"><use xlink:href="#search"></use></svg></button>
        </form>

        <h5 class="cat-list-title">Browse Categories</h5>

        <ul class="cat-list">
            <li class="cat-list-item">
                <a href="#" title="Mobile Phones">Mobile Phones</a>
            </li>
            <li class="cat-list-item">
                <a href="#" title="Smart Watches">Smart Watches</a>
            </li>
            <li class="cat-list-item">
                <a href="#" title="Headphones">Headphones</a>
            </li>
            <li class="cat-list-item">
                <a href="#" title="Accessories">Accessories</a>
            </li>
            <li class="cat-list-item">
                <a href="#" title="Monitors">Monitors</a>
            </li>
            <li class="cat-list-item">
                <a href="#" title="Speakers">Speakers</a>
            </li>
            <li class="cat-list-item">
                <a href="#" title="Memory Cards">Memory Cards</a>
            </li>
        </ul>

    </div>
</div>
<header id="header" class="site-header header-scrolled position-fixed text-black bg-light">
    <nav id="header-nav" class="navbar navbar-expand-lg px-3 mb-3">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">
                <img src="images/main-logo.png" class="logo">
            </a>
            <button class="navbar-toggler d-flex d-lg-none order-3 p-2" type="button" data-bs-toggle="offcanvas" data-bs-target="#bdNavbar" aria-controls="bdNavbar" aria-expanded="false" aria-label="Toggle navigation">
                <svg class="navbar-icon">
                <use xlink:href="#navbar-icon"></use>
                </svg>
            </button>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar" aria-labelledby="bdNavbarOffcanvasLabel">
                <div class="offcanvas-header px-4 pb-0">
                    <a class="navbar-brand" href="index.html">
                        <img src="images/main-logo.png" class="logo">
                    </a>
                    <button type="button" class="btn-close btn-close-black" data-bs-dismiss="offcanvas" aria-label="Close" data-bs-target="#bdNavbar"></button>
                </div>
                <div class="offcanvas-body">
                    <ul id="navbar" class="navbar-nav text-uppercase justify-content-end align-items-center flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link me-4 active" href="${pageContext.request.contextPath}/home">Home</a>
                        </li>
                        <c:if test="${sessionScope.account == null}">
                            <li class="nav-item">
                                <a class="nav-link me-4" href="authen?action=login">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link me-4" href="authen?action=register">Register</a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.account != null}">
                            <li class="nav-item">
                                <a class="nav-link me-4" href="authen?action=login">${sessionScope.account.customerName}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link me-4" href="authen?action=logout">Log Out</a>
                            </li>
                        </c:if>

                        <li class="nav-item">
                            <div class="user-items ps-5">
                                <ul class="d-flex justify-content-end list-unstyled">
                                    <li class="search-item pe-3">
                                        <a href="#" class="search-button">
                                            <svg class="search">
                                            <use xlink:href="#search"></use>
                                            </svg>
                                        </a>
                                    </li>
                                    <li class="pe-3">
                                        <c:if test="${sessionScope.account.roleId == 2}">
                                            <a 
                                                href="${pageContext.request.contextPath}/dashboard">
                                                <svg class="user">
                                                <use xlink:href="#user"></use>
                                                </svg>
                                            </a>
                                        </c:if>
                                        <c:if test="${sessionScope.account.roleId == 1}">
                                            <a 
                                                href="${pageContext.request.contextPath}/admin/dashboard">
                                                <svg class="user">
                                                <use xlink:href="#user"></use>
                                                </svg>
                                            </a>
                                        </c:if>
                                    </li>
                                    <li>
                                        <a href="cart.html">
                                            <svg class="cart">
                                            <use xlink:href="#cart"></use>
                                            </svg>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>
