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
import javax.servlet.RequestDispatcher;
/**
 *
 * @author Shashank
 */
public class delete_serv extends HttpServlet {

    RequestDispatcher rd ;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        courses_model obj = new courses_model();
        
        String id = request.getParameter("course_id");
        
        int ex = obj.delete_course(id);
        
        System.out.println(ex);
        if(ex > 0){
          rd = request.getRequestDispatcher("courses_admin.jsp");
			rd.include(request, response);
    }
       else{
            rd = request.getRequestDispatcher("delete_course.html");
			rd.include(request, response);
              }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       doGet(request,response);
    }

    
}
