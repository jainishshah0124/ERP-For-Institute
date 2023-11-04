/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package courses;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Shashank
 */
public class enroll extends HttpServlet {

    
    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
        PrintWriter on = response.getWriter();
       String student = request.getParameter("student_name");
       String course_name = request.getParameter("course_name");
       RequestDispatcher rd = null;
      
      courses_model mo = new courses_model();
      
      int ex = mo.enroll(student, course_name);
      
      if(ex > 0){
          rd = request.getRequestDispatcher("courses_student.jsp");
			rd.include(request, response);
    }
       else{
            rd = request.getRequestDispatcher("enroll.jsp");
			rd.include(request, response);
              }
      }  
   
    @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       doGet(request,response);
   }
}