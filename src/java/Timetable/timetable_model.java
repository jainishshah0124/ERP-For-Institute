
package Timetable;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;

public class timetable_model {
    
    
    public ResultSet ret_link(){
        ResultSet rs = null;
        try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP", "root", "pandu1089"); // gets a new connection
 
		Statement ps = c.createStatement();
		
                String query = "select student_path from timetable_files_st ";
                 rs = ps.executeQuery(query);
                
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return rs;
    }


public ResultSet retlink2(){
ResultSet rs = null;
        try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP", "root", "pandu1089"); // gets a new connection
 
		Statement ps = c.createStatement();
		
                String query = "select path from timetable_files_f ";
                 rs = ps.executeQuery(query);
                
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return rs;
}


public int upload_st(String path){
int rs = 0;
        try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP", "root", "pandu1089"); // gets a new connection
 
		Statement ps = c.createStatement();
		
                String query = "insert into timetable_files_st values("+"'"+path+"'" +")";
                 rs = ps.executeUpdate(query);
                
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return rs;
}
public int upload_f(String path){
int rs = 0;
        try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ERP", "root", "pandu1089"); // gets a new connection
 
		Statement ps = c.createStatement();
		
                String query = "insert into timetable_files_f values("+"'"+path+"'" +")";
                 rs = ps.executeUpdate(query);
                
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return rs;
}
}