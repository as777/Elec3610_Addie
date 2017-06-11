package elec3610.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.*;


public class RegisterServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
	    request.getRequestDispatcher("register.html").include(request, response);
	}

	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException {
		
		String[] interests = request.getParameterValues("interests");
		if (interests.length < 3) {
			return;
		}
		
		String firstname = request.getParameter("firstname");
		System.out.println("firstname=" + firstname);
		
		String lastname = request.getParameter("lastname");
		System.out.println("lastname=" + lastname);
		
		String email = request.getParameter("email");
		System.out.println("email=" + email);
		
		String password = request.getParameter("password");
		System.out.println("password=" + password);
		if (password.length() < 8) {
			return;
		}
		
		String rpassword = request.getParameter("rpassword");
		System.out.println("rpassword=" + rpassword);
		if (!rpassword.equals(password)) {
			return;
		}
		
		String age = request.getParameter("age");
		System.out.println("age=" + age);
		
		String gender = request.getParameter("gender");
		System.out.println("gender=" + gender);
		
		String state = request.getParameter("state");
		System.out.println("state=" + state);
		
		String suburb = request.getParameter("suburb");
		System.out.println("suburb=" + suburb);
		
		// add the data to the server
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String mysqlUrl = "jdbc:mysql://localhost:3306/elec3610";
			Properties userInfo = new Properties();
			userInfo.put("user", "root");
			Connection connection = DriverManager.getConnection(mysqlUrl,userInfo);
			Statement stmt = connection.createStatement();
			
			String sql = "INSERT INTO user VALUES (null, '"+firstname+"', '"
					+lastname+"', '"+email+"', '"+password+"', '"
					+age+"', '"+gender+"', '"+state+"', '"+suburb+"', 'viewer')";
	        stmt.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
			System.out.println("Inserted records into the table user");
			
			int user_id = -1;

			ResultSet rs = stmt.getGeneratedKeys();

		    if (rs.next()) {
		    	user_id = rs.getInt(1);
		    } else {
		    	throw new SQLException("Creating user failed, no ID obtained.");
		    }
			
			for (String i : interests) {
				sql = "INSERT INTO user_tags VALUES (null, "+user_id+", '"
						+i+"', 1)";
				stmt.executeUpdate(sql);
			}
		       
	        // response to the client
//	        PrintWriter out = response.getWriter();
//	        response.setContentType("text;html;charset=utf-8");
//	        out = response.getWriter();
//			out.print("You have inserted a new user");
			
//			// Set response content type
//		    response.setContentType("text/html");
//
//		    // New location to be redirected
//		    response.setStatus(response.SC_MOVED_TEMPORARILY);
//		    response.setHeader("Location", "login.html");
//		    
			PrintWriter out = response.getWriter();
//			out.print("Thank you for sign up, please log in");
//		    response.sendRedirect("login.html");
			request.getRequestDispatcher("login.html").include(request, response);
		    out.close();

		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
}
