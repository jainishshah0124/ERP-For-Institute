<%-- 
    Document   : deletecom
    Created on : 20 Dec, 2018, 2:02:23 AM
    Author     : sai ram
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
   padding-left: 80px;
  

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
   /* Set a style for all buttons */
button {
    background-color: #ff6633;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 140px;
}
</style> 

  <ul>
  <li><a href="dashboard.html" class="active">ERP for institutes</a></li>

</ul>

</head>
 <div class="vertical-menu">
 
    <a href="dashboard.html" >Home</a>
  <a href="courses_admin.jsp">Courses</a>
  <a href="timetable_admin">Timetable</a>
  <a href="attendance.html" >Attendance</a>
  <a href="index.jsp" class="active">Placements</a>
  <a href="complaintview.jsp">Complaints</a>
</div>

<center>
    <h1 style="font-size: 50px">Delete Company</h1>
     <form method="post" action="Deletecompanyserv">
    <table >
         <tr>
   <td> <label ><b>Company Reference number: </b></label> </td>
   <td> <input type="text" placeholder="reference number" name="reference" required> </td>
 </tr>
  <tr><td></td> <td><button type="submit">Submit</button> </td></tr>
    </table>
     </form>
</center>