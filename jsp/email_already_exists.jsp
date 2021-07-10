<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="icon" href="img/favicon.png" type="image/png" />
    <title>Email Error - Eiser</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="vendors/linericon/style.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/themify-icons.css" />
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css" />
    <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css" />
    <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css" />
    <link rel="stylesheet" href="vendors/animate-css/animate.css" />
    <link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css" />
    <!-- main css -->
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/responsive.css" />

    <!-- JavaScript -->
    <script src="scripts/signup/validate.js"></script>
    <%@ page language="java" import="javax.servlet.*,javax.servlet.http.*" %>
    <%@page contentType="text/html" pageEncoding="UTF-8" session="false" %>
  </head>
  
  <body>

  <%
    HttpSession session = request.getSession(false);
  %>
	<!--================ Header Menu Area =================-->
    <header class="header_area">
      <div class="main_menu">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light w-100">
        <!-- Brand and toggle get grouped for better mobile display -->
        <a class="navbar-brand logo_h" href="index.jsp">
          <img src="img/logo.png" alt="" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse offset w-100" id="navbarSupportedContent">
          <div class="row w-100 mr-0">
          <div class="col-lg-7 pr-0">
            <ul class="nav navbar-nav center_nav pull-right">
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="shop.jsp">Shop</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.jsp">Contact</a>
            </li>
            </ul>
          </div>
          <%
	if (session == null)
	{
	%>

	<div class="col-lg-5 pr-0">
		<ul class="nav navbar-nav navbar-right right_nav pull-right">
			<li class="nav-item">
				<a class="nav-link" href="signup.jsp">Signup</a>
			</li>
			&nbsp; &nbsp;
			<li class="nav-item">
				<a class="nav-link" href="login.jsp">Login</a>
			</li>
		</ul>
	</div>

	<%
	}
	else
	{
	%>

	<div class="col-lg-5 pr-0">
		<ul class="nav navbar-nav navbar-right right_nav pull-right">
		<li class="nav-item">
			<a href="cart.jsp" class="icons">
			<i class="ti-shopping-cart"></i>
			</a>
		</li>
		<li class="nav-item">
			<a href="profile.jsp" class="icons">
			<i class="ti-user" aria-hidden="true"></i>
			</a>
		</li>
		</ul>
	</div>

	<%
	}
	%>
          </div>
        </div>
        </nav>
      </div>
      </div>
    </header>
    <!--================Header Menu Area =================-->

    <!--================Home Banner Area =================-->
    <br><br><br><br><br>
    <section class="banner_area">
      <div class="banner_inner d-flex align-items-center">
        <div class="container">
            <div style="text-align: center;" class="mb-3 mb-md-0">
              <h1 style="color: red;">Email Error</h1>
              <p>OOPS! This email is already registered.</p>
          </div>
        </div>
      </div>
    </section>
    </body>
</html>
