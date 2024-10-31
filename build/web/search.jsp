<%-- 
    Document   : home
    Created on : Sep 27, 2024, 3:13:52?PM
    Author     : zacub
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="./inc/header.jsp" %>

<!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
    <div class='container'>
        <div class='row'>
            <div class='col-md-3 sidebar'> 
                <div class="sidebar-module-container">
                    <div class="sidebar-filter"> 
                        <!-- ============================================== SIDEBAR CATEGORY ============================================== -->
                        <div class="sidebar-widget wow fadeInUp">
                            <h3 class="section-title">shop by</h3>
                            <div class="widget-header">
                                <h4 class="widget-title">Category</h4>
                            </div>
                            <div class="sidebar-widget-body">
                                <div class="accordion">
                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a href="#collapseOne" data-toggle="collapse" class="accordion-toggle collapsed"> Nam </a> </div>
                                        <!-- /.accordion-heading -->
                                        <div class="accordion-body collapse" id="collapseOne" style="height: 0px;">
                                            <div class="accordion-inner">
                                                <ul>
                                                    <li><a href="CategoryServlet?categoryId=1">Áo nam</a></li>
                                                    <li><a href="CategoryServlet?categoryId=2">Qu?n nam</a></li>
                                                </ul>
                                            </div>
                                            <!-- /.accordion-inner --> 
                                        </div>
                                        <!-- /.accordion-body --> 
                                    </div>
                                    <!-- /.accordion-group -->

                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a href="#collapseTwo" data-toggle="collapse" class="accordion-toggle collapsed"> N? </a> </div>
                                        <!-- /.accordion-heading -->
                                        <div class="accordion-body collapse" id="collapseTwo" style="height: 0px;">
                                            <div class="accordion-inner">
                                                <ul>
                                                    <li><a href="CategoryServlet?categoryId=3">Áo n?</a></li>
                                                    <li><a href="CategoryServlet?categoryId=4">Qu?n n?</a></li>
                                                </ul>
                                            </div>
                                            <!-- /.accordion-inner --> 
                                        </div>
                                        <!-- /.accordion-body --> 
                                    </div>
                                    <!-- /.accordion-group -->
                                </div>
                                <!-- /.accordion --> 
                            </div>
                            <!-- /.sidebar-widget-body --> 
                        </div>
                        <!-- /.sidebar-widget --> 
                        <!-- ============================================== SIDEBAR CATEGORY : END ============================================== --> 

                        <!-- ============================================== PRICE SILDER============================================== -->
                        <div class="sidebar-widget wow fadeInUp">
                            <div class="widget-header">
                                <h4 class="widget-title">Price Slider</h4>
                            </div>
                            <div class="sidebar-widget-body m-t-10">
                                <div class="price-range-holder">
                                    <form method="GET" action="ShopServlet">
                                        <span class="min-max">
                                            <span class="pull-left">$<span id="min-price-display">0</span></span>
                                            <span class="pull-right">$<span id="max-price-display">500</span></span>
                                        </span>

                                        <!-- Price slider range input -->
                                        <input type="range" id="minPrice" name="minPrice" min="0" max="1000" value="0" oninput="updatePriceDisplay()">
                                        <input type="range" id="maxPrice" name="maxPrice" min="0" max="1000" value="500" oninput="updatePriceDisplay()">

                                        <!-- Submit button -->
                                        <button type="submit" class="lnk btn btn-primary">Apply</button>
                                    </form>
                                </div>
                                <!-- /.price-range-holder --> 
                            </div>
                            <!-- /.sidebar-widget-body --> 
                        </div>

                        <!-- JavaScript to update the price display dynamically -->
                        <script>
                            function updatePriceDisplay() {
                                var minPrice = document.getElementById('minPrice').value;
                                var maxPrice = document.getElementById('maxPrice').value;

                                document.getElementById('min-price-display').textContent = minPrice;
                                document.getElementById('max-price-display').textContent = maxPrice;
                            }

                            // Initialize the display when the page loads
                            updatePriceDisplay();
                        </script>

                        <!-- /.sidebar-widget --> 
                        <!-- ============================================== PRICE SILDER : END ============================================== --> 
                        <!-- ============================================== MANUFACTURES============================================== -->
                        <div class="sidebar-widget wow fadeInUp">
                            <div class="widget-header">
                                <h4 class="widget-title">Manufactures</h4>
                            </div>
                            <div class="sidebar-widget-body">
                                <ul class="list">
                                    <li><a href="https://www.facebook.com/quythien.le.50">LQT Shop</a></li>
                                    <li><a href="https://vn.louisvuitton.com/vie-vn/homepage">Louis Vuitton</a></li>
                                    <li><a href="https://www.gucci.com/?srsltid=AfmBOoqosd1W91cyowcYOEHf-gjXz9SH6T4SLrgEE5G7Teem29CO9fTG">Gucci</a></li>
                                    <li><a href="https://www.chanel.com/vn/?gad_source=1&gclid=Cj0KCQjwr9m3BhDHARIsANut04aix_obQ8TnrbtjLRU74L5gzAf1TjQ4vTz5UDotCPklvIcBZVrOxu4aAvL4EALw_wcB">Chanel</a></li>
                                    <li><a href="https://singapore.coach.com/">Coach</a></li>
                                    <li><a href="https://www.prada.com/us/en.html">Prada</a></li>
                                    <li><a href="https://www.dior.com/en_vn">Dior</a></li>
                                </ul>
                            </div>
                            <!-- /.sidebar-widget-body --> 
                        </div>
                        <!-- /.sidebar-widget --> 
                        <!-- ============================================== MANUFACTURES: END ============================================== --> 
                        <!-- ============================================== COLOR============================================== -->
                        <div class="sidebar-widget wow fadeInUp">
                            <div class="widget-header">
                                <h4 class="widget-title">Colors</h4>
                            </div>
                            <div class="sidebar-widget-body">
                                <ul class="list">
                                    <li><a href="#">Red</a></li>
                                    <li><a href="#">Blue</a></li>
                                    <li><a href="#">Yellow</a></li>
                                    <li><a href="#">Pink</a></li>
                                    <li><a href="#">Brown</a></li>
                                    <li><a href="#">Teal</a></li>
                                </ul>
                            </div>
                            <!-- /.sidebar-widget-body --> 
                        </div>
                        <!-- /.sidebar-widget --> 
                        <!-- ============================================== COLOR: END ============================================== --> 
                        <!-- ============================================== COMPARE============================================== -->
                        <div class="sidebar-widget wow fadeInUp outer-top-vs">
                            <h3 class="section-title">Compare products</h3>
                            <div class="sidebar-widget-body">
                                <div class="compare-report">
                                    <p>You have no <span>item(s)</span> to compare</p>
                                </div>
                                <!-- /.compare-report --> 
                            </div>
                            <!-- /.sidebar-widget-body --> 
                        </div>
                        <!-- /.sidebar-widget --> 
                        <!-- ============================================== COMPARE: END ============================================== --> 
                        <!-- ============================================== PRODUCT TAGS ============================================== -->
                        <div class="sidebar-widget product-tag wow fadeInUp outer-top-vs">
                            <h3 class="section-title">Product tags</h3>
                            <div class="sidebar-widget-body outer-top-xs">
                                <div class="tag-list">
                                    <a class="item" title="Phone" href="CategoryServlet?categoryId=1">Áo Nam</a>
                                    <a class="item" title="Phone" href="CategoryServlet?categoryId=2">Qu?n Nam</a>
                                    <a class="item" title="Phone" href="CategoryServlet?categoryId=3">Áo N?</a>
                                    <a class="item" title="Phone" href="CategoryServlet?categoryId=4">Qu?n N?</a>
                                </div>
                                <!-- /.tag-list --> 
                            </div>
                            <!-- /.sidebar-widget-body --> 
                        </div>
                        <!-- /.sidebar-widget --> 
                        <!----------- Testimonials------------->
                        <div class="sidebar-widget  wow fadeInUp outer-top-vs ">
                            <div id="advertisement" class="advertisement">
                                <div class="item">
                                    <div class="avatar"><img src="assets\images\testimonials\member1.png" alt="Image"></div>
                                    <div class="testimonials"><em>"</em> Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer.<em>"</em></div>
                                    <div class="clients_author">John Doe <span>Abc Company</span> </div>
                                    <!-- /.container-fluid --> 
                                </div>
                                <!-- /.item -->

                                <div class="item">
                                    <div class="avatar"><img src="assets\images\testimonials\member3.png" alt="Image"></div>
                                    <div class="testimonials"><em>"</em>Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer.<em>"</em></div>
                                    <div class="clients_author">Stephen Doe <span>Xperia Designs</span> </div>
                                </div>
                                <!-- /.item -->

                                <div class="item">
                                    <div class="avatar"><img src="assets\images\testimonials\member2.png" alt="Image"></div>
                                    <div class="testimonials"><em>"</em> Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer.<em>"</em></div>
                                    <div class="clients_author">Saraha Smith <span>Datsun &amp; Co</span> </div>
                                    <!-- /.container-fluid --> 
                                </div>
                                <!-- /.item --> 

                            </div>
                            <!-- /.owl-carousel --> 
                        </div>

                        <!-- ============================================== Testimonials: END ============================================== -->

                        <div class="home-banner"> <img src="assets\images\banners\LHS-banner.jpg" alt="Image"> </div>
                    </div>
                    <!-- /.sidebar-filter --> 
                </div>
                <!-- /.sidebar-module-container --> 
            </div>
            <!-- /.sidebar -->
            <div class='col-md-9'> 
                <!-- ========================================== SECTION ? HERO ========================================= -->

                <div id="category" class="category-carousel hidden-xs">
                    <div class="item">
                        <div class="image"> <img src="assets\images\banners\cat-banner-1.jpg" alt="" class="img-responsive"> </div>
                        <div class="container-fluid">
                            <div class="caption vertical-top text-left">
                                <div class="big-text"> ${keyword} </div>
                                <div class="excerpt hidden-sm hidden-md"> Save up to 49% off </div>
                                <div class="excerpt-normal hidden-sm hidden-md"> Lorem ipsum dolor sit amet, consectetur adipiscing elit </div>
                            </div>
                            <!-- /.caption --> 
                        </div>
                        <!-- /.container-fluid --> 
                    </div>
                </div>


                <div class="clearfix filters-container m-t-10">
                    <div class="row">
                        <div class="col col-sm-6 col-md-2">
                            <div class="filter-tabs">
                                <ul id="filter-tabs" class="nav nav-tabs nav-tab-box nav-tab-fa-icon">
                                    <li class="active"> <a data-toggle="tab" href="#grid-container"><i class="icon fa fa-th-large"></i>Grid</a> </li>
                                    <li><a data-toggle="tab" href="#list-container"><i class="icon fa fa-th-list"></i>List</a></li>
                                </ul>
                            </div>
                            <!-- /.filter-tabs --> 
                        </div>
                        <!-- /.col -->

                        <div class="col col-sm-12 col-md-8">
                            <div class="col col-sm-4 col-md-6 no-padding">
                                <div class="lbl-cnt"> <span class="lbl">Sort by</span>
                                    <div class="fld inline">
                                        <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                                            <button data-toggle="dropdown" type="button" class="btn dropdown-toggle">
                                                <!-- Display current sort option based on the "Sort By" value -->
                                                <% String sortType = (String) request.getAttribute("sortType"); %>
                                                <%
                                                    String sortLabel = "Position"; // Default label
                                                    if ("price_asc".equals(sortType)) {
                                                        sortLabel = "Price: Lowest first";
                                                    } else if ("price_desc".equals(sortType)) {
                                                        sortLabel = "Price: Highest first";
                                                    } else if ("name_asc".equals(sortType)) {
                                                        sortLabel = "Product Name: A to Z";
                                                    } else if ("name_desc".equals(sortType)) {
                                                        sortLabel = "Product Name: Z to A";
                                                    }
                                                %>
                                                <%= sortLabel%> <span class="caret"></span>
                                            </button>
                                            <ul role="menu" class="dropdown-menu">
                                                <li role="presentation"><a href="?sort=price_asc">Price: Lowest first</a></li>
                                                <li role="presentation"><a href="?sort=price_desc">Price: HIghest first</a></li>
                                                <li role="presentation"><a href="?sort=name_asc">Product Name: A to Z</a></li>
                                                <li role="presentation"><a href="?sort=name_desc">Product Name: Z to A</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- /.fld --> 
                                </div>
                                <!-- /.lbl-cnt --> 
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row --> 
                </div>

                <div class="search-result-container ">
                    <div id="myTabContent" class="tab-content category-list">
                        <div class="tab-pane active " id="grid-container">
                            <div class="category-product">
                                <div class="row">
                                    <c:forEach items="${productList}" var="product">
                                        <div class="col-sm-6 col-md-4 wow fadeInUp">
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
                                    <!-- /.item -->
                                </div>
                                <!-- /.row --> 
                            </div>
                            <!-- /.category-product --> 

                        </div>
                        <!-- /.tab-pane -->

                        <div class="tab-pane " id="list-container">
                            <div class="category-product">
                                <div class="category-product-inner wow fadeInUp">
                                    <c:forEach items="${productList}" var="product" end="4">
                                        <div class="products">
                                            <div class="product-list product">
                                                <div class="row product-list-row">
                                                    <div class="col col-sm-4 col-lg-4">
                                                        <div class="product-image">
                                                            <div class="image"> <img src="${product.thumbnail}" alt=""> </div>
                                                        </div>
                                                        <!-- /.product-image --> 
                                                    </div>
                                                    <!-- /.col -->
                                                    <div class="col col-sm-8 col-lg-8">
                                                        <div class="product-info">
                                                            <h3 class="name"><a href="ProductServlet?productId=${product.id}">${product.name}</a></h3>
                                                            <div class="rating rateit-small"></div>
                                                            <div class="product-price"> <span class="price"> $${product.price} </span></div>
                                                            <!-- /.product-price -->
                                                            <div class="description m-t-10">${product.description}</div>
                                                            <div class="cart clearfix animate-effect">
                                                                <div class="action">
                                                                    <ul class="list-unstyled">
                                                                        <li class="add-cart-button btn-group">
                                                                            <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                                                            <button class="btn btn-primary">Add To Cart</button>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <!-- /.action --> 
                                                            </div>
                                                            <!-- /.cart --> 

                                                        </div>
                                                        <!-- /.product-info --> 
                                                    </div>
                                                    <!-- /.col --> 
                                                </div>
                                                <!-- /.product-list-row -->
                                            </div>
                                            <!-- /.product-list --> 
                                        </div>
                                    </c:forEach>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner -->
                            </div>
                            <!-- /.category-product --> 
                        </div>
                        <!-- /.tab-pane #list-container --> 
                    </div>
                    <!-- /.tab-content -->

                    <%-- Phân trang --%>
                    <div class="pagination">
                        <c:if test="${page > 1}">
                            <a href="?page=${page - 1}">&laquo; Previous</a>
                        </c:if>

                        <c:forEach begin="1" end="${numberPage}" var="i">
                            <a href="?page=${i}" class="${i == page ? 'active' : ''}">${i}</a>
                        </c:forEach>

                        <c:if test="${page < numberPage}">
                            <a href="?page=${page + 1}">Next &raquo;</a>
                        </c:if>
                    </div>

                    <style>
                        .pagination a {
                            margin: 0 5px;
                            padding: 8px 16px;
                            text-decoration: none;
                            color: #333;
                        }
                        .pagination a.active {
                            background-color: #4CAF50;
                            color: white;
                        }
                        .pagination a:hover {
                            background-color: #ddd;
                        }
                    </style>
                    <!-- /.filters-container --> 

                </div>
                <!-- /.search-result-container --> 

            </div>
            <!-- /.col --> 
        </div>
        <!-- /.row --> 
        <!-- ============================================== BRANDS CAROUSEL ============================================== -->
        <div id="brands-carousel" class="logo-slider wow fadeInUp">
            <div class="logo-slider-inner">
                <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
                    <div class="item m-t-15"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand1.png" src="assets\images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item m-t-10"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand2.png" src="assets\images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand3.png" src="assets\images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand4.png" src="assets\images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand5.png" src="assets\images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand6.png" src="assets\images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand2.png" src="assets\images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand4.png" src="assets\images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand1.png" src="assets\images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand5.png" src="assets\images\blank.gif" alt=""> </a> </div>
                    <!--/.item--> 
                </div>
                <!-- /.owl-carousel #logo-slider --> 
            </div>
            <!-- /.logo-slider-inner --> 

        </div>
        <!-- /.logo-slider --> 
        <!-- ============================================== BRANDS CAROUSEL : END ============================================== --> </div>
    <!-- /.container --> 

</div>
<!-- /.body-content --> 
<%@include file="./inc/footer.jsp" %>
