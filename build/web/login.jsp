<%-- 
    Document   : login
    Created on : Sep 28, 2024, 10:43:24 AM
    Author     : zacub
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

        <title>Register Page</title>

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

        <section id="wrapper">
            <div class="form-box login">
                <form action="LoginServlet" method="post">
                    <h1>Login</h1>
                    <span class="error">${error}</span>
                    <c:remove var="error" scope="session"/>
                    <div class="input-box">
                        <input name="email" type="text" placeholder="email" required>
                    </div>
                    <div class="input-box">
                        <input name="password" type="password" placeholder="Password" required>
                    </div>
                    <div class="remember-forgot">
                        <label><input type="checkbox">Remember Me</label>
                        <a href="#">Forgot Password</a>
                    </div>
                    <button type="submit" class="normal">Login</button>

                    <div class="register-link">
                        <p>Dont have an Account? <a href="RegisterServlet">Register</a></p>
                    </div>

                    <div class="row text-center">
                        <div class="col-12">
                            <div class="d-flex gap-2 gap-sm-3 justify-content-center">
                                <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile openid
                                   &redirect_uri=http://localhost:8080/LQTShop/LoginServlet
                                   &response_type=code
                                   &client_id=69692187273-gj23b3701p80pbs4d3j26obqaohv4rh9.apps.googleusercontent.com
                                   &approval_prompt=force" class="btn btn-outline-danger d-flex align-items-center p-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-google me-2" viewBox="0 0 16 16">
                                    <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                                    </svg>
                                    Google
                                </a>
                                <a href="#!" class="btn btn-outline-primary d-flex align-items-center p-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-facebook me-2" viewBox="0 0 16 16">
                                    <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                                    </svg>
                                    Facebook
                                </a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>

        <%@include file="./inc/footer.jsp"%>

    </body>
</html>
