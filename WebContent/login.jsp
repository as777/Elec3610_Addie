<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">


		<!-- Website CSS style -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/header.css">
		<link rel="stylesheet" href="css/register_style.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Login - Addie</title>
	</head>
	<body>
		<%@include file="header.jsp" %>
	    
	<div class="container" style="padding:4rem 2rem;width:30%;">
		<form class="form-horizontal" method="post" action="login"
				id="loginform" onSubmit="return validateForm(event);">
		    <fieldset>
		
		        <div class="row">
					<!-- Text input-->
			        <div class="form-group">
			          <label class=" control-label" for="email">Email</label>  
			          <div class="">
			          <input id="email" name="email" type="text" placeholder="Your email address" class="form-control input-md" required>
			          </div>
			        </div>
			        
			        <!-- Password input-->
			        <div class="form-group">
			          <label class=" control-label" for="password">Password</label>
			          <div class="">
			            <input id="password" name="password" type="password" placeholder="Password" class="form-control input-md" required>
			          </div>
			        </div>
			        
			        <div class="button-group">
			        	<button id="submit" name="submit" class="btn login-button">Sign In</button>
			        </div>
				</div>
			</fieldset>
		</form>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	</body>
</html>
