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
input[type=text], input[type=password] {
    width: 140px;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	  text-align: center;
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
  height:550px;
  float:left;
   padding-left: 80px;
   margin-left: 80px;
  

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
    </head>
    <body>
        </style> 

  <ul>
  <li><a href="dashboard.html" class="active">ERP for institutes</a></li>

</ul>

</head>
 <div class="vertical-menu">
 
 <a href="dashboard.html" >Home</a>
  <a href="courses_admin.jsp">Courses</a>
  <a href="timetable_admin">Timetable</a>

  <a href="index.jsp" >Placements</a>
  <a href="complaintview.jsp" class="active">Complaints</a>
</div>
<body>
 <%@ page import="Placements.Placement_model" %>
 <%@ page import="java.sql.*"%>
<div class="box">

        <%@ page import="Complaints.complaint_model" %>
 <%@ page import="java.sql.*"%>
 
        <form method = "POST" action="complaintupdatesev" >
  <h1 style="font-size: 35px">Update Complaint Status</h1>
  <div class="container">
     <table>
           <col width="130">
  <col width="130">
<br><tr><td>
       <label for="Course_id"><b>Student Name:</b></label></td>
     <td>  <input type="text"  name="student_name" required/></td>
    </tr>
<br>
<tr>
    <td> <label for="Course_id"><b>Status</b></label></td>
      <td> <input type="text"  name="status" required/></td>
       </tr>
     </table>
    <button type="submit">Update</button>
   
  </div>

</form> 
   <br> 
       <h2>Students Complaints</h2> 
       <br>
       <table id="dtable" >
  <tr>
    <th>Student Name</th>
    <th>Department Name</th>
    <th>Complaint Overview</th>
    <th>Status</th>
	
  </tr>
  <%
        
      complaint_model a = new complaint_model();  
      
        ResultSet r = a.getadmincomplaints();        
        
        
            %>
            
            <%
                 while(r.next())
                    { 
                    
            %>
             <form method = "POST" action="update_marks">
                <tr>
                 
                     <td>
                         <label name = "student_name" ><%= r.getString("name")%></label>
                     </td>
                     <td>
                         <%= r.getString("Department_name") %> 
                     </td>
                     <td>
                     <%= r.getString("complaint_over") %> 
                     </td>
                      <td>
                     <%= r.getString("status") %> 
                     </td>
                      </tr>
                </form>
                <% 
                    
                    }
                %>
               
               
 
    </body>
</html>
