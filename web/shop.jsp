<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="pageSize" value="9" />

<!DOCTYPE html>
<html>
    <head>
        <title>Lê Văn Giang</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta name="description" content="">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="../npm/swiper%409/swiper-bundle.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
        <link href="../css2?family=Jost:wght@300;400;500&family=Lato:wght@300;400;700&display=swap" rel="stylesheet">
        <!-- script
        ================================================== -->
        <script src="js/modernizr.js"></script>
    </head>
    <body>
        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="search" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 32 32">
        <path fill="currentColor" d="M19 3C13.488 3 9 7.488 9 13c0 2.395.84 4.59 2.25 6.313L3.281 27.28l1.439 1.44l7.968-7.969A9.922 9.922 0 0 0 19 23c5.512 0 10-4.488 10-10S24.512 3 19 3zm0 2c4.43 0 8 3.57 8 8s-3.57 8-8 8s-8-3.57-8-8s3.57-8 8-8z"></path>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="user" viewbox="0 0 16 16">
        <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"></path>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="cart" viewbox="0 0 16 16">
        <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path>
    </symbol>
    <svg xmlns="http://www.w3.org/2000/svg" id="chevron-left" viewbox="0 0 16 16">
    <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"></path>
    </svg>
    <symbol xmlns="http://www.w3.org/2000/svg" id="chevron-right" viewbox="0 0 16 16">
        <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"></path>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="cart-outline" viewbox="0 0 16 16">
        <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="facebook" viewbox="0 0 24 24">
        <path fill="currentColor" d="M9.198 21.5h4v-8.01h3.604l.396-3.98h-4V7.5a1 1 0 0 1 1-1h3v-4h-3a5 5 0 0 0-5 5v2.01h-2l-.396 3.98h2.396v8.01Z"></path>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="youtube" viewbox="0 0 32 32">
        <path fill="currentColor" d="M29.41 9.26a3.5 3.5 0 0 0-2.47-2.47C24.76 6.2 16 6.2 16 6.2s-8.76 0-10.94.59a3.5 3.5 0 0 0-2.47 2.47A36.13 36.13 0 0 0 2 16a36.13 36.13 0 0 0 .59 6.74a3.5 3.5 0 0 0 2.47 2.47c2.18.59 10.94.59 10.94.59s8.76 0 10.94-.59a3.5 3.5 0 0 0 2.47-2.47A36.13 36.13 0 0 0 30 16a36.13 36.13 0 0 0-.59-6.74ZM13.2 20.2v-8.4l7.27 4.2Z"></path>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="twitter" viewbox="0 0 256 256">
        <path fill="currentColor" d="m245.66 77.66l-29.9 29.9C209.72 177.58 150.67 232 80 232c-14.52 0-26.49-2.3-35.58-6.84c-7.33-3.67-10.33-7.6-11.08-8.72a8 8 0 0 1 3.85-11.93c.26-.1 24.24-9.31 39.47-26.84a110.93 110.93 0 0 1-21.88-24.2c-12.4-18.41-26.28-50.39-22-98.18a8 8 0 0 1 13.65-4.92c.35.35 33.28 33.1 73.54 43.72V88a47.87 47.87 0 0 1 14.36-34.3A46.87 46.87 0 0 1 168.1 40a48.66 48.66 0 0 1 41.47 24H240a8 8 0 0 1 5.66 13.66Z"></path>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="instagram" viewbox="0 0 256 256">
        <path fill="currentColor" d="M128 80a48 48 0 1 0 48 48a48.05 48.05 0 0 0-48-48Zm0 80a32 32 0 1 1 32-32a32 32 0 0 1-32 32Zm48-136H80a56.06 56.06 0 0 0-56 56v96a56.06 56.06 0 0 0 56 56h96a56.06 56.06 0 0 0 56-56V80a56.06 56.06 0 0 0-56-56Zm40 152a40 40 0 0 1-40 40H80a40 40 0 0 1-40-40V80a40 40 0 0 1 40-40h96a40 40 0 0 1 40 40ZM192 76a12 12 0 1 1-12-12a12 12 0 0 1 12 12Z"></path>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="linkedin" viewbox="0 0 24 24">
        <path fill="currentColor" d="M6.94 5a2 2 0 1 1-4-.002a2 2 0 0 1 4 .002zM7 8.48H3V21h4V8.48zm6.32 0H9.34V21h3.94v-6.57c0-3.66 4.77-4 4.77 0V21H22v-7.93c0-6.17-7.06-5.94-8.72-2.91l.04-1.68z"></path>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="nav-icon" viewbox="0 0 16 16">
        <path d="M14 10.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-7a.5.5 0 0 0 0 1h7a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0 0 1h11a.5.5 0 0 0 .5-.5z"></path>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="close" viewbox="0 0 16 16">
        <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"></path>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="navbar-icon" viewbox="0 0 16 16">
        <path d="M14 10.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-7a.5.5 0 0 0 0 1h7a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0 0 1h11a.5.5 0 0 0 .5-.5z"></path>
    </symbol>
    </svg>

    <!--header--> 
    <jsp:include page="header-homepage.jsp"></jsp:include>

        <!--Banner-->
    <jsp:include page="banner-homepage.jsp"></jsp:include>

        <div class="shopify-grid padding-large">
            <div class="container">
                <div class="row">
                    <main class="col-md-9">
