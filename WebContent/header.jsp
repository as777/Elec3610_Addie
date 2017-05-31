<%@ page import = "java.io.*,java.util.*" %>

<div class="masthead">
  <div class="container">
  
    <nav class="nav-left nav">
      <a class="nav-item" href="index.jsp">Home</a>
      <a class="nav-item" href="trending.jsp">Trending</a>
      <a class="nav-item" href="#">Popular</a>
      
	  <div class="input-group" id="search-input">
		  <input type="text" class="form-control" placeholder="Search for post">
		  <span class="input-group-btn">
			  <button class="btn btn-default" type="button">Search</button>
		  </span>
	  </div><!-- /input-group -->
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
<!--       <div class="header-out">
	      <a class="nav-item" href="register.jsp">Register</a>
	      <a class="nav-item" href="login.jsp">Sign In</a>
      </div>
      <div class="header-in">
		  <a class="nav-item" href="profile.jsp">Profile</a>
		  <a class="nav-item" href="logout">Sign Out</a>
	  </div> -->
    </nav>
  </div>
</div>