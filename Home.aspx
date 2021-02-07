<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Green Life an Agriculture Category Bootstrap Responsive Web Template | Home :: w3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Green Life web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script>
	    addEventListener("load", function () {
	        setTimeout(hideURLbar, 0);
	    }, false);

	    function hideURLbar() {
	        window.scrollTo(0, 1);
	    }
	</script>
	<!--// Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Bootstrap-css -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-css -->
	<link rel="stylesheet" href="css/font-awesome.css">
	<!-- Font-Awesome-Icons-css -->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Popup css (for Video Popup) -->
	<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="all">
	<!-- Lightbox css (for Projects) -->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
	<!-- Flexslider css (for Testimonials) -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Economica:400,400i,700,700i&amp;subset=latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Rasa:300,400,500,600,700" rel="stylesheet">
	<!-- //web-fonts -->
</head>
<body>
<div class="main-agile">
		<!-- banner -->
		<div class="agile-top">
			<div class="col-xs-4 logo">
				<h1>
					<a href="Home.aspx">
						<span>G</span>reen
						<span>L</span>ife</a>
				</h1>
			</div>
			<div class="col-xs-6 header-w3l">
				<ul>
					<%if (Session["email"] == null)
                    { %>
					<li>
						<a href="login.aspx" >
							<span class="fa fa-unlock-alt" aria-hidden="true"></span> Sign In </a>
					</li>
					<li>
						<a href="SignUp.aspx" >
							<span class="fa fa-pencil-square-o" aria-hidden="true"></span> Sign Up </a>
					</li>
                    <%}
                    else
                    { %>
                    <a href="viewcart.aspx"><img src="images/cart.png" alt="View cart" height="50" width="50" /></a>
                   
                    <a href="MyAccount.aspx"><B style="color:Green"> Welcome <%=Session["username"] %></B></a>
                    <%} %>
				</ul>
			</div>
			<!-- navigation -->
			<div class="col-xs-2 menu">
				<a href="" id="menuToggle">
					<span class="navClosed"></span>
				</a>
				<nav>
					<a href="home.aspx" class="active">Home</a>
                	<a href="about.aspx" >About</a>
					<a href="category.aspx" >Plants</a>
					<a href="gallery.aspx" >Gallery</a>
					<a href="contact.aspx" >Contact</a>
                    <a href="feedback.aspx" >Feedback</a>
                    <%if (Session["email"] == null)
                    { %>
                    <a href="login.aspx">Login</a>
                    <%}
                    else
                    { %>
                    <a href="viewcart.aspx"><img src="images/cart.png" alt="View cart" height="50" width="50" /></a>
                    <a href="Logout.aspx">Logout</a>
                    <a href="MyAccount.aspx"><B style="color:Green"> Welcome <%=Session["username"] %></B></a>
                    <%} %>
				</nav>
			</div>
			<!-- //navigation -->
		</div>
	</div>
	<!-- signin Model -->
	<!-- Modal1 -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="main-mailposi">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
					</div>
					<div class="modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign In </h3>
						<p>
							Sign In now, Let's start your Grocery Shopping. Don't have an account?
							<a href="#" data-toggle="modal" data-target="#myModal2">
								Sign Up Now</a>
						</p>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" placeholder="User Name" name="Name" required="">
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Password" name="password" required="">
							</div>
							<input type="submit" value="Sign In">
						</form>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- //signin Model -->
	<!-- signup Model -->
	<!-- Modal2 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="main-mailposi">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
					</div>
					<div class="modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign Up</h3>
						<p>
							Come join the Green Life! Let's set up your Account.
						</p>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" placeholder="Name" name="Name" required="">
							</div>
							<div class="styled-input">
								<input type="email" placeholder="E-mail" name="Email" required="">
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Password" name="password" id="password1" required="">
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Confirm Password" name="Confirm Password" id="password2" required="">
							</div>
							<input type="submit" value="Sign Up">
						</form>
						<p>
							<a href="#">By clicking register, I agree to your terms</a>
						</p>
					</div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal2 -->
	<!-- //signup Model -->

	<!-- banner-text -->
	<div class="slider">
		<div class="callbacks_container">
			<ul class="rslides callbacks callbacks1" id="slider4">
				<li>
					<div class="w3layouts-banner-top banner">
						<div class="container">
							<div class="agileits-banner-info">
								<h3>Save The World</h3>
								<p>Save the trees
									<i class="fa fa-tree" aria-hidden="true"></i> they will save you</p>
								
								<div class="thim-click-to-bottom">
									<a href="#about" class="scroll">
										<i class="fa  fa-chevron-down"></i>
									</a>
								</div>

							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3layouts-banner-top banner-2">
						<div class="container">
							<div class="agileits-banner-info">
								<h3>Plant Trees Now</h3>
								<p>Save the trees
									<i class="fa fa-tree" aria-hidden="true"></i> they will save you</p>
								
								<div class="thim-click-to-bottom">
									<a href="#about" class="scroll">
										<i class="fa  fa-chevron-down"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3layouts-banner-top banner-3">
						<div class="container">
							<div class="agileits-banner-info">
								<h3>Save our Planet</h3>
								<p>Save the trees
									<i class="fa fa-tree" aria-hidden="true"></i> they will save you</p>
								
								<div class="thim-click-to-bottom">
									<a href="#about" class="scroll">
										<i class="fa  fa-chevron-down"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="clearfix"> </div>
		<!-- //banner-text -->
	</div>
	<!-- //banner -->
    
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
    <!-- footer -->
	<div class="footer-bot">
		<div class="w3layouts-newsletter">
			<div class="w3ls-social-icons-2">
				<h3>Connect With Us On Social</h3>
				<a class="facebook" href="#">
					<i class="fa fa-facebook"></i>
				</a>
				<a class="twitter" href="#">
					<i class="fa fa-twitter"></i>
				</a>
				<a class="pinterest" href="#">
					<i class="fa fa-google-plus"></i>
				</a>
				<a class="linkedin" href="#">
					<i class="fa fa-linkedin"></i>
				</a>
			</div>
			<div class="col-md-7 agileinfo-newsletter">
				<h3>
					<i class="fa fa-envelope" aria-hidden="true"></i>Join our Newsletter</h3>
				<form action="#" method="post">
					<input type="email" placeholder="Enter Your Email" name="email" required="">
					<input type="submit" value="Subscribe">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="container">
			<div class="col-xs-3 logo2">
				<h2>
					<a href="Home.aspx">
						<span>G</span>reen
						<span>L</span>ife</a>
				</h2>
			</div>
			<div class="col-xs-9 ftr-menu">
				<ul>
					<li><a href="home.aspx" class="active">Home</a></li>
					<li><a href="about.aspx" >About</a></li>
					<li><a href="category.aspx" >Plants</a></li>
					<li><a href="gallery.aspx" >Gallery</a></li>
					<li><a href="contact.aspx" >Contact</a></li>
                    <li><a href="feedback.aspx" >Feedback</a></li>

				</ul>
			</div>
			<div class="clearfix"></div>
			<div class="copy-right">
				<p> &copy; 2018 Green Life. All Rights Reserved | Design by Rahul and Rohit
				</p>
			</div>
		</div>
	</div>
	<!-- //footer -->


	<!-- js-scripts -->

	<!-- jquery -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- //jquery -->

	<script src="js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->

	<!--  light box js -->
	<script src="js/lightbox-plus-jquery.min.js"></script>
	<!-- //light box js-->
	
	<!-- stats numscroller-js-file -->
	<script src="js/numscroller-1.0.js"></script>
	<!-- //stats numscroller-js-file -->
	
	<!-- Baneer-js -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
	    // You can also use "$(window).load(function() {"
	    $(function () {
	        // Slideshow 4
	        $("#slider4").responsiveSlides({
	            auto: true,
	            pager: true,
	            nav: false,
	            speed: 500,
	            namespace: "callbacks",
	            before: function () {
	                $('.events').append("<li>before event fired.</li>");
	            },
	            after: function () {
	                $('.events').append("<li>after event fired.</li>");
	            }
	        });

	    });
	</script>
	<!-- //Baneer-js -->

	<!-- navigation -->
	<script>
	    (function ($) {
	        // Menu Functions
	        $(document).ready(function () {
	            $('#menuToggle').click(function (e) {
	                var $parent = $(this).parent('.menu');
	                $parent.toggleClass("open");
	                var navState = $parent.hasClass('open') ? "hide" : "show";
	                $(this).attr("title", navState + " navigation");
	                // Set the timeout to the animation length in the CSS.
	                setTimeout(function () {
	                    console.log("timeout set");
	                    $('#menuToggle > span').toggleClass("navClosed").toggleClass("navOpen");
	                }, 200);
	                e.preventDefault();
	            });
	        });
	    })(jQuery);
	</script>
	<!-- //navigation -->

	<!-- pop-up(for video popup)-->
	<script src="js/jquery.magnific-popup.js"></script>
	<script>
	    $(document).ready(function () {
	        $('.popup-with-zoom-anim').magnificPopup({
	            type: 'inline',
	            fixedContentPos: false,
	            fixedBgPos: true,
	            overflowY: 'auto',
	            closeBtnInside: true,
	            preloader: false,
	            midClick: true,
	            removalDelay: 300,
	            mainClass: 'my-mfp-zoom-in'
	        });

	    });
	</script>
	<!-- //pop-up-box (syllabus section video)-->
	
	<!-- video js (background) -->
	<script src="js/jquery.vide.min.js"></script>
	<!-- //video js (background) -->

	<!-- smoothscroll -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->

	<!-- password-script -->
	<script>
	    window.onload = function () {
	        document.getElementById("password1").onchange = validatePassword;
	        document.getElementById("password2").onchange = validatePassword;
	    }

	    function validatePassword() {
	        var pass2 = document.getElementById("password2").value;
	        var pass1 = document.getElementById("password1").value;
	        if (pass1 != pass2)
	            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
	        else
	            document.getElementById("password2").setCustomValidity('');
	        //empty string means no validation error
	    }
	</script>
	<!-- //password-script -->

	<!-- start-smooth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
	    jQuery(document).ready(function ($) {
	        $(".scroll").click(function (event) {
	            event.preventDefault();

	            $('html,body').animate({
	                scrollTop: $(this.hash).offset().top
	            }, 1000);
	        });
	    });
	</script>
	<!-- //end-smooth-scrolling -->

	<!-- smooth scrolling-bottom-to-top -->
	<script>
	    $(document).ready(function () {
	        /*
	        var defaults = {
	        containerID: 'toTop', // fading element id
	        containerHoverID: 'toTopHover', // fading element hover id
	        scrollSpeed: 1200,
	        easingType: 'linear' 
	        };
	        */
	        $().UItoTop({
	            easingType: 'easeOutQuart'
	        });
	    });
	</script>
	<a href="#" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!-- //smooth scrolling-bottom-to-top -->

	<!-- flexSlider (for testimonials) -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script>
	    $(window).load(function () {
	        $('.flexslider').flexslider({
	            animation: "slide",
	            start: function (slider) {
	                $('body').removeClass('loading');
	            }
	        });
	    });
	</script>
	<!-- //flexSlider (for testimonials) -->

	<!-- //js-scripts -->
</body>
</html>
