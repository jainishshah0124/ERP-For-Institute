package Placements;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class applyserv extends HttpServlet  {
	public void doPost(HttpServletRequest request, HttpServletResponse response ) throws IOException, ServletException {
	 response.setContentType("text/html;charset=UTF-8 ");
     PrintWriter pw = response.getWriter();
		String name = request.getParameter("name");
		String enrollment = request.getParameter("enrollment");
		String reference = request.getParameter("reference");
		String job_pref = request.getParameter("job_pref");
		
		
	       try{
			   
			
				
				int j = Placement_model.postapply(name, enrollment, reference, job_pref);
				
				if(j>0)
				{
					
					RequestDispatcher rd=request.getRequestDispatcher("Studentview.jsp");
			            rd.forward(request,response);
						 pw.println("<script type=\"text/javascript\">");
					   pw.println("alert('sucessfully added');");
					   
					   pw.println("</script>");
				 
				}
		   }
		   catch(Exception se)
		   {
			   se.printStackTrace();
		   }
	}
}
				
			    
			   