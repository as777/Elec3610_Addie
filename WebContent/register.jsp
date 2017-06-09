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

		<title>Register - Addie</title>
	</head>
	<body>
		<%@include file="header.jsp" %>
	    
		<div class="container">
			<form class="form-horizontal" method="post" action="register"
					id="registerform" onSubmit="return validateForm(event);">
			    <fieldset>
			
			        <div class="row">
			       
				        <!-- Interest domain -->
				        <div class="block-left">
				          <label class=" control-label">Please select at least three interests: <span class="star">(*)</span></label>
				          <div class="form-group">
				          		<div class="checkbox">
								  <label><input type="checkbox" name ="interests" value="food">&#32;food</label>
								</div>
						        <div class="checkbox">
								  <label><input type="checkbox" name ="interests" value="fashion">&#32;fashion</label>
								</div>
								<div class="checkbox">
								  <label><input type="checkbox" name ="interests" value="electronics">&#32;electronics</label>
								</div>
								<div class="checkbox">
								  <label><input type="checkbox" name ="interests" value="groceries">&#32;groceries</label>
								</div>
								<div class="checkbox">
								  <label><input type="checkbox" name ="interests" value="travel">&#32;travel</label>
								</div>
								<div class="checkbox">
								  <label><input type="checkbox" name ="interests" value="computing">&#32;computing</label>
								</div>
								<div class="checkbox">
								  <label><input type="checkbox" name ="interests" value="home">&#32;home</label>
								</div>
						  </div>
						  <div id="warningInterests">Please select at least 3.</div>
						</div>
						
						<!-- Personal information -->
						<div class="block-right">
					        <!-- Text input-->
					        <div class="form-group">
					          <label class=" control-label" for="firstname">First Name <span class="star">(*)</span></label>  
					          <div class="">
					          <input id="firstname" name="firstname" type="text" placeholder="Your first name" class="form-control input-md" required>
					          </div>
					        </div>
					        
					        <!-- Text input-->
					        <div class="form-group">
					          <label class=" control-label" for="lastname">Last Name <span class="star">(*)</span></label>  
					          <div class="">
					          <input id="lastname" name="lastname" type="text" placeholder="Your last name" class="form-control input-md" required> 
					          </div>
					        </div>
					
					        <!-- Text input-->
					        <div class="form-group">
					          <label class=" control-label" for="email">Email <span class="star">(*)</span></label>  
					          <div class="">
					          <input id="email" name="email" type="text" placeholder="Email address" class="form-control input-md" required>
					          <span class="help-block">Email will be used for login</span>  
					          </div>
					        </div>
					
					        <!-- Password input-->
					        <div class="form-group">
					          <label class=" control-label" for="password">Password <span class="star">(*)</span></label>
					          <div class="">
					            <input id="password" name="password" type="password" placeholder="Password" class="form-control input-md" required>
					            <span class="help-block">Password must be at least 8 characters</span>
					          </div>
					        </div>
					
					        <!-- Password input-->
					        <div class="form-group">
					          <label class=" control-label" for="rpassword">Confirm Password <span class="star">(*)</span></label>
					          <div class="">
					            <input id="rpassword" name="rpassword" type="password" placeholder="Confirm password" class="form-control input-md" required>
					            <span class="help-block">Retype password</span>
					          </div>
					        </div>
					
					        <!-- Text input-->
					        <div class="form-group">
					          <label class=" control-label" for="age">Age Range</label>
					          <div class="">
					            <select id="age" name="age" class="form-control">
							        <option value="">Choose Age Range:</option>
							        <option value="<18">&#60;18</option>
							        <option value="18-24">18-24</option>
							        <option value="25-34">25-34</option>
							        <option value="35-44">35-44</option>
							        <option value="45-54">45-54</option>
							        <option value="55-64">55-64</option>
							        <option value="65+">65+</option>
					            </select>
					          </div>
					        </div>
					
							<!-- Text input-->
					        <div class="form-group">
					          <label class=" control-label" for="gender">Gender</label>
					          <div class="">
					            <label class="radio-inline">
									<input type="radio" name="gender" value="female">Female
								</label>
								<label class="radio-inline">
								    <input type="radio" name="gender" value="male">Male
								</label>
					          </div>
					        </div>
					
							<!-- Text input-->
					        <div class="form-group">
					          <label class=" control-label" for="area">Area</label>
					          <div class="">
					            <select id="state" name="state" class="form-control">
					            	<option value="">Choose State:</option>
									<option value="New South Wales">New South Wales</option>
									<option value="Victoria">Victoria</option>
									<option value="Queensland">Queensland</option>
									<option value="Western Australia">Western Australia</option>
									<option value="sa">South Australia</option>
									<option value="tas">Tasmania</option>
									<option value="act">Australian Capital Territory</option>
									<option value="nt">Northern Territory</option>
								</select>
					          </div>
						        <div class="">
						            <select id="suburb" name="suburb" class="form-control">
								        <option value="">Choose Suburb:</option>
										<option value="Sydney">Sydney</option>
										<option value="glebe">Glebe</option>
										<option value="ultimo">Ultimo</option>
										<option value="pyrmont">Pyrmont</option>
										<option value="chippendale">Chippendale</option>
										<option value="newtown">Newtown</option>
										<option value="erskineville">Erskineville</option>
										<option value="balmain">Balmain</option>
						            </select>
						        </div>
					        </div>
				        </div>
			        </div>
			
			        <!-- Button (Double) -->
			        <div style="clear:both"></div>
			        <div class="button-group">
			          <label class=" control-label" for="save"></label>
			          <div class="">
			            <button id="submit" name="submit" class="btn login-button">Submit</button>
			            <button id="cancel" name="cancel" class="btn login-button">Cancel</button>
			          </div>
			        </div>
			
		        </fieldset>
			</form>
		</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/register.js"></script>
	</body>
</html>
