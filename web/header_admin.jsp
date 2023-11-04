<%-- 
    Document   : header_admin
    Created on : Feb 23, 2018, 7:27:26 PM
    Author     : Jainish Shah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <div class="navbar navbar-top navbar-inverse">
	<div class="navbar-inner">
		<div class="container-fluid">
			<a class="brand" href="http://sms.w3developer.org/">Genuine Residential School			</a>
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
                                <img src="http://sms.w3developer.org/template/images/icons_big/admin.png" class="avatar-medium">
                            </div>
                            <span> Kuddusnagor Nabodigonto School &amp; College</span>
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
					<a href="#"><i class="icon-user"></i>Admin Panel </a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
        <div class="sidebar-background">
    <div class="primary-sidebar-background">
    </div>
</div>
        <div class="primary-sidebar">
    <!-- Main nav -->
    <br>
    <ul class="nav nav-collapse collapse nav-collapse-primary">
        
        <!------dashboard----->
        <li class="dark-nav active">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/dashboard" rel="tooltip" data-placement="right" data-original-title="">
                <!--<i class="icon-desktop icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/home.png">
                <span>Dashboard</span>
            </a>
        </li>
		
                <!--teacher-->
        <li class="">
               
            <a href="http://sms.w3developer.org/index.php?admin/teacher" rel="tooltip" data-placement="right" data-original-title="" title="">
                              
                <img src="http://sms.w3developer.org/template/images/icons/teacher.png">
                <span>Manage Teacher</span>
            </a>
        </li>

        <!--classes-->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/classes" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-sitemap icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/class.png">
                <span>Manage Class</span>
            </a>
        </li>
		
		<!------subject----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/subject" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-tasks icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/subject.png">
                <span>Manage Subject</span>
            </a>
        </li>
		
		<!------student Admission----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/student_add" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-user icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/admission.png">
                <span>Student Admission</span>
            </a>
        </li>
		
        <!------Student Information----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/student" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-user icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/user.png">
                <span>Student Information</span>
            </a>
        </li>
        
         <!------Bulk student info----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/studentbulk" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-user icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/user.png">
                <span>Bulk Student Info</span>
            </a>
        </li>
		
		
        <!------parent----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/parent" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-user icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/parent.png">
                <span>Manage Guardian</span>
            </a>
        </li>

        <!------exam----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/exam" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-paste icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/exam.png">
                <span>Manage Exam</span>
            </a>
        </li>

        <!------grade----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/grade" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-list-ol icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/grade.png">
                <span>Grade Point</span>
            </a>
        </li>

        <!------marks----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/marks" rel="tooltip" data-placement="right" data-original-title="" window="new" win_height="816px" win_width="1200px">
                               <!--<i class="icon-pencil icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/marks.png">
                <span>Manage Marks</span>
            </a>
        </li>
		
		<!------marks Sheet-----> 
        <!--<li class="">
               
            <a href="http://sms.w3developer.org/index.php?admin/marksheet" rel="tooltip" data-placement="right" 
               data-original-title="">
                              
                <img src="http://sms.w3developer.org/template/images/icons/progress_card.png" />
               <span>Progress Card</span>
            </a>
        </li>  -->
		<!------marks Sheet----->
        <!--<li class="">
            <a href="http://sms.w3developer.org/index.php?admin/progress_card_2" rel="tooltip" data-placement="right" 
               data-original-title="">
                <img src="http://sms.w3developer.org/template/images/icons/progress_card.png" />
                <span>Progress Card (SBA)</span>
            </a>
        </li>-->
		<!--<li class="">
            <a href="http://sms.w3developer.org/index.php?admin/progress_card" rel="tooltip" data-placement="right" 
               data-original-title="Progress Card">
                <img src="http://sms.w3developer.org/template/images/icons/progress_card.png" />
                <span>GRSC-Progress Card</span>
            </a>
        </li>-->
		<li class="">
            <a href="http://sms.w3developer.org/index.php?progress_card/progresscard/details" rel="tooltip" data-placement="right" data-original-title="Progress&nbsp;Card">
                <img src="http://sms.w3developer.org/template/images/icons/progress_card.png">
                <span>Details Progress Card</span>
            </a>
        </li>
		<li class="">
            <a href="http://sms.w3developer.org/index.php?progress_card/progresscard/sba" rel="tooltip" data-placement="right" data-original-title="Progress&nbsp;Card">
                <img src="http://sms.w3developer.org/template/images/icons/progress_card.png">
                <span>Progress Card-SBA</span>
            </a>
        </li>
		<li class="">
            <a href="http://sms.w3developer.org/index.php?progress_card/progresscard/grsc" rel="tooltip" data-placement="right" data-original-title="Progress&nbsp;Card">
                <img src="http://sms.w3developer.org/template/images/icons/progress_card.png">
                <span>Progress Card-GRSC
				</span>
            </a>
        </li>

		<!------attendance----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/attendance" rel="tooltip" data-placement="right" data-original-title="">
                <!--<i class="icon-desktop icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/attendance.png">
                <span>Attendance</span>
            </a>
        </li>
        
                <!------Student Attendance Type----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/stattendancetype" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-columns icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/attendance.png">
                <span>Student Attendance Type</span>
            </a>
        </li>
        
                <!------Emp Attendance Type----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/employee_attendance_type" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-columns icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/attendance.png">
                <span>Employee Attendance Type</span>
            </a>
        </li>        
        
         <!------Attendance Report----->
        <li class="">
            <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/attendance_report/" rel="tooltip" data-placement="right" window="new" win_height="816px" win_width="1200px" data-original-title="">
                <!--<i class="icon-money icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/attendance.png">
                <span>Attendance Report</span>
            </a>
        </li>
        <!------class routine----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/class_routine" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-indent-right icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/routine.png">
                <span>Class Routine</span>
            </a>
        </li>
               
        <li class="">
            <a href="http://sms.w3developer.org/index.php?admin/fees_setup">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/fees-setup.png">
                <span>Fees Setup</span>
            </a>
        </li>
        <!------Fees setup --->
        <li class="">
            <a href="http://sms.w3developer.org/index.php?admin/fees" window="new" win_height="816px" win_width="1200px">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/fees-setup.png">
                <span>Fees Manage</span>
            </a>
        </li>
		
        <!------invoice----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/invoice" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-money icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/student-fee.png">
                <span>Fees Invoice</span>
            </a>
        </li>        
		<li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/bill_collection" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-money icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/student-fee.png">
                <span>Fees Payment</span>
            </a>
        </li>
        <li class="">
            <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/report/" rel="tooltip" data-placement="right" data-original-title="Payment&nbsp;Report">
                <!--<i class="icon-money icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/student-fee-report.png">
                <span>Payment Report</span>
            </a>
        </li>
        <!------Admit card setup --->
        <li class="">
            <a href="http://sms.w3developer.org/index.php?admin/admit_card" window="new" win_height="816px" win_width="1200px">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/fees-setup.png">
                <span>Admit Card Setup</span>
            </a>
        </li>
                <!--Admit card Print -->
        <li class="">
            <a href="http://sms.w3developer.org/index.php?admin/admit_card_print" window="new" win_height="816px" win_width="1200px">
                <img src="http://sms.w3developer.org/template/images/icons/fees-setup.png">
                <span>Admit Card Print</span>
            </a>
        </li>
         <!-- Testimonial setup -->
       <!-- <li class="">
            <a href="http://sms.w3developer.org/index.php?admin/testimonial"  window="new" win_height="816px" win_width="1200px">
                          
                <img src="http://sms.w3developer.org/template/images/icons/fees-setup.png" />
                <span>Testimonial Setup</span>
            </a>
        </li>-->
                <!--Testimonial Print -->
       <!-- <li class="">
            <a href="http://sms.w3developer.org/index.php?admin/testimonial_print"  window="new" win_height="816px" win_width="1200px">
                          
                <img src="http://sms.w3developer.org/template/images/icons/fees-setup.png" />
                <span>Testimonial Print</span>
            </a>
        </li>-->
         <!-- TC setup -->
         <!--
        <li class="">
            <a href="http://sms.w3developer.org/index.php?admin/transfar_certificate"  window="new" win_height="816px" win_width="1200px">
                         
                <img src="http://sms.w3developer.org/template/images/icons/fees-setup.png" />
                <span>TC Setup</span>
            </a>
        </li>-->
                <!--Testimonial Print -->
        <!--<li class="">
            <a href="http://sms.w3developer.org/index.php?admin/transfar_certificate_print"  window="new" win_height="816px" win_width="1200px">
                        
                <img src="http://sms.w3developer.org/template/images/icons/fees-setup.png" />
                <span>TC Print</span>
            </a>
        </li>-->
        <li class="">
            <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/due_report/" rel="tooltip" data-placement="right" data-original-title="Due&nbsp;Report">
                <img src="http://sms.w3developer.org/template/images/icons/student-fee-report.png">
                <span>Due Report</span>
            </a>
        </li>
        <!------Income----->
        <li class="">
            <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/income" rel="tooltip" data-placement="right" data-original-title="">
                <!--<i class="icon-money icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/income.png">
                <span>Income</span>
            </a>
        </li>
        <li class="">
            <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/income_report/" rel="tooltip" data-placement="right" data-original-title="">
                <!--<i class="icon-money icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/income-report.png">
                <span>Income Report</span>
            </a>
        </li>
        
        <!------Expense----->
        <li class="">
            <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/expense" rel="tooltip" data-placement="right" data-original-title="">
                <!--<i class="icon-money icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/expense.png">
                <span>Expense</span>
            </a>
        </li>
		
		 <!------Expense Report----->
        <li class="">
            <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/expense_report/" rel="tooltip" data-placement="right" data-original-title="">
                <!--<i class="icon-money icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/expense-report.png">
                <span>Expense Report</span>
            </a>
        </li>
        
        		
 
		<!------salary setup --->
		<li class="">
			<a href="http://sms.w3developer.org/index.php?admin/salary_setup">
						  <!--<i class="icon-h-sign"></i>-->
				<img src="http://sms.w3developer.org/template/images/icons/salary.png">
				<span>Salary</span>
			</a>
		</li>
		
		<!------Salary Generate --->
		<li class="">
			<a href="http://sms.w3developer.org/index.php?admin/salary_genarate">
						  <!--<i class="icon-h-sign"></i>-->
				<img src="http://sms.w3developer.org/template/images/icons/salary-generate.png">
				<span>Salary Generate</span>
			</a>
		</li>
		
		<!------Salary Sheet --->
	<!--	<li class="">
			<a href="http://sms.w3developer.org/index.php?admin/salary_status">
						 
				<img src="http://sms.w3developer.org/template/images/icons/salary-sheet.png" />
				<span>Salary Sheet</span>
			</a>
		</li>   -->
		
		<li class="">
			<a href="http://sms.w3developer.org/index.php?admin/salary_status" rel="tooltip" data-placement="right" window="new" win_height="816px" win_width="1200px" data-original-title="" title="">
						 
				<img src="http://sms.w3developer.org/template/images/icons/salary-sheet.png">
				<span>Salary Sheet</span>
			</a>
		</li>
		
		<!------Salary Report --->
		<li class="">
			<!--<span class="glow"></span>-->
			<a href="http://sms.w3developer.org/index.php?admin/salaryreport/" rel="tooltip" data-placement="right" data-original-title="" window="new" win_height="816px" win_width="1200px">
				<!--<i class="icon-money icon-1x"></i>-->
				<img src="http://sms.w3developer.org/template/images/icons/salary-report.png">
				<span>Salary Report</span>
			</a>
		</li>
		
        <!------book----->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/book" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-book icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/book.png">
                <span>Library</span>
            </a>
        </li>

        <!------transport----->
        <li class="">
                <!--<span class="glow"></span>-->
            <!--
            <a href="http://sms.w3developer.org/index.php?admin/transport" rel="tooltip" data-placement="right">
                <img src="http://sms.w3developer.org/template/images/icons/transport.png" />
                <span>Transport</span>
            </a>
        </li>-->

        <!--dormitory-->
      <!--  <li class="">
            <a href="http://sms.w3developer.org/index.php?admin/dormitory" rel="tooltip" data-placement="right">    
                <img src="http://sms.w3developer.org/template/images/icons/dormitory.png" />
                <span>Dormitory</span>
            </a>
        </li>-->
		
        <!------noticeboard----->
        </li><li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/noticeboard" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-columns icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/noticeboard.png">
                <span>Noticeboard</span>
            </a>
        </li>
		
		 <!--Holiday-->
       <!-- <li class="">
            <a href="http://sms.w3developer.org/index.php?admin/holiday" rel="tooltip" data-placement="right">
                              
                <img src="http://sms.w3developer.org/template/images/icons/noticeboard.png" />
                <span>Holiday</span>
            </a>
        </li>-->

        <!------System Settings--->
        <li class="">
            <a href="http://sms.w3developer.org/index.php?admin/system_settings">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/system_settings.png">
                <span>System Settings</span>
            </a>
        </li>
					
        <!--Manage Language-->
       <!-- <li class="">
            <a href="http://sms.w3developer.org/index.php?admin/manage_language">
                <img src="http://sms.w3developer.org/template/images/icons/language.png" />
                <span>Manage Language</span>
            </a>
        </li>-->
        
        <!------manage own profile--->
        <li class="">
                <!--<span class="glow"></span>-->
            <a href="http://sms.w3developer.org/index.php?admin/manage_profile" rel="tooltip" data-placement="right" data-original-title="">
                               <!--<i class="icon-lock icon-1x"></i>-->
                <img src="http://sms.w3developer.org/template/images/icons/profile.png">
                <span>Profile</span>
            </a>
        </li>
        
                <!--Backup and Restore-->
        <!--
        <li class="">
            <a href="http://sms.w3developer.org/index.php?admin/backup_restore">
                <img src="http://sms.w3developer.org/template/images/icons/backup.png" />
                <span>Backup Restore</span>
            </a>
        </li>
        -->
            </ul>

</div>
    </body>
</html>
