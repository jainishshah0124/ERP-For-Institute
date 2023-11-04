/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Complaints;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Shashank
 */
public class complaintupdatesev extends HttpServlet {

    RequestDispatcher rd = null;
    
    
    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       int ex = 0; 
       PrintWriter on = response.getWriter();
       
         
       String student_name = request.getParameter("student_name");
       String marks = request.getParameter("status"); 
       
       System.out.println(student_name + marks);
       
      complaint_model obj = new complaint_model();
        
         ex = obj.add_marks(student_name, marks);
        
      if(ex != 0){
          rd = request.getRequestDispatcher("complaintadd.jsp");
			rd.include(request, response);
    }
       else{
            rd = request.getRequestDispatcher("complaintview.jsp");
			rd.include(request, response);
              }
      }
   
   
           
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       doGet(request,response);
   }
}
