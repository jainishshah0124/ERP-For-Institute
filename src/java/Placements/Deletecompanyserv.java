/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Placements;

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
public class Deletecompanyserv extends HttpServlet {

    RequestDispatcher rd ;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       Placement_model obj = new Placement_model();
        
        String id = request.getParameter("reference");
        
        int ex = obj.delete_company(id);
        
        System.out.println(ex);
        if(ex > 0){
        RequestDispatcher  rd = request.getRequestDispatcher("adminview.jsp");
			rd.include(request, response);
    }
       else{
         RequestDispatcher   rd = request.getRequestDispatcher("deletecom.jsp");
			rd.include(request, response);
              }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       doGet(request,response);
    }

    
}
