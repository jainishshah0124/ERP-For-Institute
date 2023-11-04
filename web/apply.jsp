<%-- 
    Document   : apply
    Created on : 20 Dec, 2018, 3:39:12 AM
    Author     : sai ram
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <style>
 .vertical-menu {
    width: 200px; /* Set a width if you like */
	height: 100%;
	background-color: #d6d6d6;
	float:left;
}

.vertical-menu a {
    background-color: #d6d6d6; /* Grey background color */
    color: black; /* Black text color */
    display: block; /* Make the links appear below each other */
    padding: 20px; /* Add some padding */
    text-decoration: none; /* Remove underline from links */
	border: 3px solid white;
}

.vertical-menu a:hover {
    background-color: #ccc; /* Dark grey background on mouse-over */
}

.vertical-menu a.active {
    background-color: #ff6633; 
    color: white;
}
 /* Bordered form */
form {
        border: 3px solid #f1f1f1;
	background: #d6d6d6;
	width:700px;
  height:400px;
  float:left;
  margin-left: 200px;
}

/* Full-width inputs */
input[type=text], input[type=password] {
    width: 85%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	  text-align: center;
}

/* Set a style for all buttons */
button {
    background-color: #ff6633;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 140px;
	 border-radius: 24px;
	 text-align:center;
	 float:right;
	 border: 3px solid white;
}

/* Add a hover effect for buttons */
button:hover {
    opacity: 0.8;
	
}

/* Extra style for the cancel button (red) */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}



/* icon image */
img.icon {
    width: 10%;
    border-radius: 20%;
}

/* Add padding to containers */
.container {
   
	 
}



/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
        display: block;
        float: none;
    }
    .cancelbtn {
        width: 100%;
    }
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
	border: 3px solid white;
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
 <div class="vertical-menu">
 
  <a href="dashboard.html" >Home</a>
  <a href="courses.html">Courses</a>
  <a href="timetable_admin.html">Timetable</a>
  <a href="attendance.html" >Attendance</a>
  <a href="index.jsp" class="active">Placements</a>
  <a href="complaint/complaint-add.html">Complaints</a>
   <a href="#">Contacts</a>
</div>
 
  
 <form method="post" action="applyserv" >
  <table align= "center">
  <col width="130">
  <col width="800">
 
  <tr>
   <td> <b>Student Name</b> </td>
   <td> <input type="text" placeholder="Name" name="name" required> </td>
 </tr>
   

	 <tr>
<td>	 <b>Enrollment</b></td>
   <td> <input type="text" placeholder="Enrollment" name="Enrollment" required></td> 
</tr>
	
<tr>
 <td><b>Reference number</b></td>
    <td><input type="text" placeholder="Reference number" name="reference" required></td>
</tr>
	
<tr>
 <td><b>Job Role</b></td>
    <td><input type="text" placeholder="Job Role" name="role" required></td>
</tr>
	
</table>
<button type="submit" >Submit</button> 
   
 


</form> 
 