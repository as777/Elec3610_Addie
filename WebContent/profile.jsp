<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Website CSS style -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Website Font style -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/register_style.css">
<link rel="stylesheet" href="css/profile.css">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>

<title>Profile - Addie</title>
</head>
<body>
<div class="masthead">
  <div class="container">
  
    <nav class="nav-left nav">
      <a class="nav-item" href="index.jsp">Home</a>
      <a class="nav-item" href="#">Trending</a>
      <a class="nav-item" href="#">Popular</a>
    </nav>
    
    <nav class="nav-right">
	<%
		if (session.getAttribute("firstname") == null) {
	%>
	      <a class="nav-item" href="register.jsp">Register</a>
	      <a class="nav-item" href="login.jsp">Sign In</a>
	<%
		} else {
	%>
		  <a class="nav-item" href="profile.jsp">Profile</a>
		  <a class="nav-item" href="logout">Sign Out</a>
	<%
		}
	%>
    </nav>
  </div>
</div>
	
	<div class="container">

		<h2>Profile</h2>

		<div class="p-card">
				<h3>Info</h3>
				<div class="info-contatiner">
					<p>
						<%=(String)session.getAttribute("firstname")%> <%=(String)session.getAttribute("lastname")%></p>
					<p>
						Email:
						<%=(String)session.getAttribute("email")%></p>
					<p>
						Age Range:
						<%=(String)session.getAttribute("age")%></p>
					<p>
						Gender:
						<%=(String)session.getAttribute("gender")%></p>
					<p>
						State:
						<%=(String)session.getAttribute("state")%></p>
					<p>
						Suburb:
						<%=(String)session.getAttribute("suburb")%></p>
				</div>
				<div class="btn-block">
					<a href="#" class="btn">Edit</a>
				</div>
		</div>
		<!-- /.p-card -->

		<div class="main-card">
			<div class="sub-card">
				<h3>Post that you've Liked</h3>
				
				<div class="grid-container">
					<div class="grid-item">
						<img src="img/8eed25a5fbbf8de56af83959b352e25b.jpg">
						<div class="description-box">
							<h4>Vans Half Cab</h4>
							<a class="info" href="http://www.buffalodiningclub.com.au">link</a>
							<div class="row-tag">
								<a class="tag" href="#">Fashion</a>
								<a class="tag" href="#">Shoes</a>
								<a class="tag" href="#">Vans</a>
								<a class="tag" href="#">Sport</a>
							</div>
							<div class="row-vote">
								<a class="info upvote" href="#">52 upvote</a> 
								<a class="info downvote">0 downvote</a> 
							</div>
						</div>
					</div>
					<hr>
					<div class="grid-item">
						<img src="img/6b8c9914b7.jpg">
						<div class="description-box">
							<h4>Nokia 888 Mobile Phone</h4>
							<a class="info" href="http://www.buffalodiningclub.com.au">link</a>
							<div class="row-tag">
								<a class="tag" href="#">electronics</a>
								<a class="tag" href="#">technology</a>
								<a class="tag" href="#">phone</a>
								<a class="tag" href="#">online</a>
								<a class="tag" href="#">nokia</a>
							</div>
							<div class="row-vote">
								<a class="info upvote" href="#">83 upvote</a> 
								<a class="info downvote">5 downvote</a> 
							</div>
						</div>
					</div>
				</div>
				<div class="btn-block">
					<a href="#" class="btn">View All</a>
				</div>
			</div>
		
			<div class="sub-card">
				<h3>Analyzing your Preference</h3>
				<div class="tags-container">
				<span class="tag-item">35 electronics 
					<span class="cross glyphicon glyphicon-remove" aria-hidden="true" onclick="remove(this)"></span>
				</span>
				</div>
			</div>
	
		</div>
		<!-- /.main-card -->
	</div>
	<!--/.container-->
	<%@include file="footer.jsp" %>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/profile.js"></script>
</body>
</html>