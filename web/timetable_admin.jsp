<%-- 
    Document   : timetable_admin
    Created on : 21 Dec, 2018, 11:48:52 AM
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
  <a href="courses_admin.html" >Courses</a>
  <a href="timetable_admin.html" class="active">Timetable</a>
  <a href="attendance.html">Attendance</a>
  <a href="index.jsp">Placements</a>
  <a href="complaintview.jsp">Complaints</a>
   <a href="#">Contacts</a>
</div>
<body>
<h1>File upload</h1>

<p>Show a file-select field which allows a file to be chosen for upload:</p>
<form method="POST" action="Timetable">
  timetable for students: <input type="text" name="mylink"><br><br>
  timetable for faculty: <input type="text" name="mylinkf"><br><br>
  <a input type="submit" style="border: 3px solid white;" class="button">Upload Timetable</a>
</form>
<br>


<br>

</body>



</html>

