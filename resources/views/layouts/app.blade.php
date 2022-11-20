
<!doctype html>
<html lang="en-US">

<!-- Mirrored from bslthemes.com/html/cvio/index_onepage.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 05:55:24 GMT -->
<head>

	<!-- Meta -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<meta name="description" content="CV & Resume Template" />
	<meta name="keywords" content="vcard, resposnive, resume, personal, card, cv, cvio, portfolio" />
	<meta name="author" content="beshleyua" />

	<!-- Title -->
	<title>Cvio - Resume/CV Template</title>

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;display=swap&amp;subset=cyrillic" rel="stylesheet">

	<link rel="stylesheet" href="{{asset('assets/css/min-styles.css')}}" />
	<link rel="stylesheet" href="{{asset('assets/css/fontawesome.css')}}" />
	<link rel="stylesheet" href="{{asset('assets/css/brands.css')}}" />
	<link rel="stylesheet" href="{{asset('assets/css/solid.css')}}" />
		


	<link rel="shortcut icon" href="{{asset('assets/images/favicons/favicon.ico')}}">


	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-125314689-11"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-125314689-11');
	</script>


</head>

<body class="home">

	<!-- Preloader -->
	<div class="preloader">
		<div class="centrize full-width">
			<div class="vertical-center">
				<div class="spinner">
					<div class="double-bounce1"></div>
					<div class="double-bounce2"></div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Container -->
	<div class="container">

		<!-- Cursor -->
		<div class="cursor-follower"></div>
	
		<!-- Header -->
		<header class="header">
			<div class="head-top">

				<!-- menu button -->
				<a href="#" class="menu-btn"><span></span></a>

				<!-- logo -->
				<div class="logo hover-masks-logo">
					<a href="#">
						<span class="mask-lnk">{!! setting('site.site_logo_text') !!}</span>
						<span class="mask-lnk mask-lnk-hover">Download <strong>CV</strong></span>
					</a>
				</div>
				
				<!-- top menu -->						
				<div class="top-menu hover-masks">
					<div class="top-menu-nav">	
						<div class="menu-topmenu-container">
							<ul class="menu">
								<li class="menu-item current-menu-item">
									<a href="#section-started">Home</a>
								</li>
								<li class="menu-item">
									<a href="#section-about">Resume</a>
								</li>
								<li class="menu-item">
									<a href="#section-portfolio">Works</a>
								</li>
								<li class="menu-item">
									<a href="#section-contacts">Contact</a>
								</li>
							</ul>
						</div>
					</div>
				</div>

			</div>
		</header>
		
		<!-- Wrapper -->
        @yield('content')
		
		<!-- Footer -->
		<footer class="footer">
			<div class="copy" style="cursor:pointer;" >
				<a style="text-decoration: none;" href="mailto:{{setting('site.email')}}">E: {{setting('site.email')}}</a> <br>
				<a style="text-decoration: none;" href="tel:{{setting('site.phone')}}">T: {{ setting('site.phone') }}</a>
			</div>
			<div class="soc-box">
				<div class="follow-label">Follow Me</div>
				<div class="soc">
					<a target="_blank" href="{{ setting('site.facebook') }}">
						<span class="icon fab fa-facebook"></span>
					</a>
					<a target="_blank" href="{{ setting('site.instagram') }}">
						<span class="icon fab fa-instagram"></span>
					</a>
					<a target="_blank" href="{{ setting('site.github') }}">
						<span class="icon fab fa-github"></span>
					</a>
					<a target="_blank" href="{{ setting('site.linkid') }}">
						<span class="icon fab fa-linkedin"></span>
					</a>
				</div>
			</div>
			<div class="clear"></div>
		</footer>

		<!-- Lines -->
		<div class="lines">
			<div class="line-col"></div>
			<div class="line-col"></div>
			<div class="line-col"></div>
			<div class="line-col"></div>
			<div class="line-col"></div>
		</div>
		
	</div>

	<!-- Google map api -->
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDz2w7HUaWudHwd7AWQpCL48Qs050WOn9s"></script>

	<script src="{{asset('assets/js/min.scripts.js')}}"></script>
	<script src="{{asset('assets/js/demo-bar.js')}}"></script>

</body>

<!-- Mirrored from bslthemes.com/html/cvio/index_onepage.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 05:55:34 GMT -->
</html>