package elec3610.servlet;

import java.io.*;
import java.sql.*;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class LoginServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException {  
	  
	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
//	    request.getRequestDispatcher("header.html").include(request, response); 
	          
	    String email = request.getParameter("email");  
	    String password = request.getParameter("password");  
	          
	    if(validate(email, password)){  
	    	out.print("Welcome, "+ email);  
	        HttpSession session=request.getSession();  
	        session.setAttribute("email", email);  
	        
	        request.getRequestDispatcher("index.html").include(request, response);
	    }  
	    else{
	    	out.print("Please check the username or password is correct.");  
            request.getRequestDispatcher("login.html").include(request, response);
	    }  
	          
	    out.close();  
    }

	private boolean validate(String email, String password) {
		boolean status = false;
		System.out.println("verify: " + email + " " + password);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String mysqlUrl = "jdbc:mysql://localhost:3306/elec3610";
			Properties userInfo = new Properties();
			userInfo.put("user", "root");
			Connection connection = DriverManager.getConnection(mysqlUrl, userInfo);
			
			String sql = "SELECT * FROM user WHERE email=? AND password=?";
			System.out.println(sql);
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, email);
			stmt.setString(2, password);
			
			ResultSet rs=stmt.executeQuery();  
			status=rs.next();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}  
}
