<%-- 
    Document   : complaintadd.jsp
    Created on : 20 Dec, 2018, 2:39:31 PM
    Author     : sai ram
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <style>
  .vertical-menu {
    width: 200px; /* Set a width if you like */
	height: 100%;
	background-color:#d6d6d6;
	float:left;
}

.vertical-menu a {
    background-color:#d6d6d6; /* Grey background color */
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
 /* Bordered form */
form {
    border: 3px solid #f1f1f1;
	background-color:#d6d6d6;
	width:600px;
  height:400px;
	float:left;
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
	border: 3px solid #f1f1f1;
}

li a:hover {
    background-color: #ff6633;
}
.active {
    background-color: #ff6633;
}
body {
   background-image: url("../institute.jpg");
    background-repeat: no-repeat;
	 background-size: cover;
   }
</style> 
 <ul>
  <li><a href="../dashboard.html" class="active">ERP for institutes</a></li>

</ul>
 <div class="vertical-menu">
 
  <a href="../dashboard.html" >Home</a>
  <a href="../courses.html">Courses</a>
  <a href="../timetable_admin.html">Timetable</a>
  <a href="../attendance.html" >Attendance</a>
  <a href="../placement-add-admin.html" >Placements</a>
  <a href="complaint-add.html" class="active">Complaints</a>
   <a href="#">Contacts</a>
</div>

 
 <form method="post" action="complaint_addserv">
  <table align= "center">
  <col width="130">
  <col width="800">
 <h1>Complaints</h1>
    <p>Fill this form to file a complaint.</p>
  <tr>
   <td> <label ><b>Department</b></label> </td>
   <td> 
	<select name="Department_name" >
  <option value="Transport services">Transport services</option>
  <option value="Academics">Academics</option>
  <option value="IT services">IT services</option>
  <option value="Building Maintenance">Building Maintenance</option>
</select> 
</td>
 </tr>
   
   <tr>
    <td><label ><b>Describe your complaint</b></label> </td>
    <td><textarea rows="8" cols="50" placeholder="Complaint Overview" name="complaint_over" required> </textarea></td>
	</tr>
	
</table>
  <button align="right" type="submit">Submit</button> 
   
   
 


</form> 
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


<iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2FNIITUniv%2F&width=450&layout=standard&action=like&size=large&show_faces=true&share=true&height=80&appId=1655848621385135" width="450" align="right" height="180" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>

 
</html>
