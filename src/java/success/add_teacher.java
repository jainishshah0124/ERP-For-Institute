/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package success;

import com.oreilly.servlet.MultipartRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jainish Shah
 */
public class add_teacher extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            MultipartRequest m=new MultipartRequest(request,"C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\ERP for INstitute\\web\\images\\teacher_images");
        String name=m.getParameter("name");
        String address=m.getParameter("address");
        String mob=m.getParameter("mob");
        String email=m.getParameter("email");
        String qua=m.getParameter("qua");
        String exp=m.getParameter("exp");
        String des=m.getParameter("designation");
        String branch=m.getParameter("branch");
        String gender=m.getParameter("gender");
        String blood=m.getParameter("blood");
        String a=m.getParameter("joining");
        Connection con=Config.connection.getConnection();
        HttpSession session=request.getSession();
        PreparedStatement psmt;
        ResultSet rs;
       try{
            String url="C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\ERP for INstitute\\web\\images\\teacher_images\\"+m.getParameter("txt1").substring(12);
            System.out.println(""+url);
            psmt=con.prepareStatement("insert into faculty_master(Name,Address,mobile,email,qualification,experience,join_date,designation,branch,photo,gender,bloodgrp) values('"+name+"','"+address+"','"+mob+"','"+email+"','"+qua+"','"+exp+"','"+a+"','"+des+"','"+branch+"',?,'"+gender+"','"+blood+"')");
            psmt.setString(1,url);
            psmt.executeUpdate();
            response.sendRedirect("mnage_teacher.jsp");
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
