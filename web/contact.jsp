﻿<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
    <head>
        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="MediaCenter, Template, eCommerce">
        <meta name="robots" content="all">

        <title>Contact Us</title>

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
    <body class="cnt-home">
        <%@include file="./inc/header.jsp"%>
        <div class="breadcrumb">
            <div class="container">
                <div class="breadcrumb-inner">
                    <ul class="list-inline list-unstyled">
                        <li><a href="#">Home</a></li>
                        <li class='active'>Contact</li>
                    </ul>
                </div><!-- /.breadcrumb-inner -->
            </div><!-- /.container -->
        </div><!-- /.breadcrumb -->

        <div class="body-content">
            <div class="container">
                <div class="contact-page">
                    <div class="row">

                        <div class="col-md-12 contact-map outer-bottom-vs">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3826.3536849106663!2d107.58544287460766!3d16.45761922892445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3141a14771646be3%3A0x2fd0ad0d9227d5b0!2zNzAgTmd1eeG7hW4gSHXhu4csIFbEqW5oIE5pbmgsIEh14bq_LCBUaOG7q2EgVGhpw6puIEh14bq_LCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1727494873922!5m2!1svi!2s" width="600" height="450" style="border:0" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        <div class="col-md-9 contact-form">
                            <div class="col-md-12 contact-title">
                                <h4>Contact Form</h4>
                            </div>
                            <div class="col-md-4 ">
                                <form class="register-form" role="form">
                                    <div class="form-group">
                                        <label class="info-title" for="exampleInputName">Your Name <span>*</span></label>
                                        <input type="email" class="form-control unicase-form-control text-input" id="exampleInputName" placeholder="">
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-4">
                                <form class="register-form" role="form">
                                    <div class="form-group">
                                        <label class="info-title" for="exampleInputEmail1">Email Address <span>*</span></label>
                                        <input type="email" class="form-control unicase-form-control text-input" id="exampleInputEmail1" placeholder="">
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-4">
                                <form class="register-form" role="form">
                                    <div class="form-group">
                                        <label class="info-title" for="exampleInputTitle">Title <span>*</span></label>
                                        <input type="email" class="form-control unicase-form-control text-input" id="exampleInputTitle" placeholder="Title">
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-12">
                                <form class="register-form" role="form">
                                    <div class="form-group">
                                        <label class="info-title" for="exampleInputComments">Your Comments <span>*</span></label>
                                        <textarea class="form-control unicase-form-control" id="exampleInputComments"></textarea>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-12 outer-bottom-small m-t-20">
                                <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Send Message</button>
                            </div>
                        </div>
                        <div class="col-md-3 contact-info">
                            <div class="contact-title">
                                <h4>Information</h4>
                            </div>
                            <div class="clearfix address">
                                <span class="contact-i"><i class="fa fa-map-marker"></i></span>
                                <span class="contact-span">70 Nguyễn Huệ, phường Vĩnh Ninh - Thừa Thiên Huế</span>
                            </div>
                            <div class="clearfix phone-no">
                                <span class="contact-i"><i class="fa fa-mobile"></i></span>
                                <span class="contact-span">+(84) 365 142 649<br>+(84) 326 996 465</span>
                            </div>
                            <div class="clearfix email">
                                <span class="contact-i"><i class="fa fa-envelope"></i></span>
                                <span class="contact-span"><a href="#">lequythien1@gmail.com<br>zacubj2@gmail.com</a></span>
                            </div>
                        </div>			</div><!-- /.contact-page -->
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
                <%@include file="./inc/footer.jsp"%>
    </body>
</html>
