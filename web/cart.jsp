<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ministore</title>
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

        <section class="shopify-cart padding-large">
            <div class="container">
                <div class="row">
                    <div class="cart-table">
                        <div class="cart-header">
                            <div class="row d-flex text-uppercase">
                                <h3 class="cart-title col-lg-4 pb-3">Product</h3>
                                <h3 class="cart-title col-lg-3 pb-3">Quantity</h3>
                                <h3 class="cart-title col-lg-4 pb-3">Subtotal</h3>
                            </div>
                        </div>
                    <c:forEach items="${cart.listOrderDetails}"
                               var="orderDetails" varStatus="status">
                        <c:forEach items="${listProduct}" var="productInList">
                            <c:if test="${productInList.productID == orderDetails.productId}">
                                <c:set var="currentProduct" value="${productInList}"></c:set>
                            </c:if>
                        </c:forEach>
                        <div class="cart-item border-top border-bottom padding-small">
                            <div class="row align-items-center"> 
                                <div class="col-lg-4 col-md-3">
                                    <div class="cart-info d-flex flex-wrap align-items-center mb-4">
                                        <div class="col-lg-5">
                                            <div class="card-image">
                                                <img src="${currentProduct.image}" alt="cloth" class="img-fluid">
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card-detail ps-3">
                                                <h3 class="card-title text-uppercase">
                                                    <a href="#">${currentProduct.productName}</a>
                                                </h3>
                                                <div class="card-price">
                                                    <span class="money text-primary" >${currentProduct.price} ₫</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-7">
                                    <form action="check-out?action=change-quantity" method ="POST">
                                        <input type="hidden"
                                               name="id" 
                                               value="${currentProduct.productID}" />
                                        <div class="row d-flex">
                                            <div class="col-md-6">
                                                <div class="qty-field">
                                                    <div class="qty-number d-flex">
                                                        <button type="button" class="fa fa-minus qty-btn"  onclick="adjustQuantity(this, -1)">-</button>
                                                        <input class="spin-number-output bg-light no-margin" name="quantity" type="text" readonly="" value="${orderDetails.quantity}">
                                                        <button type="button" class="fa fa-plus qty-btn" onclick="adjustQuantity(this, 1)">+</button>

                                                    </div>
                                                    <div class="regular-price"></div>
                                                    <div class="quantity-output text-center bg-primary"></div>
                                                </div>
                                            </div>
                                    </form>
                                    <div class="col-md-4">
                                        <div class="total-price">
                                            <span class="money text-primary">${currentProduct.price * orderDetails.quantity} ₫</span>
                                        </div>
                                    </div>   
                                </div>             
                            </div>
                            <div class="col-lg-1 col-md-2">
                                <form action="check-out?action=delete&id=${currentProduct.productID}" method="POST">
                                    <div class="cart-remove">
                                        <a href="#" onclick="this.closest('form').submit()">
                                            <svg class="close" width="38px">
                                            <use xlink:href="#close"></use>
                                            </svg>
                                        </a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="cart-totals bg-grey padding-medium">
                <h2 class="display-7 text-uppercase text-dark pb-4">Cart Totals</h2>
                <div class="total-price pb-5">
                    <table cellspacing="0" class="table text-uppercase">
                        <tbody>
                            <tr class="order-total pt-2 pb-2 border-bottom">
                                <th>Total</th>
                                <td data-title="Total">
                                    <span class="price-amount amount text-primary ps-5">
                                        <bdi>
                                            <span class="amount"></span></bdi>
                                    </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <form class="form-customer" action="check-out?action=purchase" method="POST">
                    <div class="button-wrap">
                        <a href="${pageContext.request.contextPath}/home" class="btn btn-black btn-medium text-uppercase me-2 mb-3 btn-rounded-none">Continue Shopping</a>
                        <a href="#" onclick="this.closest('form').submit()" class="btn btn-black btn-medium text-uppercase mb-3 btn-rounded-none">Proceed to checkout</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section> 

<!--Footer-->
<jsp:include page="footer-homepage.jsp"></jsp:include>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="../npm/swiper/swiper-bundle.min.js"></script>
<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="js/plugins.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script>
                                            window.addEventListener('DOMContentLoaded', function () {
                                                updateTotalPrice();
                                            });
                                            function adjustQuantity(element, change) {
                                                var quantityInput = element.parentNode.querySelector('.spin-number-output');
                                                var currentQuantity = parseInt(quantityInput.value);
                                                var newQuantity = currentQuantity + change;

                                                // Đảm bảo rằng số lượng mới không âm
                                                newQuantity = newQuantity < 1 ? 1 : newQuantity;
                                                quantityInput.value = newQuantity;

                                                // Cập nhật tổng giá tiền
                                                updateTotalPrice();
                                                //lấy ra form
                                                let form = element.closest("form");
                                                form.submit();
                                            }

                                            function updateTotalPrice() {
                                                var cartItems = document.querySelectorAll('.cart-item');
                                                var totalPrice = 0;

                                                cartItems.forEach(function (item) {
                                                    var price = parseFloat(item.querySelector('.card-price .money').textContent.replace('₫', '').trim());
                                                    var quantity = parseInt(item.querySelector('.spin-number-output').value);
                                                    totalPrice += price * quantity;
                                                });

                                                // Cập nhật hiển thị tổng giá tiền
                                                document.querySelector('.price-amount .amount').textContent = totalPrice.toFixed(2);
                                            }
</script>

</body>
</html>