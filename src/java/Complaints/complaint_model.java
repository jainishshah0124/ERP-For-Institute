/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Complaints;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author sai ram
 */
public class complaint_model {
    private static Connection con=null;
   
    static{  
    try{
			    Class.forName("com.mysql.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://Localhost/ERP","root","pandu1089");
				
			
} catch(Exception e){} 
}
    public static Connection getCon(){  
    return con;  
}
    public static int postcomplaint(String Department_name,String complaint_over){
        int i=0;
        System.out.print("Company_name"+Department_name);
        try{
              Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://Localhost/ERP","root","pandu1089");
				PreparedStatement ps = con.prepareStatement("insert into complaint values(?,?,?,?)");
				ps.setString(1,"XYZ");
                                ps.setString(2,Department_name);
				ps.setString(3,complaint_over);
                                ps.setString(4,"Status");
				
				 i = ps.executeUpdate();
                                 System.out.print("complaint_model_post" +i);
                                
                                
        }catch(Exception e){} 
 return i ;
    }
    
    public static ResultSet  getadmincomplaints(){
        
    ResultSet rs = null;
    try 
	 { 
	  Class.forName ("com.mysql.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ERP","root","pandu1089");
	  PreparedStatement ps = con.prepareStatement("select * from complaint "); 
          rs = ps.executeQuery();
	
         }
    catch(Exception e){} 
return rs;
    }
    
     public int add_marks(String student_name, String marks){
       int ex = 0;
       try{
          Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ERP","root","pandu1089");
      Statement st = con.createStatement();
      
       String query1 =  "UPDATE complaint SET status = "+"'"+ marks +"'"+" WHERE name = " + "'"+ student_name +"'";
       ex = st.executeUpdate(query1);
       System.out.println(ex+ "model");
    }
    catch(Exception e){
        e.printStackTrace();
    }
       return ex;
}
}
