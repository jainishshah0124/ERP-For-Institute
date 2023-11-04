<%-- 
    Document   : add_student
    Created on : Feb 24, 2018, 12:08:10 AM
    Author     : Jainish Shah
--%>

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
                <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i,700%7CSource+Sans+Pro:300,400,600,700" rel="stylesheet"> 
    </head>


    <body>
        <div id="main_body">
            <%@include file="header_admin.jsp" %>
<div class="main-content">
                        <div class="container-fluid" >
            <div class="row-fluid">
                <div class="area-top clearfix">
                    <div class="pull-left header">
                        <h3 class="title">
                        <i class="icon-info-sign"></i>
                        Manage Student </h3>
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
                                    <li class="active" >
                        <a href="#add" data-toggle="tab"><i class="icon-plus"></i>
                            Add Student                        </a>
                    </li>
                            </ul>
            <!------CONTROL TABS END------->

        </div>
        <div class="box-content padded">
            <div class="tab-content">


                <!----CREATION FORM STARTS---->
                <div class="tab-pane box add-student-container active " id="add" style="padding: 5px">
                                            <div class="box-content">
                                                <form action="student_success" method="post" accept-charset="utf-8" class="form-horizontal validatable" enctype="multipart/form-data" onsubmit="getFilename()"><div style="display:none">
<input type="hidden" name="authenticity_token" value="85c14eae2928009a760c8653c31a0858" />
</div>                            <div class="padded">  
								<h3> Basic Information</h3>
								<hr>
                                <div class="control-group">
                                    <label class="control-label">First Name</label>
                                    <div class="controls">
                                        <input type="text" class="validate[required]" name="fname" placeholder="Enter First Name"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Middle Name</label>
                                    <div class="controls">
                                        <input type="text" class="validate[required]" name="mname" placeholder="Enter Middle Name"/>
                                    </div>
                                </div>
<div class="control-group">
                                    <label class="control-label">Last Name</label>
                                    <div class="controls">
                                        <input type="text" class="validate[required]" name="lname" placeholder="Enter Last Name"/>
                                    </div>
                                </div>                                                                
                                <div class="control-group">
                                    <label class="control-label">Permanent Address</label>
                                    <div class="controls">
                                        <textarea rows="4" cols="55" class="" name="address" placeholder="Enter village, post office, upozilla, district name."></textarea>
                                    </div>
                                </div>
                                             <div class="control-group">
                                    <label class="control-label">Blood Group</label>
                                    <div class="controls">
                                       <select name="blood" class="uniform" style="width:36%;">
											<option value="">Select Blood Group</option>
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
                                    <label class="control-label">Birthday</label>
                                    <div class="controls">
                                        <input type="text" class="datepicker fill-up" name="dob" placeholder="Enter birthday"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Sex</label>
                                    <div class="controls">
                                        <select name="sex" class="uniform" style="width:36%;">
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Branch</label>
                                    <div class="controls">
                                        <select name="branch" class="uniform" style="width:36%;">
                                        <option>Computer</option>
					<option>IT</option>
                                        <option>EC</option>
                                        <option>Mechanical</option>
                                        <option>Aeronautical</option>
                                        <option>Civil</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Phone</label>
                                    <div class="controls">
                                        <input type="text" class="" name="phone" placeholder="Enter phone"/>
                                    </div>
                                </div>
                                                                <div class="control-group">
                                    <label class="control-label">Email</label>
                                    <div class="controls">
                                        <input type="text" class="" name="email" placeholder="Enter Email"/>
                                    </div>
                                </div>
								 <div class="control-group">
                                        <label class="control-label">Photo</label>
                                <div class="controls" style="width:210px;">
                                    <!--<input type="file" class="" name="userfile" id="imgInp" />-->
                                    <div class="uploader" id="uniform-file"><input name="file" id="file" class="inputfile" type="file"><span class="filename" style="-moz-user-select: none;">No file selected</span><span class="action" style="-moz-user-select: none;">+</span></div>
                                    <input id="hidden" name="txt1" type="hidden">
                                </div>
                                <script type="text/javascript">
                                    function getFilename()
                                    {
                                        var file=document.getElementById("file").value;
                                        document.getElementById("hidden").value=file;
                                    }
                                </script>
                                </div>
								</br>		
								<br>
                                
                            <div class="form-actions">
                                <button type="submit" class="btn btn-gray">Add Student</button>
                            </div>
                            </form>                    </div>                
                </div>
                <!----CREATION FORM ENDS--->  
            </div>
        </div>
    </div>

