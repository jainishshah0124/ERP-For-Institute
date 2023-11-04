<%-- 
    Document   : mnage_teacher
    Created on : Feb 23, 2018, 7:48:07 PM
    Author     : Jainish Shah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <div id="main_body">
            <div class="main-content">
                        <div class="container-fluid" >
            <div class="row-fluid">
                <div class="area-top clearfix">
                    <div class="pull-left header">
                        <h3 class="title">
                        <i class="icon-info-sign"></i>
                        Manage Teacher </h3>
                    </div>

                </div>
            </div>
        </div>
        
        <!--------FLASH MESSAGES--->
        
		<!---->
        
        
                        <div class="container-fluid padded">
                    <div class="box box-border">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					Teacher List                    	</a></li>
			<li>
            	<a href="#add" data-toggle="tab"><i class="icon-plus"></i>
					Add Teacher                    	</a></li>
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
		<div class="tab-content">
            <!----TABLE LISTING STARTS--->
            <div class="tab-pane  active" id="list">
            		<div class="action-nav-normal">
                        <div class=" action-nav-button" style="width:300px;">
                          <a href="#" title="Users">
                            <img src="http://sms.w3developer.org/template/images/icons/teacher.png" />
                            
                                <%
                                Connection con=Config.connection.getConnection();
                                PreparedStatement ps=con.prepareStatement("select * from faculty_master");
                                ResultSet rs=ps.executeQuery();
                                rs.last();
                         %>
                            <span>Total <%=rs.getRow()%> teachers</span>
                          </a>
                        </div>
                    </div>
                    <div class="box">
                        <div class="box-content">
                            <div id="dataTables">
                                <table cellpadding="0" cellspacing="0" border="0" class="dTable responsive" width="100%">
                                <thead>
                                    <tr>
                                        <th><div>ID</div></th>
                                        <th width="80"><div>Photo</div></th>
                                        <th><div>Teacher Name</div></th>
                                        <th><div>Designation</div></th>
                                        <th><div>Qualification</div></th>
                                        <th><div>Experience</div></th>
                                         <th><div>JoiningDate</div></th>
                                        <th><div>Options</div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                    rs.first();
                                    do
                                    {
                                        %>
                                         <tr>
                                        <td><%=rs.getString("faculty_id")%></td>
                                        <td><div class="avatar"><img src="<%=rs.getString("photo").substring(71)%>" class="avatar-medium" /></div></td>
                                        <td><%=rs.getString("name")%></td>
                                         <td><%=rs.getString("designation")%></td>
                                        <td><%=rs.getString("qualification")%></td>
                                        <td><%=rs.getString("experience")%></td>
                                        <td><%=rs.getString("join_date")%></td>
                                        <td align="center">
                                        
                                         <div class="btn-group action-dropdown">
                                           <button class="btn btn-gray btn-normal dropdown-toggle" data-toggle="dropdown">
                                          	 Action
                                            </button>                                            
                                            <ul class="dropdown-menu">
                                             <li> 
                                                 <a href="preview.jsp?id=<%=rs.getString("faculty_id")%>"  window="new" win_height="816px" win_width="600px" class="btn btn-default btn-small">
                                                    <i class="icon-user"></i> Profile                                            </a>
                                            </li>
                                            <li>
                                            <a href="preview_edit.jsp?id=<%=rs.getString("faculty_id")%>"  window="new" win_height="816px" win_width="800px" class="btn btn-default btn-small">
                                                    <i class="icon-wrench"></i> Edit                                            </a>
                                            </li>
                                            <li>
                                                <input type="hidden" name="id" value="<%=rs.getString("faculty_id")%>"/>
                                            <a data-toggle="modal" href="#modal-delete" onclick="modal_delete('remove_teacher')"
                                                 class="btn btn-red btn-small">
                                                    <i class="icon-trash"></i> Delete                                            </a>
                                            </li>
                                            </ul>
                                        </td>
                                    </tr>
                                        <%
                                    }while(rs.next());
                                %>
                                                                       
                                                                    </tbody>
                            </table>
                            </div>
                        </div>
                    </div>
			</div>
            <!----TABLE LISTING ENDS--->
            
            
			<!----CREATION FORM STARTS---->
			<div class="tab-pane box" id="add" style="padding: 5px">
                <div class="box-content">
                	<form enctype="multipart/form-data"  action="add_teacher" method="post" accept-charset="utf-8" class="form-horizontal validatable" target="_top" enctype="multipart/form-data" onsubmit="getFilename()"><div style="display:none">
