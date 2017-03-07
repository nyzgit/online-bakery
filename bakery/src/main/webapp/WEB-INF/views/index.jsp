<html>
<head>
		
		<!-- Website Title & Description for Search Engine purposes -->
		<title>ONLINE BAKERY</title>
		<meta name="description" content="online bakery">
		
		<!-- Mobile viewport optimized -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		<%@include file="el.jsp" %>

	</head>
	<body background="${img}/bg.jpg">
	
		<div class="container" id="main">
		
			<div class="navbar navbar-fixed-top">
				<div class="container">
					
					<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
					<button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				
					<a class="navbar-brand" href="/bakery/index"><img src="${img}/logo.jpg" alt="cakes" height="50" width="50" class="img-circle"></a>
					
					<div class="nav-collapse collapse navbar-responsive-collapse">
						<ul class="nav navbar-nav">
							<li class="active">
								<a href="#">Home</a>
							</li>
							
							<li >
								<a href="/bakery/products">Product</a>
							</li>
							<li >
								<a href="/bakery/About">About</a>
							</li>
						<li>
								<a href="/bakery/Contact">Contact</a>
							</li>
							<li>
							<a href="/bakery/login">LOGIN</a>						
							</li>
							
							<li>
							<a href="/bakery/Register">REGISTER</a>						
							</li>				
							
							</ul>
						
							</ul><!-- end nav pull-right -->
					</div><!-- end nav-collapse -->
				
				</div><!-- end container -->
			</div><!-- end navbar -->
			
			<div class="carousel slide" id="myCarousel">
			
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#myCarousel"></li>
					<li data-slide-to="1" data-target="#myCarousel"></li>
					<li data-slide-to="2" data-target="#myCarousel"></li>
				</ol>
			
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					
					<div class="item active" id="slide1">
						<div class="carousel-caption">
						
						<p>HELLO</p>	
						</div><!-- end carousel-caption-->
					</div><!-- end item -->
					
					<div class="item" id="slide2">
						<div class="carousel-caption">
							<p>HELLO2</p>
						</div><!-- end carousel-caption-->
					</div><!-- end item -->
					
					<div class="item" id="slide3">
						<div class="carousel-caption">
						<p>HELLO3</p>
						</div><!-- end carousel-caption-->
					</div><!-- end item -->
				
				</div><!-- carousel-inner -->
				
				<!-- Controls -->
				<a class="left carousel-control" data-slide="prev" href="#myCarousel"><span class="icon-prev"></span></a>
				<a class="right carousel-control" data-slide="next" href="#myCarousel"><span class="icon-next"></span></a>
			
			</div><!-- end myCarousel -->
			
			
 
 <div class="row" id="featuresHeading">
				<div class="col-12">
					<h2>More Features</h2>
					
				</div><!-- end col-12 -->
			</div><!-- end featuresHeading -->
			
			
			<div class="row" id="features">
				<div class="col-sm-4 feature">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">CAKES</h3>
						</div><!-- end panel-heading -->
						<img src="${img}/1.jpg" alt="cakes" height="200" width="200" class="img-circle">
						
						<p>CAKES CAKES</p>
						
						<a href="/bakery/cakes" class="btn btn-warning btn-block">Click To Buy</a>
					</div><!-- end panel -->
				</div><!-- end feature -->
				
				<div class="row" id="features">
				<div class="col-sm-4 feature">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">CAKES</h3>
						</div><!-- end panel-heading -->
						<img src="${img}/2.jpg" alt="cakes" height="200" width="200" class="img-circle">
						
						<p>CAKES CAKES</p>
						
						<a href="/bakery/cakes" class="btn btn-warning btn-block">Click To Buy</a>
					</div><!-- end panel -->
				</div><!-- end feature -->
				<div class="row" id="features">
				<div class="col-sm-4 feature">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">CAKES</h3>
						</div><!-- end panel-heading -->
						<img src="${img}/3.jpg" alt="cakes" height="200" width="200" class="img-circle">
						
						<p>CAKES CAKES</p>
						
						<a href="/bakery/cakes" class="btn btn-warning btn-block">Click To Buy</a>
					</div><!-- end panel -->
				</div><!-- end feature --> 
</div>
</div>
</div> 
</div> 
<%@include file="footer.jsp" %></body>
</html>
