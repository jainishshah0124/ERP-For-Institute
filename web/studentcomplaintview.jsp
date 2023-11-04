<%-- 
    Document   : studentcomplaintview
    Created on : 20 Dec, 2018, 5:25:36 PM
    Author     : sai ram
--%>

<%@page import="Complaints.complaint_model"%>
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

  <ul>
  <li><a href="dashboard.html" class="active">ERP for institutes</a></li>

</ul>

</head>
 <div class="vertical-menu">
 
  <a href="dashboard.html" >Home</a>
  <a href="courses.html" >Courses</a>
  <a href="timetable_admin.html">Timetable</a>
  <a href="attendance.html">Attendance</a>
  <a href="index.jsp" >Placements</a>
  <a href=" " class="active">Complaints</a>
   <a href="#">Contacts</a>
</div>
<body>

 <%@ page import="java.sql.*"%>
<div class="box">
<h1 style="font-size: 50px">Complaints</h1>

<table id="dtable"  >
  <tr>
    <th>Type</th>
    <th>Overview</th>
	<th>Status</th>
        
  </tr>
  <%
     complaint_model p = new complaint_model();
        
        ResultSet r = p.getadmincomplaints();
        
        
        
            %>
            <%
                 while(r.next())
                    { %>
                <tr>
                 
                     <td>
                     <%= r.getString("Department_name")%>
                     </td>
                     <td>
                     <%= r.getString("complaint_over")%>
                     </td>
                     <td>
                     <%= r.getString("status")%>
                     </td>
                     
                     
                      </tr>
                <% 
                    }
                %>                   
          </table>     
   <br/>
<br/>
<a href="complaintadd.jsp" type="button" style=" background-color: #ff6633; 
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;" >Add New Complaints</a>
	
  
  



	

</body>
</html>
