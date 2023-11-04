<%-- 
    Document   : timetable_faculty
    Created on : 21 Dec, 2018, 11:48:01 AM
    Author     : Shashank
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Timetable.timetable_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.vertical-menu {
    width: 200px; /* Set a width if you like */
	height: 100%;
	background-color:#d6d6d6;
	float:left;
}

.vertical-menu a {
    background-color: #d6d6d6; /* Grey background color */
    color: black; /* Black text color */
    display: block; /* Make the links appear below each other */
    padding: 20px; /* Add some padding */
    text-decoration: none; /* Remove underline from links */
	border: 3px solid #f1f1f1;
}

.vertical-menu a:hover {
    background-color: #ccc; /* Dark grey background on mouse-over */
}

.vertical-menu a.active {
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
    margin: 4px 2px;
    cursor: pointer;
	 border-radius: 24px;
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
	border: 3px solid #f1f1f1;
	
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
  <li><a href="dashboard.html" class="active">ERP for institutes</a></li>

</ul>
</head>
 <div class="vertical-menu">
 
  <a href="dashboard.html" >Home</a>
  <a href="courses.html" >Courses</a>
  <a href="timetable_admin.html" class="active">Timetable</a>
  <a href="attendance.html">Attendance</a>
  <a href="placement-add-admin.html">Placements</a>
  <a href="complaint/complaint-add.html">Complaints</a>
   <a href="#">Contacts</a>
</div>
<body>
<%
    timetable_model tm= new timetable_model();
    
    ResultSet rs = tm.retlink2();
      rs.next();
      System.out.println(rs.getString("path"));

%>
<br>
<h1><% rs.getString("path");%></h1>

<br>
<br>
<a
    href=<%= rs.getString("path")%>  ><button style= "border: 3px solid white">Timetable</button></a>

</body>



</html>

