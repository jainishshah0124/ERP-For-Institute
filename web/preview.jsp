<%-- 
    Document   : preview
    Created on : Feb 23, 2018, 9:42:47 PM
    Author     : Jainish Shah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
            <link rel="stylesheet" href="CSS/font.css" />
        <link rel="stylesheet" href="CSS/font-awesome.min.css" />
		<!--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,800">-->
        <link href="CSS/schoolsoft.css" media="screen" rel="stylesheet" type="text/css" />
        <!--[if lt IE 9]>
        <script src="http://sms.w3developer.org/template/js/html5shiv.js" type="text/javascript"></script>
        <script src="http://sms.w3developer.org/template/js/excanvas.js" type="text/javascript"></script>
        <![endif]-->
        <script src="JS/w3dev.js" type="text/javascript"></script>
        <script src="JS/jquery.base64.js" type="text/javascript"></script>
		<script type="text/javascript" src="JS/jquery.tablesorter.js"></script> 
		<script src="JS/sp8.js" type="text/javascript"></script>
		<script src="JS/sp-8-form-validation.js" type="text/javascript"></script>
    </head>
    
    
<body>
    <%
                                Connection con=Config.connection.getConnection();
                                PreparedStatement ps=con.prepareStatement("select * from faculty_master where faculty_id='"+request.getParameter("id")+"'");
                                ResultSet rs=ps.executeQuery();
                                rs.next();
                         %>
<center>
<div class="box">
	<div class="">
		<div class="title">
			<div style="float:left;width:370px;height:147px;text-align:left;position:relative; margin-bottom:20px;">
				<div class="avatar" style="position:absolute;bottom:0px;left:20px;">
                                    <img src="<%=rs.getString("photo").substring(71)%>" 
						class="avatar-big" style="max-height:130px;max-width:130px;" />
				</div>
				<div  style="position:absolute; bottom:10px;left:150px;">
					<h3 style=" color:#666;font-weight:100;"><%=rs.getString("Name")%> </h3>
				</div>
			</div>
		</div>
	</div>
    <br />
	<table class="table table-normal">
	
	   		
				<tr>
			<td width="150">ID</td>
			<td><b><%=rs.getString("faculty_id")%></b></td>
		</tr>
		
				<tr>
			<td width="150">Name</td>
			<td><b><%=rs.getString("Name")%></b></td>
		</tr>
			
	    		<tr>
			<td>qualification</td>
			<td><b><%=rs.getString("qualification")%></b></td>
		</tr>
			
    			<tr>
			<td>experience</td>
			<td><b><%=rs.getString("experience")%></b></td>
		</tr>
				
	    		
		
		 		 		 				<tr>
			<td>Joined Since</td>
			<td><b><%=rs.getString("join_date")%></b></td>
		</tr>
			
    			<tr>
			<td>Sex</td>
			<td><b><%=rs.getString("gender")%></b></td>
		</tr>
		        
		        
				<tr>
			<td>Address</td>
			<td><b><%=rs.getString("Address")%></b></td>
		</tr>
			
				<tr>
			<td>Phone</td>
			<td><b><%=rs.getString("mobile")%></b></td>
		</tr>
			
			</table>
</center>


</body>
</html>
