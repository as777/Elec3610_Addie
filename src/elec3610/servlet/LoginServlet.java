package elec3610.servlet;

import java.io.*;
import java.sql.*;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class LoginServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException { 
		response.setContentType("text/html");  
	    request.getRequestDispatcher("login.jsp").include(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException {  
	  
	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
//	    request.getRequestDispatcher("header.html").include(request, response);
	          
	    String email = request.getParameter("email");  
	    String password = request.getParameter("password");  
	          
	    if(validate(email, password, request)) {  
	        request.getRequestDispatcher("index.jsp").include(request, response);
	    }  
	    else{
//	    	out.print("Please check the username or password is correct."); 
	    	request.setAttribute("message", "Invalid email or password.");
            request.getRequestDispatcher("login.jsp").include(request, response);
	    }  
	          
	    out.close();  
    }

	private boolean validate(String email, String password, 
			HttpServletRequest request) {
		
//		ResultSet rs;
		boolean status = false;
		System.out.println("verify: " + email + " " + password);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String mysqlUrl = "jdbc:mysql://localhost:3306/elec3610";
			Properties userInfo = new Properties();
			userInfo.put("user", "root");
			Connection connection = DriverManager.getConnection(mysqlUrl, userInfo);
			
			String sql = "SELECT * FROM user WHERE email=? AND password=?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, email);
			stmt.setString(2, password);
			
			ResultSet rs = stmt.executeQuery();  
			status = rs.next();
			
			// Session attributes
			if (status) {
				HttpSession session=request.getSession(); 
		        session.setAttribute("email", email);
		        session.setAttribute("firstname", rs.getString("firstname"));
		        session.setAttribute("lastname", rs.getString("lastname"));
		        session.setAttribute("age", rs.getString("age"));
		        session.setAttribute("gender", rs.getString("gender"));
		        session.setAttribute("state", rs.getString("state"));
		        session.setAttribute("suburb", rs.getString("suburb"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}  
}
