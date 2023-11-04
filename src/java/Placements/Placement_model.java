/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Placements;

import java.sql.*;

/**
 *
 * @author sai ram
 */
public class Placement_model {
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
    public static int getPlacementadminpost(String Company_name,String company_over,String location,String job,String cgpa,String stipend,String ctc,String Qualifi,String respon){
        int i=0;
        System.out.print("Company_name"+Company_name);
        try{
            Class.forName("com.mysql.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://Localhost/ERP","root","pandu1089");
        PreparedStatement ps = con.prepareStatement("insert into details values(?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1,Company_name);
				ps.setString(2,company_over);
				ps.setString(3,location);
				ps.setString(4,job);
				ps.setString(5,cgpa);
				ps.setString(6,stipend);
				ps.setString(7,ctc);
				ps.setString(8,Qualifi);
				ps.setString(9,respon);
				ps.setString(10,respon);
				
				 i = ps.executeUpdate();
                                 System.out.print("model" +i);
                                
                                
        }catch(Exception e){} 
 return i ;
    }
    
    public static ResultSet  getadmincompanies(){
        
    ResultSet rs = null;
    try 
	 { 
	  Class.forName ("com.mysql.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ERP","root","pandu1089");
	  PreparedStatement ps = con.prepareStatement("select * from details "); 
          rs = ps.executeQuery();
	
         }
    catch(Exception e){} 
return rs;
    }
    
     public static ResultSet  getstudentapplied(){
        
    ResultSet rs1 = null;
    try 
	 { 
	  Class.forName ("com.mysql.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ERP","root","pandu1089");
	  PreparedStatement ps = con.prepareStatement("select * from student "); 
          rs1 = ps.executeQuery();
	
         }
    catch(Exception e){} 
return rs1;
    }
     
        public int delete_company(String id){
       int rs0 = 0;
       System.out.println(id + " delete");
       try{
          Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ERP?SSL=false","root","pandu1089");
      Statement st = con.createStatement();
      
       String sql = "DELETE FROM details WHERE reference = " +"'"+ id +"'" ;
 
       rs0 = st.executeUpdate(sql);
       System.out.println(rs0 + " Modeldelete");
    }
    catch(Exception e){
        e.printStackTrace();
    }
       return rs0;
   }
        
        public static int postapply(String name,String enrollment ,String reference,String job){
        int i=0;
        
        try{
             Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://Localhost/ERP","root","pandu1089");
				PreparedStatement ps = con.prepareStatement("insert into student values(?,?,?,?)");
				ps.setString(1,name);
				ps.setString(2,enrollment);
				ps.setString(3,reference);
				ps.setString(4,job);
			
				
				 i = ps.executeUpdate();
                                 System.out.print("model" +i);
                                
                                
        }catch(Exception e){} 
 return i ;

}
}
