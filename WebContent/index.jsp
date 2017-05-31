<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="we love ads">
		<meta name="author" content="peggy, mark, alex">
		<link rel="icon" href="../../favicon.ico">
		
		<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!-- Custom styles for this template -->
		<link rel="stylesheet" href="css/header.css">
		<link rel="stylesheet" href="css/index.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
	
		<title>Addie - ads you like</title>
	</head>

<body>
	<%@include file="header.jsp" %>
<!-- 	<div class="masthead">
		<div class="container">
			<nav class="nav-left nav">
				<a class="nav-item active" href="index.jsp">Home</a>
				<a class="nav-item" href="trending.jsp">Trending</a>
				<a class="nav-item" href="#">Popular</a>
				<div class="input-group" id="search-input">
			      <input type="text" class="form-control" placeholder="Search for post">
			      <span class="input-group-btn">
			        <button class="btn btn-default" type="button">Search</button>
			      </span>
			    </div>/input-group
			</nav>
			<nav class="nav-right">
				<a class="nav-item" href="register.jsp">Register</a>
				<a class="nav-item" href="login.jsp">Sign In</a>
				<a class="nav-item" href="logout">Sign Out</a>
			</nav>
		</div>
	</div> -->
	

	<div class="container">

		<div class="row row-offcanvas row-offcanvas-right">

			<div>
				<div class="jumbotron">
					<h1>Addie</h1>
		<%
			String firstname = (String)session.getAttribute("firstname");
			if (firstname != null) {
				out.print(firstname + ", here is your ads feed based on what you like...");
			}
		%>
				</div>
				
				<div style="width:1000px;">
					<div class="grid"
						data-masonry='{ "itemSelector": ".grid-item", "columnWidth": 250 }'>
						<div class="grid-row">
							<div class="grid-item grid-item--width2 grid-item--height2">
								<div class="hovereffect">
									<div class="cover">
										<img src="img/6300c8965843d9fceba4b126b3b876f1.jpg">
									</div>
									<div class="overlay">
										<h2>Nokia 888 Mobile Phone</h2>
										<a class="info" href="https://www.nokia.com/en_au/phones/nokia-6">link</a>
										<p>
											New Nokia 888 uses liquid battery, speech recognition, flexible touch screen, 
											touch sensitive body cover which lets it understand and adjust to the environment.
											<br>An outstanding phone with latest Android and immersive entertainment.
											<br>* 5.5" bright full-HD display
											<br>* Immersive sound with Dolby Atmos
											<br>* 16 MP camera
										</p>
										<div class="row-tag">
											<a class="tag" href="https://www.nokia.com/en_au/phones/nokia-6">electronics</a>
											<a class="tag" href="https://www.nokia.com/en_au/phones/nokia-6">technology</a>
											<a class="tag" href="https://www.nokia.com/en_au/phones/nokia-6">phone</a>
											<a class="tag" href="https://www.nokia.com/en_au/phones/nokia-6">online</a>
											<a class="tag" href="https://www.nokia.com/en_au/phones/nokia-6">nokia</a>
										</div>
										<div class="row-vote">
											<button class="btn btn-default" type="button">upvote</button>							
											<button class="btn btn-default" type="button">downvote</button>	
										</div>						
										<div class="content"></div>
									</div>
								</div>
							</div>
							<div class="grid-item grid-item--height2">
								<img>
							</div>
							<div class="grid-item grid-item--height2"></div>
						</div>
						
						<div class="grid-row">
							<div class="grid-item grid-item--height2"></div>
							<div class="grid-item grid-item--height2"></div>
							<div class="grid-item grid-item--height2"></div>
							<div class="grid-item grid-item--height2"></div>
						</div>
						
						<div class="grid-row">
							<div class="grid-item grid-item--height2"></div>
							<div class="grid-item grid-item--height2"></div>
							<div class="grid-item grid-item--width2 grid-item--height2"></div>
						</div>
						
					</div>
					<!--/grid-->
				</div>
			</div>
			<!--/.col-xs-12.col-sm-9-->
		</div>
		<!--/row-->

		<hr>

		<footer>
			<p>&copy; 2017 Addie, Inc.</p>
		</footer>

	</div>
	<!--/.container-->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
	<script src="js/masonry.pkgd.min.js"></script>
	<script src="js/index.js"></script>
</body>
</html>