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
    text-align: center;
    padding: 15px 33px;
	font-size: 15px;
  
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
    padding: 15px 30px;
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
 <center>
  <br>
  <br>
 <a href="add.jsp" type="button" style=" background-color: #ff6633; 
    border: none;
    color: white;
    padding: 15px 36px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border:3px solid white" >Add Companies</a>
	<br>
	<br>
       <a href="deletecom.jsp" type="button" style=" background-color: #ff6633; 
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border:3px solid white" >Delete Companies</a>
    
    <br>
    <br>
        
	<form method="get" action="adminview.jsp">
 <button type="submit">View Companies</button> <br>
 </form>
	<form method="get" action="adminstudentapply.jsp">
 <button type="submit">Applied Students</button> <br>
 </form>
   
 


</form> 
 </center>
 