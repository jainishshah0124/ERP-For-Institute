package Complaints;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class complaint_addserv extends HttpServlet  {
	public void doPost(HttpServletRequest request, HttpServletResponse response ) throws IOException, ServletException {
	 response.setContentType("text/html;charset=UTF-8 ");
     PrintWriter pw = response.getWriter();
		String Department_name = request.getParameter("Department_name");
		String complaint_over = request.getParameter("complaint_over");
		
	       try{
			 
				
				
				int j = complaint_model.postcomplaint(Department_name, complaint_over);
				
				if(j>0)
				{
					
					RequestDispatcher rd=request.getRequestDispatcher("compleantadd.jsp");
			            rd.forward(request,response);
						
				 
				}
		   }
		   catch(Exception se)
		   {
			   se.printStackTrace();
		   }
	}
}
				
			    
			   