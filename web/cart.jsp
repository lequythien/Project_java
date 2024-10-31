<%-- 
    Document   : cart
    Created on : Sep 30, 2024, 10:31:58 AM
    Author     : zacub
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="MediaCenter, Template, eCommerce">
        <meta name="robots" content="all">
        <title>LQT Shop</title>
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="assets\css\bootstrap.min.css">

        <!-- Customizable CSS -->
        <link rel="stylesheet" href="assets\css\main.css">
        <link rel="stylesheet" href="assets\css\blue.css">
        <link rel="stylesheet" href="assets\css\owl.carousel.css">
        <link rel="stylesheet" href="assets\css\owl.transitions.css">
        <link rel="stylesheet" href="assets\css\animate.min.css">
        <link rel="stylesheet" href="assets\css\rateit.css">
        <link rel="stylesheet" href="assets\css\bootstrap-select.min.css">

        <!-- Icons/Glyphs -->
        <link rel="stylesheet" href="assets\css\font-awesome.css">

        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <%@include file="./inc/header.jsp"%>

        <div class="body-content outer-top-xs">
            <div class="container">
                <div class="row ">
                    <div class="shopping-cart">
                        <div class="shopping-cart-table ">
                            <div class="table-responsive">
                                <table class="table">
                                    <!-- thead -->
                                    <thead>
                                        <tr>
                                            <th class="cart-romove item">Remove</th>
                                            <th class="cart-description item">Image</th>
                                            <th class="cart-product-name item">Product Name</th>
                                            <th class="cart-price item">Price</th>
                                            <th class="cart-qty item">Quantity</th>
                                            <th class="cart-sub-total item">Subtotal</th>
                                        </tr>
                                    </thead>
                                    <!-- /thead -->
                                    <tfoot>
                                        <tr>
                                            <td colspan="7">
                                                <div class="shopping-cart-btn">
                                                    <span class="">
                                                        <a href="HomeServlet" class="btn btn-upper btn-primary outer-left-xs">Continue Shopping</a>
                                                    </span>
                                                </div><!-- /.shopping-cart-btn -->
                                            </td>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <c:forEach items="${cart}" var="orderItem">
                                            <tr>
                                                <td class="romove-item">
                                                    <form action="CartServlet" method="post">
                                                        <input type="hidden" name="action" value="delete"/>
                                                        <input type="hidden" name="productId" value="${orderItem.productId}"/>
                                                        <button type="submit" class="fa-regular fa-circle-xmark"><i class="fa fa-trash-o"></i></button>
                                                    </form>
                                                </td>
                                                <td class="cart-image">
                                                    <a class="entry-thumbnail" href="#">
                                                        <img src="${orderItem.product.thumbnail}" alt="">
                                                    </a>
                                                </td>
                                                <td class="cart-product-name-info">
                                                    <h4 class='cart-product-description'><a href="#">${orderItem.product.name}</a></h4>
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <div class="rating rateit-small"></div>
                                                        </div>
