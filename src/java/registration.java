import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import useraccess.user_access;

public class registration extends HttpServlet {

 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  RequestDispatcher rd = null;
  response.setContentType("text/html");
  PrintWriter out = response.getWriter();
  String name = request.getParameter("name");
  String email = request.getParameter("email_id");
  String pass = request.getParameter("password");
  String date = request.getParameter("date_of_birth");
  System.out.println(date + " --nothing");
  String gender = request.getParameter("gender");
  String dsg = request.getParameter("designation");
  String dept = request.getParameter("Department");
  String add = request.getParameter("Address");
  String mob = request.getParameter("phone");
  String city = request.getParameter("city");
  String pin = request.getParameter("pincode");
  String sta = request.getParameter("state");
  String cou = request.getParameter("Country");
  // validate given input
  //if (name.isEmpty() || email.isEmpty() || pass.isEmpty() || dsg.isEmpty() || mob.isEmpty() ) {
   //RequestDispatcher rd = request.getRequestDispatcher("register.html");
   //out.println("<font color=red>Please fill all the fields</font>");
   //rd.include(request, response);
  //} //else {
   // inserting data into mysql database 
   // create a test database and student table before running this to create table
   //create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
   try {
    Class.forName("com.mysql.jdbc.Driver");
    // loads mysql driver

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP", "root", "pandu1089"); 

    String query = "insert into registration values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
    String u_query = "insert into key_access values(?,?)";
    PreparedStatement ps1 = con.prepareStatement(u_query);
    
     ps1.setString(1, email);
     
     user_access ua = new user_access();
     
     String key = ua.unique_key(dsg);
     
     if(!key.equals(""))
     ps1.setString(2,key);
     
    PreparedStatement ps = con.prepareStatement(query); // generates sql query

    
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, pass);
    ps.setString(4, date);
    ps.setString(5, gender);
    ps.setString(6, dsg);
    ps.setString(7, dept);
    ps.setString(8, add);
    ps.setString(9, mob);
    ps.setString(10,city);
    ps.setString(11, pin);
    ps.setString(12, sta);
    ps.setString(13,cou);
    int ex = ps.executeUpdate(); 
    int ex2 = ps1.executeUpdate();
    if(ex > 0 && ex2 > 0){
    System.out.println("successfully inserted");
    rd = request.getRequestDispatcher("login.html");
    rd.include(request, response);
    }
    ps.close();
    con.close();
   } catch (ClassNotFoundException | SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
   }
   
  
  }
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   doGet(request,response);  
 }
 
}