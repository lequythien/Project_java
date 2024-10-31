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
        <%@include file="./inc/header.jsp" %>

        <div class="body-content outer-top-xs">
            <div class='container'>
                <div class='row single-product'>
                    <div class='col-md-3 sidebar'>
                        <div class="sidebar-module-container">
                            <div class="home-banner outer-top-n">
                                <img src="assets\images\banners\LHS-banner.jpg" alt="Image">
                            </div>		

                            <!-- ============================================== HOT DEALS ============================================== -->
                            <div class="sidebar-widget hot-deals wow fadeInUp outer-top-vs">
                                <h3 class="section-title">hot deals</h3>
                                <div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-xs">
                                    <c:forEach items="${hotProductList}" var="product" begin="6">
                                        <div class="item">
                                            <div class="products">
                                                <div class="hot-deal-wrapper">
                                                    <div class="image"> <img src="${product.thumbnail}" alt=""> </div>
                                                    <div class="sale-offer-tag"><span>SALE<br>
                                                            off</span></div>
                                                    <div class="timing-wrapper">
                                                        <div class="box-wrapper">
                                                            <div class="date box"> <span class="key">120</span> <span class="value">DAYS</span> </div>
                                                        </div>
                                                        <div class="box-wrapper">
                                                            <div class="hour box"> <span class="key">20</span> <span class="value">HRS</span> </div>
                                                        </div>
                                                        <div class="box-wrapper">
                                                            <div class="minutes box"> <span class="key">36</span> <span class="value">MINS</span> </div>
                                                        </div>
                                                        <div class="box-wrapper hidden-md">
                                                            <div class="seconds box"> <span class="key">60</span> <span class="value">SEC</span> </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- /.hot-deal-wrapper -->

                                                <div class="product-info text-left m-t-20">
                                                    <h3 class="name"><a href="ProductServlet?productId=${product.id}">${product.name}</a></h3>
                                                    <div class="rating rateit-small"></div>
                                                    <div class="product-price"> <span class="price"> $${product.price} </span> <span class="price-before-discount">$800.00</span> </div>
                                                    <!-- /.product-price --> 

                                                </div>
                                                <!-- /.product-info -->

                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <div class="add-cart-button btn-group">
                                                            <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                                            <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                                        </div>
                                                    </div>
                                                    <!-- /.action --> 
                                                </div>
                                                <!-- /.cart --> 
                                            </div>
                                        </div>
                                    </c:forEach>        	        
                                </div><!-- /.sidebar-widget -->
                            </div>
                            <!-- ============================================== HOT DEALS: END ============================================== -->					

                            <!-- ============================================== NEWSLETTER ============================================== -->
                            <div class="sidebar-widget newsletter wow fadeInUp outer-bottom-small outer-top-vs">
                                <h3 class="section-title">Newsletters</h3>
                                <div class="sidebar-widget-body outer-top-xs">
                                    <p>Sign Up for Our Newsletter!</p>
                                    <form>
                                        <div class="form-group">
                                            <label class="sr-only" for="exampleInputEmail1">Email address</label>
                                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Subscribe to our newsletter">
                                        </div>
                                        <button class="btn btn-primary">Subscribe</button>
                                    </form>
                                </div><!-- /.sidebar-widget-body -->
                            </div><!-- /.sidebar-widget -->
                            <!-- ============================================== NEWSLETTER: END ============================================== -->
                        </div>
                    </div><!-- /.sidebar -->

                    <div class='col-md-9'>
                        <div class="detail-block">
                            <div class="row  wow fadeInUp">
                                <div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
                                    <div class="product-item-holder size-big single-product-gallery small-gallery">
                                        <div id="owl-single-product">
                                            <div class="single-product-gallery-item" id="slide1">
                                                <a data-lightbox="image-1" data-title="Gallery" href="${product.thumbnail}">
                                                    <img class="img-responsive" alt="" src="${product.thumbnail}" data-echo="${product.thumbnail}">
                                                </a>
                                            </div><!-- /.single-product-gallery-item -->
                                        </div><!-- /.single-product-slider -->
                                    </div><!-- /.single-product-gallery -->
                                </div><!-- /.gallery-holder -->        			
                                <div class='col-sm-6 col-md-7 product-info-block'>
                                    <div class="product-info">
                                        <form action="CartServlet" method="post" class="single-pro-details">
                                            <input type="hidden" name="action" value="create"/>
                                            <input type="hidden" name="productId" value="${product.id}"/>
                                            <input type="hidden" name="price" value="${product.price}"/>
                                            <h1 class="name">${product.name}</h1>

                                            <div class="rating-reviews m-t-20">
                                                <div class="row">
                                                    <div class="col-sm-3">
                                                        <div class="rating rateit-small"></div>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <div class="reviews">
                                                            <a href="#" class="lnk">(${product.view} Reviews)</a>
                                                        </div>
                                                    </div>
                                                </div><!-- /.row -->		
                                            </div><!-- /.rating-reviews -->

                                            <div class="stock-container info-container m-t-10">
                                                <div class="row">
                                                    <div class="col-sm-2">
                                                        <div class="stock-box">
                                                            <span class="label">Availability :</span>
                                                        </div>	
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <div class="stock-box">
                                                            <span class="value">${product.quantity}</span>
                                                        </div>	
                                                    </div>
                                                </div><!-- /.row -->	
                                            </div><!-- /.stock-container -->

                                            <div class="description-container m-t-20">
                                                <span>${product.description}</span>
                                            </div><!-- /.description-container -->

                                            <div class="price-container info-container m-t-20">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="price-box">
                                                            <span class="price">$${product.price}</span>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-6">
                                                        <div class="favorite-button m-t-10">
                                                            <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Wishlist" href="#">
                                                                <i class="fa fa-heart"></i>
                                                            </a>
                                                            <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Add to Compare" href="#">
                                                                <i class="fa fa-signal"></i>
                                                            </a>
                                                            <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="E-mail" href="#">
                                                                <i class="fa fa-envelope"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                </div><!-- /.row -->
                                            </div><!-- /.price-container -->

                                            <div class="quantity-container info-container">
                                                <div class="row">

                                                    <div class="col-sm-2">
                                                        <span class="label">Qty :</span>
                                                    </div>

                                                    <div class="col-sm-2">
                                                        <div class="cart-quantity">
                                                            <div class="quant-input">
                                                                <input name="quantity" type="number" value="1" min="1">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-7">
                                                        <button class="btn btn-primary"><i class="fa fa-shopping-cart inner-right-vs"></i>Add To Cart</button>
                                                    </div>

                                                </div><!-- /.row -->
                                            </div><!-- /.quantity-container -->
                                    </div><!-- /.product-info -->
                                    </form>
                                </div><!-- /.col-sm-7 -->
                            </div><!-- /.row -->
                        </div>

                        <div class="product-tabs inner-bottom-xs  wow fadeInUp">
                            <div class="row">
                                <div class="col-sm-3">
                                    <ul id="product-tabs" class="nav nav-tabs nav-tab-cell">
                                        <li class="active"><a data-toggle="tab" href="#description">DESCRIPTION</a></li>
                                        <li><a data-toggle="tab" href="#review">REVIEW</a></li>
                                        <li><a data-toggle="tab" href="#tags">TAGS</a></li>
                                    </ul><!-- /.nav-tabs #product-tabs -->
                                </div>
                                <div class="col-sm-9">

                                    <div class="tab-content">

                                        <div id="description" class="tab-pane in active">
                                            <div class="product-tab">
                                                <p class="text">${product.description}</p>
                                            </div>	
                                        </div><!-- /.tab-pane -->

                                        <div id="review" class="tab-pane">
                                            <div class="product-tab">

                                                <div class="product-reviews">
                                                    <h4 class="title">Customer Reviews</h4>

                                                    <div class="reviews">
                                                        <div class="review">
                                                            <div class="review-title"><span class="summary">We love this product</span><span class="date"><i class="fa fa-calendar"></i><span>1 days ago</span></span></div>
                                                            <div class="text">${product.view}</div>
                                                        </div>

                                                    </div><!-- /.reviews -->
                                                </div><!-- /.product-reviews -->



                                                <div class="product-add-review">
                                                    <h4 class="title">Write your own review</h4>
                                                    <div class="review-table">
                                                        <div class="table-responsive">
                                                            <table class="table">	
                                                                <thead>
                                                                    <tr>
                                                                        <th class="cell-label">&nbsp;</th>
                                                                        <th>1 star</th>
                                                                        <th>2 stars</th>
                                                                        <th>3 stars</th>
                                                                        <th>4 stars</th>
                                                                        <th>5 stars</th>
                                                                    </tr>
                                                                </thead>	
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="cell-label">Quality</td>
                                                                        <td><input type="radio" name="quality" class="radio" value="1"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="2"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="3"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="4"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="5"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="cell-label">Price</td>
                                                                        <td><input type="radio" name="quality" class="radio" value="1"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="2"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="3"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="4"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="5"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="cell-label">Value</td>
                                                                        <td><input type="radio" name="quality" class="radio" value="1"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="2"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="3"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="4"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="5"></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table><!-- /.table .table-bordered -->
                                                        </div><!-- /.table-responsive -->
                                                    </div><!-- /.review-table -->

                                                    <div class="review-form">
                                                        <div class="form-container">
                                                            <form role="form" class="cnt-form">

                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <div class="form-group">
                                                                            <label for="exampleInputName">Your Name <span class="astk">*</span></label>
                                                                            <input type="text" class="form-control txt" id="exampleInputName" placeholder="">
                                                                        </div><!-- /.form-group -->
                                                                        <div class="form-group">
                                                                            <label for="exampleInputSummary">Summary <span class="astk">*</span></label>
                                                                            <input type="text" class="form-control txt" id="exampleInputSummary" placeholder="">
                                                                        </div><!-- /.form-group -->
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="exampleInputReview">Review <span class="astk">*</span></label>
                                                                            <textarea class="form-control txt txt-review" id="exampleInputReview" rows="4" placeholder=""></textarea>
                                                                        </div><!-- /.form-group -->
                                                                    </div>
                                                                </div><!-- /.row -->

                                                                <div class="action text-right">
                                                                    <button class="btn btn-primary btn-upper">SUBMIT REVIEW</button>
                                                                </div><!-- /.action -->

                                                            </form><!-- /.cnt-form -->
                                                        </div><!-- /.form-container -->
                                                    </div><!-- /.review-form -->

                                                </div><!-- /.product-add-review -->										

                                            </div><!-- /.product-tab -->
                                        </div><!-- /.tab-pane -->

                                        <div id="tags" class="tab-pane">
                                            <div class="product-tag">

                                                <h4 class="title">Product Tags</h4>
                                                <form role="form" class="form-inline form-cnt">
                                                    <div class="form-container">

                                                        <div class="form-group">
                                                            <label for="exampleInputTag">Add Your Tags: </label>
                                                            <input type="email" id="exampleInputTag" class="form-control txt">


                                                        </div>

                                                        <button class="btn btn-upper btn-primary" type="submit">ADD TAGS</button>
                                                    </div><!-- /.form-container -->
                                                </form><!-- /.form-cnt -->

                                                <form role="form" class="form-inline form-cnt">
                                                    <div class="form-group">
                                                        <label>&nbsp;</label>
                                                        <span class="text col-md-offset-3">Use spaces to separate tags. Use single quotes (') for phrases.</span>
                                                    </div>
                                                </form><!-- /.form-cnt -->

                                            </div><!-- /.product-tab -->
                                        </div><!-- /.tab-pane -->

                                    </div><!-- /.tab-content -->
                                </div><!-- /.col -->
                            </div><!-- /.row -->
                        </div><!-- /.product-tabs -->

                        <!-- ============================================== UPSELL PRODUCTS ============================================== -->
                        <section class="section featured-product wow fadeInUp">
                            <h3 class="section-title">upsell products</h3>
                            <div class="owl-carousel home-owl-carousel upsell-product custom-carousel owl-theme outer-top-xs">
                                <c:forEach items="${hotProductList}" var="product">
                                    <div class="item item-carousel">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image"> <a href="ProductServlet?productId=${product.id}"><img src="${product.thumbnail}" alt=""></a> </div>
                                                    <!-- /.image -->
                                                </div>
                                                <!-- /.product-image -->

                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="ProductServlet?productId=${product.id}">${product.name}</a></h3>
                                                    <div class="rating rateit-small"></div>
                                                    <div class="description"></div>
                                                    <div class="product-price"> <span class="price"> $${product.price} </span></div>
                                                    <!-- /.product-price --> 
                                                </div>
                                            </div>
                                            <!-- /.product --> 
                                        </div>
                                        <!-- /.products --> 
                                    </div>
                                </c:forEach>
                            </div><!-- /.home-owl-carousel -->
                        </section><!-- /.section -->
                        <!-- ============================================== UPSELL PRODUCTS : END ============================================== -->

                    </div><!-- /.col -->
                    <div class="clearfix"></div>
                </div><!-- /.row -->
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
