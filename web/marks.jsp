<%-- 
    Document   : marks
    Created on : 20 Dec, 2018, 1:34:48 PM
    Author     : Shashank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
 /* Bordered form */
form {
    border: 3px solid #f1f1f1;
}
body {
   background-image: url("institute.jpg");
    background-repeat: no-repeat;
	 background-size: cover;
   }
/* Full-width inputs */
input[type=text], input[type=password] {
    width: 25%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	  text-align: center;
}

#dtable {
    font-family: Times New Roman;
    border-collapse: collapse;
    width: 90%;

}
#dtable td, #dtable th {
    border: 1px solid #ddd;
    padding: 8px;
	
}
#dtable tr:hover {
background-color: #ddd;

}
#dtable th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #ff6633;
    color: white;

}
/* Set a style for all buttons */
button {
    background-color: #ff6633;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 20%;
}

/* Add a hover effect for buttons */
button:hover {
    opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #ff6633;
}





/* Add padding to containers */
.container {
    padding: 16px;
	 text-align: center;
}



/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.credits {
        display: block;
        float: none;
    }
    span.Course_incharge {
        display: block;
        float: none;
    }
    .cancelbtn {
        width: 100%;
    }
} 
 </style>
    </head>
    <body>
        <%@ page import="courses.courses_model" %>
 <%@ page import="java.sql.*"%>
 <%@ page import="courses.assess"%>
        <form method = "POST" action="update_marks" >
  <h1 style="font-size: 35px">Update Student Marks</h1>
  <div class="container">
     
<br>
       <label for="Course_id"><b>Student Name:</b></label>
       <input type="text"  name="student_name" required/>
    
<br>
     <label for="Course_id"><b>Marks:</b></label>
       <input type="text"  name="marks" required/>
       <br>
    <button type="submit">Update Marks</button>
   
  </div>

</form> 
   <br> 
       <h2>Students enrolled in the course:</h2> 
       <br>
       <table id="dtable" >
  <tr>
    <th>Student Name</th>
    <th>Marks</th>
	
  </tr>
  <%
        
      assess a = new assess();  
      
        ResultSet r = a.rs_collector();
        
        
        
            %>
            
            <%
                 while(r.next())
                    { 
                    
            %>
             
                <tr>
                 
                     <td>
                         <label name = "student_name" ><%= r.getString("student")%></label>
                     </td>
                     <td>
                         <label><%= r.getString("marks") %> </label><label> / 100</label>
                     </td>
                     
                      </tr>
                
                <% 
                    
                    }
                %>
       </table>
       <br>
       <a href="assess_course.jsp" > <button>Back to assessment</button></a>
 
    </body>
</html>
