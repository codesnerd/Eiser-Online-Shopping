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
    <title>Signup - Eiser</title>

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
    <script src="scripts/login/validate.js"></script>

    <%@ page language="java" import="javax.servlet.*,javax.servlet.http.*" %>
    <%@page contentType="text/html" pageEncoding="UTF-8" session="false" %>
  </head>

  <body>
    
  <%
    HttpSession session = request.getSession(false);
    if (session != null)
    {
      response.sendRedirect("profile.jsp");
    }
    else
    {
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
				<div class="col-lg-5 pr-0">
					<ul class="nav navbar-nav navbar-right right_nav pull-right">
						<li class="nav-item active">
							<a class="nav-link" href="signup.jsp">Signup</a>
						</li>
						&nbsp; &nbsp;
						<li class="nav-item">
							<a class="nav-link" href="login.jsp">Login</a>
						</li>
					</ul>
				</div>

				
          </div>
        </div>
        </nav>
      </div>
      </div>
    </header>
    <!--================Header Menu Area =================-->

    <!--================Home Banner Area =================-->
    <section class="banner_area">
      <div class="banner_inner d-flex align-items-center">
        <div class="container">
            <div style="text-align: center;" class="mb-3 mb-md-0">
              <h1>Signup</h1>
              <p>Signup to the best clothing website!</p>
          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Checkout Area =================-->
    <br><br>
    <div class="container">
        <div style="text-align: center;" class="check_title">
          <h2>
            Returning Customer?
            <a href="login.jsp">Click here to Login</a>
          </h2>
      </div>
      <br><br><br><br>
      <div class="billing_details">
        <div class="row">
            <form
              name="signup"
              onsubmit="return validateAll()"
              action="Signup"
              method="POST"
              
              class="row contact_form"
              novalidate="novalidate"
            >
              <div class="col-md-6 form-group p_star">
                <input
                  name="fname"
                  type="text"
                  onblur="validateFullName()"
                  class="form-control"
                  placeholder="Enter Full Name"
                />
                <span class="error" id = "fname_err"></span>
              </div>
              <div class="col-md-6 form-group p_star">
                <input
                  name="mail"
                  type="text"
                  onblur="validateMail()"
                  class="form-control"
                  id="mail"
                  placeholder="Enter Email Address"
                />
                <span class="error" id = "mail_err"></span>
              </div>
              <br><br>
              <div class="col-md-6 form-group p_star">
                <input
                  name="password"
                  type="password"
                  onblur="validatePass()"
                  class="form-control"
                  id="password"
                  placeholder="Enter Password"
                />
                <span class="error" id = "pass_err"></span>
              </div>
              <div class="col-md-6 form-group p_star">
                <input
                  name="confirm_password"
                  type="password"
                  onblur="confirmPass()"
                  class="form-control"
                  id="confirm_password"
                  placeholder="Confirm Password"
                />
                <span class="error" id = "conf_err"></span>
              </div>
              <div class="col-md-12 form-group p_star">
                  <input
                    name="address"
                    type="text"
                    onblur="validateAddress()"
                    class="form-control"
                    id="address"
                    placeholder="Enter Complete Address"
                  />
                  <span class="error" id = "address_err"></span>
                  <br><br>
                  <button name="send" type="submit" class="main_btn">Signup</button>
                </div>
              </form>
          </div>
        </div>

    <br><br><br><br><br><br>
    <!--================End Checkout Area =================-->

    <!--================ Start footer Area  =================-->
    <footer class="footer-area section_gap">
      <div class="container">
        <div class="row">
          <div class="col-lg-2 col-md-6 single-footer-widget">
            <h4>Top Products</h4>
            <ul>
              <li><a href="#">Managed Website</a></li>
              <li><a href="#">Manage Reputation</a></li>
              <li><a href="#">Power Tools</a></li>
              <li><a href="#">Marketing Service</a></li>
            </ul>
          </div>
          <div class="col-lg-2 col-md-6 single-footer-widget">
            <h4>Quick Links</h4>
            <ul>
              <li><a href="#">Jobs</a></li>
              <li><a href="#">Brand Assets</a></li>
              <li><a href="#">Investor Relations</a></li>
              <li><a href="#">Terms of Service</a></li>
            </ul>
          </div>
          <div class="col-lg-2 col-md-6 single-footer-widget">
            <h4>Features</h4>
            <ul>
              <li><a href="#">Jobs</a></li>
              <li><a href="#">Brand Assets</a></li>
              <li><a href="#">Investor Relations</a></li>
              <li><a href="#">Terms of Service</a></li>
            </ul>
          </div>
          <div class="col-lg-2 col-md-6 single-footer-widget">
            <h4>Resources</h4>
            <ul>
              <li><a href="#">Guides</a></li>
              <li><a href="#">Research</a></li>
              <li><a href="#">Experts</a></li>
              <li><a href="#">Agencies</a></li>
            </ul>
          </div>
          <div class="col-lg-4 col-md-6 single-footer-widget">
            <h4>Newsletter</h4>
            <p>You can trust us. we only send promo offers,</p>
            <div class="form-wrap" id="mc_embed_signup">
              <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                method="get" class="form-inline">
                <input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''"
                  onblur="this.placeholder = 'Your Email Address '" required="" type="email">
                <button class="click-btn btn btn-default">Subscribe</button>
                <div style="position: absolute; left: -5000px;">
                  <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
                </div>
  
                <div class="info"></div>
              </form>
            </div>
          </div>
        </div>
        <div class="footer-bottom row align-items-center">
          <p class="footer-text m-0 col-lg-8 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          <div class="col-lg-4 col-md-12 footer-social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-dribbble"></i></a>
            <a href="#"><i class="fa fa-behance"></i></a>
          </div>
        </div>
      </div>
    </footer>
    <!--================ End footer Area  =================-->
  </body>
</html>
<%
}
%>