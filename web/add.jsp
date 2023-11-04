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
  height:900px;
  float:left;
  margin: 0px 0px 0px 200px;
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
  <a href="courses_admin.jsp">Courses</a>
  <a href="timetable_admin.html">Timetable</a>
  <a href="index.jsp" class="active">Placements</a>
  <a href="complaintview.jsp">Complaints</a>
</div>
 
  
 <form method="post" action="NewServlet" >
  <table align= "center">
  <col width="130">
  <col width="800">
 
  <tr>
   <td> <b>Company Name</b> </td>
   <td> <input type="text" placeholder="Company_name" name="Company_name" required> </td>
 </tr>
   
   <tr>
    <td><b>Company Overview</b> </td>
    <td><textarea rows="8" cols="50" placeholder="Company Overview" name="company_over" required> </textarea></td>
	</tr>
	
	 <tr>
<td>	 <b>Location</b></td>
   <td> <input type="text" placeholder="Location" name="location" required></td> 
</tr>
	
<tr>
 <td><b>Job Title</b></td>
    <td><input type="text" placeholder="Job Title" name="job" required></td>
</tr>
	
<tr>
 <td><b>CGPA Requirement</b></td>
    <td><input type="text" placeholder="CGPA Requirement" name="cgpa" required></td>
</tr>
	
<tr>
 <td><b>Stipend</b></td>
    <td><input type="text" placeholder="Stipend" name="stipend" required></td>
</tr>
	
<tr>
<td> <b>CTC</b></td>
    <td><input type="text" placeholder="CTC" name="ctc" required></td>
</tr>
	
<tr>
<td> <b> Qualifications</b></td>
    <td><textarea rows="8" cols="50" placeholder="Qualifications" name="Qualifi" required> </textarea></td>
</tr>
	
<tr>
 <td><b> Responsibilities</b></td>
    <td><textarea rows="8" cols="50" placeholder="Responsibilities" name="respon" required> </textarea></td>

</tr></table>
<button type="submit" >Submit</button> 
   
 


</form> 
 <iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2FNIITUniv%2F&width=450&layout=standard&action=like&size=large&show_faces=true&share=true&height=80&appId=1655848621385135" width="450" align="right" height="180" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
