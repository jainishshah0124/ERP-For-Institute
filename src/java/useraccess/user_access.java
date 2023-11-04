
package useraccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

public class user_access {
   
    
    
    public String unique_key(String usertype){
    
        String key = "";
        Random r = new Random();
        
        int rn = 0;
    /*
      do{
          rn = r.nextInt(1000);
          if(usertype.equals("student")){
            key = rn + "_S" ;
        }
        else if(usertype.equals("faculty")){
            key = rn + "_F";
        }
          if(!key_checker(key))
              break;
          
      }while(key_checker(key));
      
      return key;
      */
    
    rn = r.nextInt(1000);
          if(usertype.equals("student")){
            key = rn + "S" ;
        }
        else if(usertype.equals("faculty")){
            key = rn + "F";
        }
    return key;
}

public boolean key_checker(String key){
    boolean chek = false ;
    try{
        Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen_management","root","pandu1089"); 
    Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("SELECT EXISTS(" + "SELECT * FROM key_access WHERE key_id = " + "'" + key  + "'" + ")" );
     rs.next();   
     int val = Integer.parseInt(rs.getObject(1).toString());
     if(val==1)
     {
       chek = true;  
     }
     else
         chek = false;

    }
    catch(Exception e){
        e.printStackTrace();
    }
    return chek;
}

public boolean add_to_db(String key){
    
    boolean db = false;
    try{
     
        Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen_management","root","pandu1089");
       Statement st = con.createStatement();
        
      int b = st.executeUpdate("insert into key values(" + "'" + key + "'" + ")");
        
       if(b ==1){
           db = true;
       }   
    }
    catch(Exception e){
        e.printStackTrace();
    }
    return db;
}
}