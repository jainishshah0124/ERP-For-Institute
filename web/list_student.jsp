<%-- 
    Document   : list_student
    Created on : Feb 24, 2018, 12:43:01 AM
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
                    
    <center>
        <div class="span5" style="float:none !important;">
            <div class="box box-border">
                <div class="box-header">
                    <span class="title"> <i class="icon-info-sign"></i> Please select a class to manage student.</span>
                </div>
                <div class="box-content padded">
                    <br />
                    <select name="class_id" onchange="window.location='http://sms.w3developer.org/index.php?admin/student/'+this.value">
                        <option value="">Select A Class</option>
                                                    <option value="1"
                                    >
                                Class One</option>
                                                        <option value="2"
                                    >
                                Class Two</option>
                                                        <option value="3"
                                    >
                                Class Three</option>
                                                        <option value="4"
                                    >
                                Class Four</option>
                                                        <option value="5"
                                    >
                                Class Five</option>
                                                        <option value="6"
                                    >
                                Class six</option>
                                                        <option value="7"
                                    >
                                Class First</option>
                                                </select>
                    <hr />
                    <script>
                        $(document).ready(function() {
                            function ask()
                            {
                                Growl.info({title:"Select a class to manage student",text:" "});
                            }
                            setTimeout(ask, 500);
                        });
                    </script>
                </div>
            </div>
        </div>
    </center>
<script>

$(document).ready(function () {
	   $("input[name='groups']").change(function () {
	      var maxAllowed = 2;
	      var cnt = $("input[name='groups']:checked").length;
	      if (cnt > maxAllowed)
	      {
	         $(this).prop("checked", "");
	         alert('Select maximum ' + maxAllowed + ' Subjects!');
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
	  
	function groupselection(value){
	var classid=$("#class_id").val();
	if(classid==11)
	{
	if(value=="science")
		{
		$("#science").css({ "display": "block" }); 
		$("#Business").css({ "display": "none" });
		$("#Humanities").css({ "display": "none" });
		}
	if(value=="commerce")
		{
		$("#Business").css({ "display": "block" });
		$("#science").css({ "display": "none" });
		$("#Humanities").css({ "display": "none" });
		}
	if(value=="humanities")
		{
		$("#Humanities").css({ "display": "block" });
        $("#science").css({ "display": "none" });
        $("#Business").css({ "display": "none" });		
		}
	}
	
	}  

	function groupselectionold(value){
	var classid=$("#re_class_id").val();

	if(classid==10||classid==9)
	{
	if(value=="science")
		{
		$("#forthsubjectscience").css({ "display": "block" }); 
		$("#forthsubjectbusiness").css({ "display": "none" });
		$("#forthsubjecthumnaties").css({ "display": "none" });
		$("#science").css({ "display": "none" }); 
		$("#Business").css({ "display": "none" });
		$("#Humanities").css({ "display": "none" });
		}
	if(value=="commerce")
		{
		$("#forthsubjectscience").css({ "display": "none" }); 
		$("#forthsubjectbusiness").css({ "display": "block" });
		$("#forthsubjecthumnaties").css({ "display": "none" });
		$("#Business").css({ "display": "none" });
		$("#science").css({ "display": "none" });
		$("#Humanities").css({ "display": "none" });
		}
	if(value=="humanities")
		{
		$("#forthsubjectscience").css({ "display": "none" }); 
		$("#forthsubjectbusiness").css({ "display": "none" });
		$("#forthsubjecthumnaties").css({ "display": "block" });
		$("#Humanities").css({ "display": "none" });
        $("#science").css({ "display": "none" });
        $("#Business").css({ "display": "none" });		
		}
	}
	else if(classid==11)
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