<style>
	.subjects>li
	{
		display:none;
	}
</style>
<script>

$(document).ready(function () 
{
	$("#class_id,#group_id").change(function()
	{
		var class_id=$("#class_id").val();
		var group_id=$("#group_id").val();
		$(".subjectlist").hide();
		$(".class-"+class_id).show();
		if(group_id)
		{
			$(".group").hide();
			$(".class-"+class_id+"-group-"+group_id).show();
		}
		$('input[type="checkbox"]').not("[disabled]").removeAttr('checked');
	});
var limit = 3;
var forth = 1;
$('input.single-checkbox').on('change', function(evt) {

   if($(this).siblings(':checked').length >= limit) {
       alert('Select maximum ' + limit + ' Subjects!');
       this.checked = false;
   }
});


$('input.forth-checkbox').on('change', function(evt) {

   if($(this).siblings(':checked').length >= forth) {
       alert('Select maximum ' + forth + ' Subjects!');
       this.checked = false;
   }
});


	   $("input[name='mainsubject[]']").change(function () {
	      var maxAllowed = 3;
	      var cnt = $("input[name='mainsubject[]']:checked").length;
	      if (cnt > maxAllowed)
	      {
	         $(this).prop("checked", "");
	         alert('Select maximum ' + maxAllowed + ' Subjects!');
	     }
  });
  
  $("input[name='forthsubject[]']").change(function () {
	      var maxAllowed = 1;
	      var cnt = $("input[name='forthsubject[]']:checked").length;
	      if (cnt > maxAllowed)
	      {
	         $(this).prop("checked", "");
	         alert('Select maximum ' + maxAllowed + ' Subject!');
	     }
  });
  
  });
  


    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }            
            reader.readAsDataURL(input.files[0]);
        }
    }
	
	function classselection(value){
	if(value<9)
		{
		$("#Humanities").css({ "display": "none" });
        $("#science").css({ "display": "none" });
        $("#Business").css({ "display": "none" });	
		}
	
	}

	function groupselectionold(value){
	var classid=$("#class_id").val();
	if(classid==10||classid==9)
	{
	if(value==1)
		{
		$("#science").css({ "display": "block" }); 
		$("#Business").css({ "display": "none" });
		$("#Humanities").css({ "display": "none" });
		}
	if(value==2)
		{
		$("#Business").css({ "display": "block" });
		$("#science").css({ "display": "none" });
		$("#Humanities").css({ "display": "none" });
		}
	if(value==3)
		{
		$("#Humanities").css({ "display": "block" });
        $("#science").css({ "display": "none" });
        $("#Business").css({ "display": "none" });		
		}
	}
	/*else if(classid==11)
	{
	if(value=="science")
		{
		$("#science").css({ "display": "block" }); 
		$("#Business").css({ "display": "none" });
		$("#Humanities").css({ "display": "none" });
		$("#forthsubjectscience").css({ "display": "none" }); 
		$("#forthsubjectbusiness").css({ "display": "none" });
		$("#forthsubjecthumnaties").css({ "display": "none" });
		}
	if(value=="commerce")
		{
		$("#Business").css({ "display": "block" });
		$("#science").css({ "display": "none" });
		$("#Humanities").css({ "display": "none" });
		$("#forthsubjectscience").css({ "display": "none" }); 
		$("#forthsubjectbusiness").css({ "display": "none" });
		$("#forthsubjecthumnaties").css({ "display": "none" });
		}
	if(value=="humanities")
		{
		$("#Humanities").css({ "display": "block" });
        $("#science").css({ "display": "none" });
        $("#Business").css({ "display": "none" });	
        $("#forthsubjectscience").css({ "display": "none" }); 
		$("#forthsubjectbusiness").css({ "display": "none" });
		$("#forthsubjecthumnaties").css({ "display": "none" });		
		}
	}*/
	
	
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
