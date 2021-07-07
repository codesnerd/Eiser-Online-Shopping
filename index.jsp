<!DOCTYPE html>
<html lang="en">

	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<link rel="icon" href="img/favicon.png" type="image/png" />
		<title>Home - Eiser</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="vendors/linericon/style.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<link rel="stylesheet" href="css/themify-icons.css" />
		<link rel="stylesheet" href="css/flaticon.css" />
		<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css" />
		<link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css" />
		<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css" />
		<link rel="stylesheet" href="vendors/animate-css/animate.css" />
		<link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css" />
		<!-- main css -->
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/responsive.css" />

		<%@ page language="java" import="javax.servlet.*,javax.servlet.http.*, java.sql.*" %>
    	<%@ page contentType="text/html" pageEncoding="UTF-8" session="false" %>
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
			<div class="collapse navbar-collapse offset w-200" id="navbarSupportedContent">
				<div class="row w-100 mr-0">
				<div class="col-lg-7 pr-0">
					<ul class="nav navbar-nav center_nav pull-right">
					<li class="nav-item active">
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

	<!--================ Header Menu Area =================-->

	<!--================ Home Banner Area =================-->
	<section class="home_banner_area mb-40">
		<div class="banner_inner d-flex align-items-center">
		<div class="container">
			<div class="banner_content row">
			<div class="col-lg-12">
				<p class="sub text-uppercase">men Collection</p>
				<h3><span>Show</span> Your <br />Personal <span>Style</span></h3>
				<h4>Shop with grace. It's your own place!</h4>
				<a class="main_btn mt-40" href="shop.jsp">View Collection</a>
			</div>
			</div>
		</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!-- Start feature Area -->
	<section class="feature-area section_gap_bottom_custom">
		<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-6">
			<div class="single-feature">
				<i class="flaticon-money"></i>
				<h3>Money back gurantee</h3>
				</a>
				<p>30-days money back guarantee</p>
			</div>
			</div>
			<div class="col-lg-3 col-md-6">
			<div class="single-feature">
				<i class="flaticon-truck"></i>
				<h3>Free Delivery</h3>
				</a>
				<p>Enjoy free delivery on all items</p>
			</div>
			</div>
			<div class="col-lg-3 col-md-6">
			<div class="single-feature">
				<i class="flaticon-support"></i>
				<h3>Always Support</h3>
				</a>
				<p>24-hours customer service</p>
			</div>
			</div>

			<div class="col-lg-3 col-md-6">
			<div class="single-feature">
				<a href="#" class="title">
				<i class="flaticon-blockchain"></i>
				<h3>Secure payment</h3>
				</a>
				<p>Securely pay by cash-on-delivery</p>
			</div>
			</div>
		</div>
		</div>
	</section>
	<!-- End feature Area -->

	<!--================ Feature Product Area =================-->
	<section class="feature_product_area section_gap_bottom_custom">
		<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-12">
			<div class="main_title">
				<h2><span>Featured Products</span></h2>
				<p>Here is to the best of the best! Our hand-picked products for you.</p>
			</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-4 col-md-6">
			<div class="single-product">
				<div class="product-img">
				<img class="img-fluid w-100" src="img/product/feature-product/f-p-1.jpg" alt="" />
				<div class="p_icon">
					<a href="#">
					<i class="ti-eye"></i>
					</a>
					<a href="#">
					<i class="ti-heart"></i>
					</a>
					<a href="#">
					<i class="ti-shopping-cart"></i>
					</a>
				</div>
				</div>
				<div class="product-btm">
				<a href="#" class="d-block">
					<h4>Latest men’s sneaker</h4>
				</a>
				<div class="mt-3">
					<span class="mr-4">$25.00</span>
					<del>$35.00</del>
				</div>
				</div>
			</div>
			</div>

			<div class="col-lg-4 col-md-6">
			<div class="single-product">
				<div class="product-img">
				<img class="img-fluid w-100" src="img/product/feature-product/f-p-2.jpg" alt="" />
				<div class="p_icon">
					<a href="#">
					<i class="ti-eye"></i>
					</a>
					<a href="#">
					<i class="ti-heart"></i>
					</a>
					<a href="#">
					<i class="ti-shopping-cart"></i>
					</a>
				</div>
				</div>
				<div class="product-btm">
				<a href="#" class="d-block">
					<h4>Red women purses</h4>
				</a>
				<div class="mt-3">
					<span class="mr-4">$25.00</span>
					<del>$35.00</del>
				</div>
				</div>
			</div>
			</div>

			<div class="col-lg-4 col-md-6">
			<div class="single-product">
				<div class="product-img">
				<img class="img-fluid w-100" src="img/product/feature-product/f-p-3.jpg" alt="" />
				<div class="p_icon">
					<a href="#">
					<i class="ti-eye"></i>
					</a>
					<a href="#">
					<i class="ti-heart"></i>
					</a>
					<a href="#">
					<i class="ti-shopping-cart"></i>
					</a>
				</div>
				</div>
				<div class="product-btm">
				<a href="#" class="d-block">
					<h4>Men stylist Smart Watch</h4>
				</a>
				<div class="mt-3">
					<span class="mr-4">$25.00</span>
					<del>$35.00</del>
				</div>
				</div>
			</div>
			</div>
		</div>
		</div>
	</section>
	<!--================ End Feature Product Area =================-->

	<!--================ Offer Area =================-->
	<section class="offer_area">
		<div class="container">
		<div class="row justify-content-center">
			<div class="offset-lg-4 col-lg-6 text-center">
			<div class="offer_content">
				<h3 class="text-uppercase mb-40">all men’s collection</h3>
				<h2 class="text-uppercase">50% off</h2>
				<p>Limited Time Offer</p>
			</div>
			</div>
		</div>
		</div>
	</section>
	
	<br><br><br><br><br>
	<br><br><br><br><br>

	<!--================ End Inspired Product Area =================-->

	<!--================ Start Blog Area =================-->
	<section class="blog-area section-gap">
		<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-12">
			<div class="main_title">
				<h2><span>latest blog</span></h2>
				<p>Bring called seed first of third give itself now ment</p>
			</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-4 col-md-6">
			<div class="single-blog">
				<div class="thumb">
				<img class="img-fluid" src="img/b1.jpg" alt="">
				</div>
				<div class="short_details">
				<div class="meta-top d-flex">
					<a href="#">By Admin</a>
					<a href="#"><i class="ti-comments-smiley"></i>2 Comments</a>
				</div>
				<a class="d-block" href="single-blog.jsp">
					<h4>Ford clever bed stops your sleeping
					partner hogging the whole</h4>
				</a>
				<div class="text-wrap">
					<p>
					Let one fifth i bring fly to divided face for bearing the divide unto seed winged divided light
					Forth.
					</p>
				</div>
				<a href="#" class="blog_btn">Learn More <span class="ml-2 ti-arrow-right"></span></a>
				</div>
			</div>
			</div>
			
			<div class="col-lg-4 col-md-6">
			<div class="single-blog">
				<div class="thumb">
				<img class="img-fluid" src="img/b2.jpg" alt="">
				</div>
				<div class="short_details">
				<div class="meta-top d-flex">
					<a href="#">By Admin</a>
					<a href="#"><i class="ti-comments-smiley"></i>2 Comments</a>
				</div>
				<a class="d-block" href="#">
					<h4>Ford clever bed stops your sleeping
					partner hogging the whole</h4>
				</a>
				<div class="text-wrap">
					<p>
					Let one fifth i bring fly to divided face for bearing the divide unto seed winged divided light
					Forth.
					</p>
				</div>
				<a href="#" class="blog_btn">Learn More <span class="ml-2 ti-arrow-right"></span></a>
				</div>
			</div>
			</div>

			<div class="col-lg-4 col-md-6">
			<div class="single-blog">
				<div class="thumb">
				<img class="img-fluid" src="img/b3.jpg" alt="">
				</div>
				<div class="short_details">
				<div class="meta-top d-flex">
					<a href="#">By Admin</a>
					<a href="#"><i class="ti-comments-smiley"></i>2 Comments</a>
				</div>
				<a class="d-block" href="s#">
					<h4>Ford clever bed stops your sleeping
					partner hogging the whole</h4>
				</a>
				<div class="text-wrap">
					<p>
					Let one fifth i bring fly to divided face for bearing the divide unto seed winged divided light
					Forth.
					</p>
				</div>
				<a href="#" class="blog_btn">Learn More <span class="ml-2 ti-arrow-right"></span></a>
				</div>
			</div>
			</div>
		</div>
		</div>
	</section>
	<!--================ End Blog Area =================-->

	<!--================ start footer Area  =================-->
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
			<p>You can trust us. We only send promo offers.</p>
			<div class="form-wrap" id="mc_embed_signup">
				<form spellcheck="false" autocomplete="off" target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
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
			<p class="footer-text m-0 col-lg-8 col-md-12">
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			</p>
			<div class="col-lg-4 col-md-12 footer-social">
			<a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
			<a href="https://twitter.com/"><i class="fa fa-twitter"></i></a>
			<a href="https://dribbble.com/"><i class="fa fa-dribbble"></i></a>
			<a href="https://www.behance.net/"><i class="fa fa-behance"></i></a>

			</div>
		</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->

	</body>
</html>