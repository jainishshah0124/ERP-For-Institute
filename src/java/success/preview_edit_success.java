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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jainish Shah
 */
public class preview_edit_success extends HttpServlet {

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
        String id=m.getParameter("id");
        String name=m.getParameter("name");
        String address=m.getParameter("address");
        String mob=m.getParameter("mob");
        String qua=m.getParameter("qua");
        String exp=m.getParameter("exp");
        String des=m.getParameter("designation");
        String branch=m.getParameter("branch");
        String a=m.getParameter("joining");
        String url;
        Connection con=Config.connection.getConnection();
        PreparedStatement psmt;
        ResultSet rs;
        try{
        if(m.getParameter("txt1").equals(""))
        {
           psmt=con.prepareStatement("select * from faculty_master where faculty_id='"+id+"'");
            rs=psmt.executeQuery();
            rs.next();
            url=rs.getString("photo");
        }
        else{
            url="C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\ERP for INstitute\\web\\images\\teacher_images\\"+m.getParameter("txt1").substring(12);
            System.out.println(""+url);
        }
         psmt=con.prepareStatement("update faculty_master set Name=?,Address=?,mobile=?,qualification=?,experience=?,join_date=?,designation=?,branch=?,photo=? where faculty_id='"+id+"'");
            psmt.setString(1,name);
            psmt.setString(2,address);
            psmt.setInt(3,Integer.parseInt(mob));
            psmt.setString(4,qua);
            psmt.setString(5,exp);
            psmt.setString(6,a);
            psmt.setString(7,des);
            psmt.setString(8,branch);
            psmt.setString(9,url);
            psmt.executeUpdate();
            out.println ("<script>");
             out.println ("window.close()");
            out.println ("</script>"); 
        }
        catch(Exception e)
        {
            out.println(""+e);
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
