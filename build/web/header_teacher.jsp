<%-- 
    Document   : header_teacher
    Created on : Feb 23, 2018, 7:12:25 PM
    Author     : Jainish Shah
--%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
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
            <div class="navbar navbar-top navbar-inverse">
	<div class="navbar-inner">
		<div class="container-fluid">
			<a class="brand" href="http://sms.w3developer.org/">School system			</a>
			<!-- the new toggle buttons -->
			<ul class="nav pull-right">
				<li class="toggle-primary-sidebar hidden-desktop" data-toggle="collapse" data-target=".nav-collapse-primary"><button type="button" class="btn btn-navbar"><i class="icon-th-list"></i></button></li>
				<li class="hidden-desktop" data-toggle="collapse" data-target=".nav-collapse-top"><button type="button" class="btn btn-navbar"><i class="icon-align-justify"></i></button></li>
			</ul>
			<div class="nav-collapse nav-collapse-top collapse">
            	<ul class="nav pull-right">
					<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Account <b class="caret"></b></a>
					<!-- Account Selector -->
                    <ul class="dropdown-menu">
                    	<li class="with-image">
                            <div class="avatar">
                                <img src="http://sms.w3developer.org/template/images/icons_big/teacher.png" class="avatar-medium"/>
                            </div>
                            <span>Pallav Thakur</span>
                        </li>
                    	<li class="divider"></li>
                        
                        						<li><a href="#">
                        		<i class="icon-user"></i><span>Profile</span></a></li>
                        <li><a href="#">
                        		<i class="icon-lock"></i><span>Change Password</span></a></li>
						<li><a href="http://sms.w3developer.org/index.php?login/logout">
                        		<i class="icon-off"></i><span>Logout</span></a></li>
					</ul>
                	<!-- Account Selector -->
					</li>
				</ul>
				
				
                <ul class="nav pull-right">
					<li class="dropdown">
					<a href="#" ><i class="icon-user"></i>Teacher & Staff Panel </a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>            <div class="sidebar-background">
	<div class="primary-sidebar-background">
	</div>
</div>
<div class="primary-sidebar">
	<!-- Main nav -->    
   	<br />
	<ul class="nav nav-collapse collapse nav-collapse-primary">
    
        
        <!------dashboard----->
		<li class="dark-nav active">
				<a href="http://sms.w3developer.org/index.php?teacher/dashboard" rel="tooltip" data-placement="right" 
                	data-original-title="">
                    <img src="http://sms.w3developer.org/template/images/icons/home.png" />
					<span>Dashboard</span>
				</a>
		</li>
        
        <!------student----->
		<li class="">
				<a href="http://sms.w3developer.org/index.php?teacher/student" rel="tooltip" data-placement="right" 
                	data-original-title="">
                    <img src="http://sms.w3developer.org/template/images/icons/user.png" />
					<span>Student</span>
				</a>
		</li>
        
        <!------teacher----->
		<li class="">
				<a href="http://sms.w3developer.org/index.php?teacher/teacher_list" rel="tooltip" data-placement="right" 
                	data-original-title="">
                    <img src="http://sms.w3developer.org/template/images/icons/teacher.png" />
					<span>Teacher & Staff</span>
				</a>
		</li>
        
        <!------subject----->
		<li class="">
				<a href="http://sms.w3developer.org/index.php?teacher/subject" rel="tooltip" data-placement="right" 
                	data-original-title="">
                    <img src="http://sms.w3developer.org/template/images/icons/subject.png" />
					<span>Subject</span>
				</a>
		</li>
        
        
        <!------marks----->
		<li class="">
				<a href="http://sms.w3developer.org/index.php?teacher/marks" rel="tooltip" data-placement="right" 
                	data-original-title="">
                    <img src="http://sms.w3developer.org/template/images/icons/marks.png" />
					<span>Marks-attendance</span>
				</a>
		</li>
         <!------marks Sheet----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/marksheet" rel="tooltip" data-placement="right" 
               data-original-title="">
                               <!--<i class="icon-pencil icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/mark-sheet.png" />
                <span>Mark Sheet</span>
            </a>
        </li>
        <!------class routine----->
		<li class="">
				<a href="http://sms.w3developer.org/index.php?teacher/class_routine" rel="tooltip" data-placement="right" 
                	data-original-title="">
                    <img src="http://sms.w3developer.org/template/images/icons/routine.png" />
					<span>Class Routine</span>
				</a>
		</li>
        
        
        <!------book----->
		<li class="">
				<a href="http://sms.w3developer.org/index.php?teacher/book" rel="tooltip" data-placement="right" 
                	data-original-title="">
                    <img src="http://sms.w3developer.org/template/images/icons/book.png" />
					<span>Library</span>
				</a>
		</li>
        
        <!------transport----->
		<li class="">
				<a href="http://sms.w3developer.org/index.php?teacher/transport" rel="tooltip" data-placement="right" 
                	data-original-title="">
                    <img src="http://sms.w3developer.org/template/images/icons/transport.png" />
					<span>Transport</span>
				</a>
		</li>
        
        
        <!------noticeboard----->
		<li class="">
				<a href="http://sms.w3developer.org/index.php?teacher/noticeboard" rel="tooltip" data-placement="right" 
                	data-original-title="">
                    <img src="http://sms.w3developer.org/template/images/icons/noticeboard.png" />
					<span>Noticeboard-event</span>
				</a>
		</li>
        
        
        <!------backup-restore----->
<!--
		<li class="">
				<a href="http://sms.w3developer.org/index.php?teacher/backup_restore" rel="tooltip" data-placement="right" 
                	data-original-title="">
                    <img src="http://sms.w3developer.org/template/images/icons/backup.png" />
					<span>Backup Restore</span>
				</a>
		</li> -->
        
		<!------manage own profile--->
		<li class="">
				<a href="http://sms.w3developer.org/index.php?teacher/manage_profile" rel="tooltip" data-placement="right" 
                	data-original-title="">
                    <img src="http://sms.w3developer.org/template/images/icons/profile.png" />
					<span>Profile</span>
				</a>
		</li>
		
	</ul>
	
</div>            
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