/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package courses;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Shashank
 */
public class Add_course extends HttpServlet {

    String status = "newly_created",s="";
     int no_credits,no_students = 0;
    
    RequestDispatcher rd ;
    
    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
        PrintWriter on = response.getWriter();
       String course_id = request.getParameter("course_id");
       String course_name = request.getParameter("course_name");
       String course_incharge = request.getParameter("course_incharge");
      s = request.getParameter("credits");
      
      courses_model mo = new courses_model();
      
      int ex = mo.add_new_course(course_id, course_name, course_incharge,s);
      
      if(ex > 0){
          rd = request.getRequestDispatcher("courses_admin.jsp");
			rd.include(request, response);
    }
       else{
            rd = request.getRequestDispatcher("add_new_course.html");
			rd.include(request, response);
              }
      }  
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       doGet(request,response);
   }
}