<!--                        <div class="filter-shop d-flex justify-content-between">
                            <div class="showing-product">
                            </div>
                            <div class="sort-by">
                                <select id="input-sort" class="form-control" data-filter-sort="" data-filter-order="">
                                    <option value="">Default sorting</option>
                                    <option value="">Name (A - Z)</option>
                                    <option value="">Name (Z - A)</option>
                                    <option value="">Price (Low-High)</option>
                                    <option value="">Price (High-Low)</option>
                                    <option value="">Rating (Highest)</option>
                                    <option value="">Rating (Lowest)</option>
                                    <option value="">Model (A - Z)</option>
                                    <option value="">Model (Z - A)</option>   
                                </select>
                            </div>
                        </div>-->
                        <div class="product-content product-store d-flex justify-content-between flex-wrap">
                        <c:forEach items="${listProduct}" 
                                   var="product" 
                                   begin="${(pageControl.page - 1) * pageSize}"
                                   end="${pageControl.page * pageSize - 1}">
                            <div class="col-lg-4 col-md-6">
                                <div class="product-card position-relative pe-3 pb-3">
                                    <div class="image-holder">
                                        <!--<img src="${product.image}" alt="product-item" class="img-fluid">-->
                                        <a href="product-details?id=${product.productID}">
                                            <img src="${product.image}" alt="product-item" class="img-fluid">
                                        </a>
                                    </div>
                                    <div class="cart-concern position-absolute">
                                        <div class="cart-button d-flex">
                                            <div class="btn-left">
                                                <a href="#" class="btn btn-medium btn-black">Add to Cart</a>
                                                <svg class="cart-outline position-absolute">
                                                <use xlink:href="#cart-outline"></use>
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-detail d-flex justify-content-between pt-3 pb-3">
                                        <h3 class="card-title text-uppercase">
                                            <a href="#">${product.getProductName()}</a>
                                        </h3>
                                        <span class="item-price text-primary">$ ${product.price}</span>
                                    </div>
                                </div>                  
                            </div>
                        </c:forEach>

                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item ${pageControl.page <= 1 ? 'disabled' : ''}">
                                        <a class="page-link" href="?page=${pageControl.page - 1}" tabindex="-1">Previous</a>
                                    </li>
                                    <c:forEach var="pageNumber" begin="1" end="${pageControl.totalPage}">
                                        <li class="page-item ${pageNumber == pageControl.page ? 'active' : ''}">
                                            <a class="page-link" href="?page=${pageNumber}">${pageNumber}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="page-item ${pageControl.page >= pageControl.totalPage ? 'disabled' : ''}" >
                                        <a class="page-link" href="?page=${pageControl.page + 1}">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </main>
                <aside class="col-md-3">
                    <div class="sidebar">
                        <div class="widget-menu">
                            <div class="widget-search-bar">
                                <form role="search" method="get" class="d-flex" action="home">
                                    <input type="text" name="action" value="search" style="display:none"/>
                                    <input class="search-field" placeholder="Search" type="search" name="keyword">
                                    <div class="search-icon bg-dark">
                                        <a href="#" onclick="return this.closest('form').submit()">
                                            <svg class="search text-light">
                                            <use xlink:href="#search"></use>
                                            </svg>
                                        </a>
                                    </div>
                                </form>
                            </div> 
                        </div>
                        <div class="widget-product-categories pt-5">
                            <h5 class="widget-title text-decoration-underline text-uppercase">Categories</h5>
                            <ul class="product-categories sidebar-list list-unstyled">
                                <li class="cat-item">
                                    <a href="http://localhost:9999/High-endTech/home">All</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                </aside>
            </div>
        </div>
    </div>

    <!--Shop our insta and footer-->
    <jsp:include page="footer-homepage.jsp"></jsp:include>
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="../npm/swiper/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="js/plugins.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
</body>
</html>