/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package courses;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;



public class courses_model {
    
    public int add_new_course(String course_id,String course_name,String course_incharge,String credits){
        int ex = 0;
        int no_credits = 0;
         String status = "newly_created";
         int no_students = 0;
                 
        if(credits != null){
            no_credits = Integer.parseInt("" + credits);
        }
        String query = "Insert into courses values('" + course_id + "','" + course_name + "','" + course_incharge + "','" + no_credits + "','" + no_students + "','" + status + "')";
        
        try{
          Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP","root","pandu1089");
      Statement st = con.createStatement();
       ex = st.executeUpdate(query);
       
    }
    catch(Exception e){
        e.printStackTrace();
    }
    return ex;
    
}
   public ResultSet display_courses(){
       ResultSet rs = null;
       try{
          Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP","root","pandu1089");
      Statement st = con.createStatement();
      
       String query1 =  "Select course_name,course_incharge,credits from courses";
       rs = st.executeQuery(query1);
    }
    catch(Exception e){
        e.printStackTrace();
    }
       return rs;
   }
   
   public int delete_course(String id){
       int rs = 0;
       try{
          Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP","root","pandu1089");
      Statement st = con.createStatement();
      
       String sql = "DELETE FROM courses WHERE Course_id = " +"'"+ id +"'" ;
 
       rs = st.executeUpdate(sql);
       System.out.println(rs + " Model");
    }
    catch(Exception e){
        e.printStackTrace();
    }
       return rs;
   }
   
   public int enroll(String name,String course){
       int ex = 0;
       int marks = 0;
       try{
           String check = "SELECT EXISTS(SELECT * FROM student_courses WHERE student = " + "'" + name + "'" + " AND course_name = " + "'" + course + "'" + ")";

           
           String query = "insert into student_courses values(" + "'"+name +"'" + "," + "'" + course + "'" +","+"'" + marks + "'" + ")";
          Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP","root","pandu1089");
      Statement st = con.createStatement();
      Statement st1 = con.createStatement();
      ResultSet rs = st1.executeQuery(check);
      rs.next();   
     int val = Integer.parseInt(rs.getObject(1).toString());
     if(val!=1)
     {

       ex = st.executeUpdate(query);
     }
    }
    catch(Exception e){
        e.printStackTrace();
    }
    return ex;
   }
   
   public int unenroll(String name,String course){
       int ex = 0;
       
       try{
           String check = "SELECT EXISTS(SELECT * FROM student_courses WHERE student = " + "'" + name + "'" + " AND course_name = " + "'" + course + "'" + ")";

           
           String query = "delete from student_courses where student = " + "'"+ name +"'" + " and course_name = " + "'" + course + "'";
          Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP","root","pandu1089");
      Statement st = con.createStatement();
      Statement st1 = con.createStatement();
      ResultSet rs = st1.executeQuery(check);
      rs.next();   
     int val = Integer.parseInt(rs.getObject(1).toString());
     if(val==1)
     {

       ex = st.executeUpdate(query);
     }
    }
    catch(Exception e){
        e.printStackTrace();
    }
    return ex;
   }
   
   public ResultSet students(String course_name){
       ResultSet rs = null;
       try{
          Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP","root","pandu1089");
      Statement st = con.createStatement();
      
       String query1 =  "Select * from student_courses where course_name = "+"'"+ course_name +"'";
       rs = st.executeQuery(query1);
    }
    catch(Exception e){
        e.printStackTrace();
    }
       
       
       return rs;
   } 
   
   public int add_marks(String student_name, String marks){
       int ex = 0;
       try{
          Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP","root","pandu1089");
      Statement st = con.createStatement();
      
       String query1 =  "UPDATE student_courses SET marks = "+ marks +" WHERE student = " + "'"+ student_name +"'";
       ex = st.executeUpdate(query1);
       System.out.println(ex+ "model");
    }
    catch(Exception e){
        e.printStackTrace();
    }
       return ex;
   }
   public ResultSet marks(String student_name){
       ResultSet rs = null;
       try{
          Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP","root","pandu1089");
      Statement st = con.createStatement();
      
       String query1 =  "Select * from student_courses where student = "+"'"+ student_name +"'";
       rs = st.executeQuery(query1);
    }
    catch(Exception e){
        e.printStackTrace();
    }
       
       
       return rs;
   } 
    
}