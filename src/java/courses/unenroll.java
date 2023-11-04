
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
public class unenroll extends HttpServlet {

    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
        PrintWriter on = response.getWriter();
       String student = request.getParameter("student_name");
       String course_name = request.getParameter("course_name");
       RequestDispatcher rd = null;
      
      courses_model mo = new courses_model();
      
      int ex = mo.unenroll(student, course_name);
      
      if(ex > 0){
          rd = request.getRequestDispatcher("courses_student.jsp");
			rd.include(request, response);
    }
       else{
            rd = request.getRequestDispatcher("unenroll.jsp");
			rd.include(request, response);
              }
      }  
   
    @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       doGet(request,response);
   }
}
