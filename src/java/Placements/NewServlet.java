/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Placements;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class NewServlet extends HttpServlet  {
	public void doPost(HttpServletRequest request, HttpServletResponse response ) throws IOException, ServletException {
	 response.setContentType("text/html;charset=UTF-8 ");
     PrintWriter pw = response.getWriter();
		String Company_name = request.getParameter("Company_name");
		String company_over = request.getParameter("company_over");
		String location = request.getParameter("location");
		String job = request.getParameter("job");
		String cgpa = request.getParameter("cgpa");
		String stipend = request.getParameter("stipend");
		String ctc = request.getParameter("ctc");
		String Qualifi = request.getParameter("Qualifi");
		String respon = request.getParameter("respon");
		String reference = request.getParameter("reference");
	       try{
			    
                           System.out.print(Company_name);
			    int j = Placement_model.getPlacementadminpost(Company_name, company_over, location, job, cgpa, stipend, ctc, Qualifi, respon);
				
				if(j>0)
				{
					
					RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			            rd.forward(request,response);
						
				}  else 
                                    pw.print(j);
		   }
		   catch(Exception se)
		   {
			   se.printStackTrace();
		   }
        }
               
}
				
			    
			   
