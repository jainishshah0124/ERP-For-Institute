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


public class loginserv extends HttpServlet {
	
        @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("email_id");
		String pw=request.getParameter("password");
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP", "root", "pandu1089"); // gets a new connection
 
		Statement ps = c.createStatement();
		Statement us = c.createStatement();
                String query = "select exists(select * from registration where email= "+"'"+un +"'" +" and pass ="+"'"+pw +"'" +")";
		String ua_query = "select * from key_access where email_id= "+"'"+un +"'";
                ResultSet rs = ps.executeQuery(query);
                ResultSet rs2 = us.executeQuery(ua_query);
                RequestDispatcher rd = null;
                rs.next();
                int val = Integer.parseInt(rs.getObject(1).toString());
                rs2.next();
                System.out.println(val);
                System.out.println(rs2.getString("key_id").contains("S"));
		if (val==1) {
                    if(rs2.getString("key_id").contains("S")){
			rd = request.getRequestDispatcher("dashboard_student.html");
                                 rd.forward(request, response);
                    }
                    else if(rs2.getString("key_id").contains("F")){
                        rd = request.getRequestDispatcher("dashboard_faculty.html");
                        rd.forward(request, response);
                    }
                    else{
                        rd = request.getRequestDispatcher("dashboard.html");
                        rd.forward(request, response);
                    }
		}
		
		
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
        }
        

}