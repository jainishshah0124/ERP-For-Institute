import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class loginServlet extends HttpServlet {
	
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("uname");
		String pw=request.getParameter("psw");
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "pandu1089"); // gets a new connection
 
		Statement ps = c.createStatement();
		Statement us = c.createStatement();
                String query = "select exists(select email,pass from registration where email= "+"'"+un +"'" +" and pass ="+"'"+pw +"'" +")";
		String ua_query = "select key_id from key_access where email_id= "+"'"+un +"'";
                ResultSet rs = ps.executeQuery(query);
                ResultSet rs2 = us.executeQuery(ua_query);
                RequestDispatcher rd = null;
                rs.next();
                int val = Integer.parseInt(rs.getObject(1).toString());
		if (val==1) {
                    if(rs2.getString("key_id").contains("S"))
			rd = request.getRequestDispatcher("dashboard_student.html");
                    else if(rs2.getString("key_id").contains("F"))
                        rd = request.getRequestDispatcher("dashboard_faculty.html");
                    else
                        rd = request.getRequestDispatcher("dashboard.html");
			
		}
		
		
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}