<!--                                                                                                                <div class="col-sm-8">
                                                                                                                    <div class="reviews">
                                                                                                                        (123 Reviews)
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div><!-- /.row -->
                                                </td>

                                                <td class="cart-price"><span class="cart-price">$${orderItem.price}</span></td>


                                                <td class="cart-product-quantity">
                                                    <form class="quant-input" action="CartServlet" method="post">
                                                        <input type="hidden" name="action" value="update"/>
                                                        <input type="hidden" name="productId" value="${orderItem.productId}"/>
                                                        <input onchange="this.form.submit()" name="quantity" type="number" value="${orderItem.quantity}" min="1">
                                                    </form>
                                                </td>

                                                <td class="cart-product-sub-total"><span class="cart-sub-total-price">$${orderItem.price * orderItem.quantity}</span></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody><!-- /tbody -->
                                </table><!-- /table -->
                            </div>
                        </div><!-- /.shopping-cart-table -->				

                        <div class="col-md-4 col-sm-12 estimate-ship-tax">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>
                                            <span class="estimate-title">Estimate shipping and tax</span>
                                            <p>Enter your destination to get shipping and tax.</p>
                                        </th>
                                    </tr>
                                </thead><!-- /thead -->
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="form-group">
                                                <label class="info-title control-label">Country <span>*</span></label>
                                                <select class="form-control unicase-form-control selectpicker">
                                                    <option>--Select options--</option>
                                                    <option>India</option>
                                                    <option>SriLanka</option>
                                                    <option>united kingdom</option>
                                                    <option>saudi arabia</option>
                                                    <option>united arab emirates</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label class="info-title control-label">State/Province <span>*</span></label>
                                                <select class="form-control unicase-form-control selectpicker">
                                                    <option>--Select options--</option>
                                                    <option>TamilNadu</option>
                                                    <option>Kerala</option>
                                                    <option>Andhra Pradesh</option>
                                                    <option>Karnataka</option>
                                                    <option>Madhya Pradesh</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label class="info-title control-label">Zip/Postal Code</label>
                                                <input type="text" class="form-control unicase-form-control text-input" placeholder="">
                                            </div>
                                            <div class="pull-right">
                                                <button type="submit" class="btn-upper btn btn-primary">GET A QOUTE</button>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div><!-- /.estimate-ship-tax -->

                        <div class="col-md-4 col-sm-12 estimate-ship-tax">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>
                                            <span class="estimate-title">Discount Code</span>
                                            <p>Enter your coupon code if you have one..</p>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" class="form-control unicase-form-control text-input" placeholder="You Coupon..">
                                            </div>
                                            <div class="clearfix pull-right">
                                                <button type="submit" class="btn-upper btn btn-primary">APPLY COUPON</button>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody><!-- /tbody -->
                            </table><!-- /table -->
                        </div><!-- /.estimate-ship-tax -->

                        <div class="col-md-4 col-sm-12 cart-shopping-total">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>
                                            <div class="cart-sub-total">
                                                Subtotal<span class="inner-left-md">$${total}</span>
                                            </div>
                                            <div class="cart-sub-total">
                                                Freeshiping<span class="inner-left-md">Free</span>
                                            </div>
                                            <div class="cart-grand-total">
                                                Grand Total<span class="inner-left-md">$${total}</span>
                                            </div>
                                        </th>
                                    </tr>
                                </thead><!-- /thead -->
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="cart-checkout-btn pull-right">
                                                <a href="CheckoutServlet" class="btn btn-primary checkout-btn">Proceed to checkout</a>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody><!-- /tbody -->
                            </table><!-- /table -->
                        </div><!-- /.cart-shopping-total -->			
                    </div><!-- /.shopping-cart -->
                </div> <!-- /.row -->

                <!-- ============================================== BRANDS CAROUSEL ============================================== -->
                <div id="brands-carousel" class="logo-slider wow fadeInUp">

                    <div class="logo-slider-inner">	
                        <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
                            <div class="item m-t-15">
                                <a href="#" class="image">
                                    <img data-echo="assets/images/brands/brand1.png" src="assets\images\blank.gif" alt="">
                                </a>	
                            </div><!--/.item-->

                            <div class="item m-t-10">
                                <a href="#" class="image">
                                    <img data-echo="assets/images/brands/brand2.png" src="assets\images\blank.gif" alt="">
                                </a>	
                            </div><!--/.item-->

                            <div class="item">
                                <a href="#" class="image">
                                    <img data-echo="assets/images/brands/brand3.png" src="assets\images\blank.gif" alt="">
                                </a>	
                            </div><!--/.item-->

                            <div class="item">
                                <a href="#" class="image">
                                    <img data-echo="assets/images/brands/brand4.png" src="assets\images\blank.gif" alt="">
                                </a>	
                            </div><!--/.item-->

                            <div class="item">
                                <a href="#" class="image">
                                    <img data-echo="assets/images/brands/brand5.png" src="assets\images\blank.gif" alt="">
                                </a>	
                            </div><!--/.item-->

                            <div class="item">
                                <a href="#" class="image">
                                    <img data-echo="assets/images/brands/brand6.png" src="assets\images\blank.gif" alt="">
                                </a>	
                            </div><!--/.item-->

                            <div class="item">
                                <a href="#" class="image">
                                    <img data-echo="assets/images/brands/brand2.png" src="assets\images\blank.gif" alt="">
                                </a>	
                            </div><!--/.item-->

                            <div class="item">
                                <a href="#" class="image">
                                    <img data-echo="assets/images/brands/brand4.png" src="assets\images\blank.gif" alt="">
                                </a>	
                            </div><!--/.item-->

                            <div class="item">
                                <a href="#" class="image">
                                    <img data-echo="assets/images/brands/brand1.png" src="assets\images\blank.gif" alt="">
                                </a>	
                            </div><!--/.item-->

                            <div class="item">
                                <a href="#" class="image">
                                    <img data-echo="assets/images/brands/brand5.png" src="assets\images\blank.gif" alt="">
                                </a>	
                            </div><!--/.item-->
                        </div><!-- /.owl-carousel #logo-slider -->
                    </div><!-- /.logo-slider-inner -->

                </div><!-- /.logo-slider -->
                <!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
        </div><!-- /.body-content -->

        <%@include file="./inc/footer.jsp"%>
    </body>
</html>
