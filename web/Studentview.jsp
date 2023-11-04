<%-- 
    Document   : Studentview
    Created on : 20 Dec, 2018, 2:54:18 AM
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
 
   padding-left: 80px;
   margin-left: 400px;
  

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
  <a href="index.jsp" class="active">Placements</a>
  <a href="complaint/complaint-add.html">Complaints</a>
   <a href="#">Contacts</a>
</div>
<body>
 <%@ page import="Placements.Placement_model" %>
 <%@ page import="java.sql.*"%>

<center><h1 style="font-size: 50px">Companies</h1> </center>
<%
       Placement_model p = new Placement_model();
        
        ResultSet r = p.getadmincompanies();
        
        
        
            %>
            <%
                 while(r.next())
                    { %>
                    <table   class="box">
  <tr>
      
    <td><b>Company_name</b></td> <td>
                     <%= r.getString("Company_name")%>
                     </td>
  </tr>
  <tr>
    <td><b>Company_Over</b></td><td>
                     <%= r.getString("company_over")%>
                     </td>
    </tr>
  <tr>
	<td><b>Location</b></td> <td>
                     <%= r.getString("location")%>
                     </td>
        </tr>
  <tr>
        <td><b>JOB</b></td> <td>
                     <%= r.getString("job")%>
                     </td>
        </tr>
  <tr>
    <td><b>CGPA</b></td> <td>
                     <%= r.getString("cgpa")%>
                     </td>
    </tr>
  <tr>
	<td><b>Stipend</b></td><td>
                     <%= r.getString("stipend")%>
                     </td>
        </tr>
  <tr>
        <td><b>CTC</b></td> <td>
                     <%= r.getString("ctc")%>
                     </td>
        </tr>
  <tr>
    <td><b>Qualification</b></td>                     <td>
                     <%= r.getString("Qualifi")%>
                     </td>
    </tr>
  <tr>
	<td><b>Responsibilities</b></td><td>
                     <%= r.getString("respon")%>
                     </td>
        </tr>
  <tr>
      <td><b>Reference number</b></td>                     <td>
                     <%= r.getString("reference")%>
                     </td>
        </tr>
        <tr><td>
 <a href="apply.jsp" type="button" style=" background-color: #ff6633; 
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;" >Apply</a>
    </td></tr>
        <tr><td> </td><td></td></tr><tr><td></td></tr><tr><td></td></tr>
        <tr><td> </td><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                  <% 
                    }
                %> 
                <br>
          </table>     
   <br/>
<br/>



	

</body>
</html>