<input type="hidden" name="authenticity_token" value="85c14eae2928009a760c8653c31a0858" />
</div>                    <form enctype="multipart/form-data" method="post" action="add_teacher" class="form-horizontal validatable" enctype="multipart/form-data"  onsubmit="getFilename()">
                        <div class="padded">
						
						
						     <div class="control-group">
                                <label class="control-label">Name</label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" name="name"/>
                                </div>
                            </div>
							
						
							
                            <div class="control-group">
                                <label class="control-label">Address</label>
                                <div class="controls">
                                    <input type="text" class="" name="address"/>
                                </div>
                            </div>
							
							
						
                            <div class="control-group">
                                <label class="control-label">Mobile</label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" name="mob"/>
                                </div>
                            </div>
                            
                             <div class="control-group">
                                <label class="control-label">Email</label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" name="email"/>
                                </div>
                            </div>
                            
                            
                             <div class="control-group">
                                <label class="control-label">Qualification</label>
                                <div class="controls">
                                    <input type="text" class="" name="qua"/>
                                </div>
                            </div>
                            
                              
                             <div class="control-group">
                                <label class="control-label">Experience</label>
                                <div class="controls">
                                    <input type="text" class="" name="exp"/>
                                </div>
                            </div>
                            
							<div class="control-group">
                                    <label class="control-label">Joining Date</label>
                                    <div class="controls">
                                        <input type="text" class="datepicker fill-up" name="joining"/>
                                    </div>
                            </div>
							
							<div class="control-group">
                                <label class="control-label">Designation </label>
                                <div class="controls">
                                    <select name="designation" class="uniform" style="width:36%;">
									    <option value=""></option>
										
							                                    	<option>Chairman</option>
                                                                	<option>Director</option>
                                                                	<option>Managing Director </option>
                                                                	<option>Administrator</option>
                                                                	<option>Accountant</option>
                                                                	<option>Registrar</option>
                                                                	<option>Assistant Registrar</option>
                                                                	<option>Headmaster/Principal</option>
                                                                	<option>Assistant Headmaster/Principal</option>
                                                                	<option>Vice Principal</option>
                                                                	<option>Teacher</option>
                                                                	<option>Assistant Instructor</option>
                                                                	<option>Assistant Professor</option>
                                                                	<option>Assistant Teacher</option>
                                                                	<option>School Bus Driver</option>
                                                                	<option>Guard</option>
                                                                	<option>Night Guard</option>
                                                                	<option>Maid servant</option>
                            										
                                    </select>
                                </div>
                            </div>
							
							<div class="control-group">
                                <label class="control-label">Branch</label>
                                <div class="controls">
                                    <input type="text" class="" name="branch"/>
                                </div>
                            </div>
                            
                            <div class="control-group">
                                <label class="control-label">Gender</label>
                                <div class="controls">
                                    <select name="gender" class="uniform" style="width:36%;">
                                    	<option value="male">Male</option>
                                    	<option value="female">Female</option>
                                    </select>
                                </div>
                            </div>
							
							
							<div class="control-group">
                                <label class="control-label">Blood Group</label>
                                <div class="controls">
                                    <select name="blood" class="uniform" style="width:36%;">
										<option value=""></option>
                                    	<option value="O-">O-</option>
                                    	<option value="O+">O+</option>
										<option value="A-">A-</option>
                                    	<option value="A+">A+</option>
										<option value="B-">B-</option>
                                    	<option value="B+">B+</option>
										<option value="AB-">AB-</option>
                                    	<option value="AB+">AB+</option>
                                    </select>
                                </div>
                            </div>  
                          
                            <div class="control-group">
                                <label class="control-label">Photo</label>
                                <div class="controls" style="width:210px;">
                                    <!--<input type="file" class="" name="userfile" id="imgInp" />-->
                                    <input type="file" name="file" id="file" class="inputfile" />
                                    <input type="hidden" id="hidden" name="txt1"/>
                                </div>
                                <script type="text/javascript">
                                    function getFilename()
                                    {
                                        var file=document.getElementById("file").value;
                                        document.getElementById("hidden").value=file;
                                    }
                                </script>
                            </div>
                            <div class="control-group">
                                <label class="control-label"></label>
                                <div class="controls" style="width:210px;">
                                    <a href="http://sms.w3developer.org/photo" target="_blank">Take your Picture</a>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray">Add Teacher</button>
                        </div>
                    </form>                
                </div>                
			</div>
			<!----CREATION FORM ENDS--->
            
		</div>
	</div>
</div>
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
        }
    }
    
    $("#imgInp").change(function(){
        readURL(this);
    });
</script>                </div>       
                <div style="clear:both;color:#aaa; padding:20px;">

    <a href="#" target="_blank">
        <center>&copy; 2018, w3developer Ltd</center>
    </a>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-93940124-1', 'auto');
  ga('send', 'pageview');

</script>

</div>            </div>
        </div>
    </body>
    
<!-----------HIDDEN MODAL FORM - COMMON IN ALL PAGES ------>
<div id="modal-form" class="modal hide fade">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <div id="modal-tablesLabel" style="color:#fff; font-size:16px;">&nbsp; </div>
    </div>
    <div class="modal-body" id="modal-body">loading data..</div>
    <div class="modal-footer">
        <button class="btn btn-gray" onclick="custom_print('frame1')">Print</button>
        <button class="btn btn-default" data-dismiss="modal">Close</button>
    </div>
</div>
<!-----------HIDDEN MODAL DELETE CONFIRMATION - COMMON IN ALL PAGES ------>
<div id="modal-delete" class="modal hide fade" style="height:140px;">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h6 id="modal-tablesLabel"> <i class="icon-info-sign"></i></h6>
    </div>
    <div class="modal-delete-body" id="modal-body-delete">Delete data ?</div>
    <div class="modal-footer">
        <a href="" id="delete_link" class="btn btn-red" >Confirm</a>
        <button class="btn btn-default" data-dismiss="modal">Cancel</button>
    </div>
</div>

<script>
    function modal(param1 ,param2 ,param3)
    {

        document.getElementById('modal-body').innerHTML = 
            '<iframe id="frame1" src="http://sms.w3developer.org/index.php?modal/popup/'+param1+'/'+param2+'/'+param3+'" width="100%" height="400" frameborder="0"></iframe>';

        document.getElementById('modal-tablesLabel').innerHTML = param1.replace("_"," ");
    }

    function modal_delete(param1)
    {
	
        document.getElementById('delete_link').href = param1;
    }

    /////////////PRINT A DIV FUNCTION////////////////

    function custom_print(div_id)
    {
        var mywindow = window.open('', 'my div', 'height=400,width=600');
        mywindow.document.write(document.getElementById(div_id).contentWindow.document.body.innerHTML);
        mywindow.print();
        mywindow.close();
        return true;
    }

</script>
 
</html>