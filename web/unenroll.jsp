<%-- 
    Document   : unenroll
    Created on : 20 Dec, 2018, 11:11:32 AM
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
        <form method = "POST" action="unenroll" >
  <h1 style="font-size: 35px">Unenroll from a course</h1>
  <div class="container">
      <label for="Course_id"><b>Name :</b></label>
       <input type="text"  name="student_name" required/>
<br>
       <label for="Course_id"><b>Course :</b></label>
       <input type="text"  name="course_name" required/>
    
<br>
     
    <button type="submit">UnEnroll</button>
   
  </div>

</form> 
   <br> 
       <h2>Available courses :</h2> 
       <br>
       <table id="dtable" >
  <tr>
    <th>course</th>
    <th>staff</th>
	<th>credits</th>
  </tr>
  <%
        courses_model o = new courses_model();
        
        ResultSet r = o.display_courses();
        
        
        
            %>
            <%
                 while(r.next())
                    { %>
                <tr>
                 
                     <td>
                     <%= r.getString("course_name")%>
                     </td>
                     <td>
                     <%= r.getString("course_incharge")%>
                     </td>
                     <td>
                     <%= r.getString("credits")%>
                     </td>
                      </tr>
                <% 
                    }
                %>
    </body>
</html>
