<%-- 
    Document   : courses_admin
    Created on : 19 Dec, 2018, 11:34:05 PM
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
  <a href="courses_admin.jsp">Courses</a>
  <a href="timetable_admin.html">Timetable</a>
  <a href="index.jsp" class="active">Placements</a>
  <a href="complaintview.jsp">Complaints</a>
</div>
<body>
 <%@ page import="Placements.Placement_model" %>
 <%@ page import="java.sql.*"%>
<div class="box">
<h1 style="font-size: 50px">Companies</h1>

<table id="dtable"  >
  <tr>
    <th>Company_name</th>
    <th>company_over</th>
	<th>location</th>
        <th>job</th>
    <th>cgpa</th>
	<th>stipend</th>
        <th>ctc</th>
    <th>Qualifi</th>
	<th>respon</th>
        <th>reference</th>
  </tr>
  <%
       Placement_model p = new Placement_model();
        
        ResultSet r = p.getadmincompanies();
        
        
        
            %>
            <%
                 while(r.next())
                    { %>
                <tr>
                 
                     <td>
                     <%= r.getString("Company_name")%>
                     </td>
                     <td>
                     <%= r.getString("company_over")%>
                     </td>
                     <td>
                     <%= r.getString("location")%>
                     </td>
                     <td>
                     <%= r.getString("job")%>
                     </td>
                     <td>
                     <%= r.getString("cgpa")%>
                     </td>
                     <td>
                     <%= r.getString("stipend")%>
                     </td>
                     <td>
                     <%= r.getString("ctc")%>
                     </td>
                     <td>
                     <%= r.getString("Qualifi")%>
                     </td>
                     <td>
                     <%= r.getString("respon")%>
                     </td>
                     <td>
                     <%= r.getString("reference")%>
                     </td>
                     
                      </tr>
                <% 
                    }
                %>                   
          </table>     
   <br/>
<br/>
<a href="add.jsp" type="button" style=" background-color: #ff6633; 
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;" >Add New Company</a>
	<a href="deletecom.jsp" type="button" style=" background-color: #ff6633; 
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;" >Delete Company</a>
  
  



	

</body>
</html>
