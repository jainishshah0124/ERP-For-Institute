<%-- 
    Document   : view_marks
    Created on : 20 Dec, 2018, 3:43:42 PM
    Author     : Shashank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
 .vertical-menu {
    width: 200px; /* Set a width if you like */
	height: 100%;
	background-color: #eee;
	float:left;
}
body {
   background-image: url("institute.jpg");
    background-repeat: no-repeat;
	 background-size: cover;
   }
.vertical-menu a {
    background-color: #eee; /* Grey background color */
    color: black; /* Black text color */
    display: block; /* Make the links appear below each other */
    padding: 20px; /* Add some padding */
    text-decoration: none; /* Remove underline from links */
	
}

.vertical-menu a:hover {
    background-color: #ccc; /* Dark grey background on mouse-over */
}

.vertical-menu a.active {
    background-color: #ff6633; 
    color: white;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #ff6633;
}

li {
    float: centre;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
	font-size: 25px;
    text-decoration: none;
}

li a:hover {
    background-color: #ff6633;
}
.active {
    background-color: #ff6633;
}
body {
   background-image: url("institute.jpg");
    background-repeat: no-repeat;
	 background-size: cover;
   }

.box{ 
border: 3px solid #f1f1f1;
	background: #eee;
	width:800px;
  height:450px;
  float:left;
   padding-left: 60px;
  

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
.button {
    background-color: #ff6633; 
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}

 ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #ff6633;
}

li {
    float: centre;
}

li a {
    
    color: white;
    text-align: center;
    padding: 14px 16px;
	font-size: 25px;
    text-decoration: none;
}

li a:hover {
    background-color: #ff6633;
}
.active {
    background-color: #ff6633;
}
body {
   background-image: url("institute.jpg");
    background-repeat: no-repeat;
	 background-size: cover;
   }
</style> 

  <ul>
  <li><a href="dashboard_student.html" class="active">ERP for institutes</a></li>

</ul>

</head>
 <div class="vertical-menu">
 
  <a href="dashboard_student.html" >Home</a>
  <a href="courses_student.jsp" class="active">Courses</a>
  <a href="timetable_admin.html">Timetable</a>
  <a href="attendance.html">Attendance</a>
  <a href="placement-add-admin.html">Placements</a>
  <a href="complaint/complaint-add.html">Complaints</a>
   <a href="#">Contacts</a>
</div>
<body>
 <%@ page import="courses.courses_model" %>
 <%@ page import="java.sql.*"%>
 <%@ page import="courses.view_marks"%>
<div class="box">
<h1 style="font-size: 50px">Courses</h1>
<form method = "POST" action="assess" >
  <h1 style="font-size: 35px">Marksheet</h1>
  <div class="container">
     
<br>
       <label for="Course_id"><b>Student Name:</b></label>
       <input type="text"  name="student_name" required/>
    
<br>
     
    <button type="submit">View</button>
   
  </div>

</form> 


<table id="dtable" >
  <tr>
    <th>course</th>
    <th>marks</th>
	
  </tr>
  <%
        view_marks o = new view_marks();
        
        ResultSet r = o.rs_collector();
        
        
        
            %>
            <%
                 while(r.next())
                    { %>
                <tr>
                 
                     <td>
                     <%= r.getString("course_name")%>
                     </td>
                     <td>
                     <%= r.getString("marks")%>
                     </td>
                     
                      </tr>
                <% 
                    }
                %>                   
               
   
  
  
</table>
<br/>
<br/>
	 

</body>
</html>
