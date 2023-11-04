package success;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.oreilly.servlet.MultipartRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jainish Shah
 */
public class student_success extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         MultipartRequest m=new MultipartRequest(request,"C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\ERP for INstitute\\web\\images\\teacher_images");
        String fname=m.getParameter("fname");
        String mname=m.getParameter("mname");
        String lname=m.getParameter("lname");
        String address=m.getParameter("address");
        String phone=m.getParameter("phone");
        String email=m.getParameter("email");
        String branch=m.getParameter("branch");
        String gender=m.getParameter("sex");
        String blood=m.getParameter("blood");
        String dob=m.getParameter("dob");
        Connection con=Config.connection.getConnection();
        HttpSession session=request.getSession();
        PreparedStatement psmt;
        ResultSet rs;
       try{
            String url="C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\ERP for INstitute\\web\\images\\teacher_images\\"+m.getParameter("txt1").substring(12);
            System.out.println(""+url);
            psmt=con.prepareStatement("insert into student_master(Branch,First_name,Middle_name,Last_name,Gender,Address,contact_no,email_id,pic,dob,Bloodgrp) values('"+branch+"','"+fname+"','"+mname+"','"+lname+"','"+gender+"','"+address+"','"+phone+"','"+email+"',?,'"+dob+"','"+blood+"')");
            psmt.setString(1,url);
            psmt.executeUpdate();
            response.sendRedirect("add_student.jsp");
        }
        catch(Exception e)
        {
               System.out.println(""+e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
