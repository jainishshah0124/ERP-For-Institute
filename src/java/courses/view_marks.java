/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package courses;

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
public class view_marks extends HttpServlet {

    
    RequestDispatcher rd = null;
    
    public static String student_name = "";
    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
        PrintWriter on = response.getWriter();
       
        student_name = request.getParameter("student_name");
       
        ResultSet res = rs_collector();
        
      if(res != null){
          rd = request.getRequestDispatcher("view_marks.jsp");
			rd.include(request, response);
    }
       else{
            rd = request.getRequestDispatcher("view.html");
			rd.include(request, response);
              }
      }
   
   public static ResultSet rs_collector(){
       ResultSet rs = null;
       
       courses_model mo = new courses_model();
      
      rs = mo.marks(student_name);
      
       
       return rs;
   }
           
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       doGet(request,response);
   }
}
