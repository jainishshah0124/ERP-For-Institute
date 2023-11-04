
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
     <head>
        <title>JSP Page</title>
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
                        Admin Dashboard </h3>
                    </div>

                </div>
            </div>
        </div>
        
        <!--------FLASH MESSAGES--->
        
		<!---->
        
        
                        <div class="container-fluid padded">
                         <script src="http://sms.w3developer.org/template/js/TableBarChart.js" type="text/javascript"></script>
     <link href="http://sms.w3developer.org/template/css/TableBarChart.css" media="screen" rel="stylesheet" type="text/css" />
<div class="container-fluid padded">
    <div class="row-fluid">
        <div class="span30">
            <!-- find me in partials/action_nav_normal -->
            <!--big normal buttons--> 			
                    <center>
                <div id="fancyClock"></div>

                <span class="label label-blue hover-shadow"> 
                    <img src="template/images/icons/user.png" /> <span>Total Student 25 </span>
                </span>

                <span class="label label-blue hover-shadow">
                    <img src="template/images/icons/teacher.png" /><span>Total Teacher5</span>
                </span>
            </center>
			
            
	<table id="source2" class="table table-normal" >
		<caption>Student Information</caption>
		<thead>
			<tr>
				<th></th>
				<th>Male</th>
				<th>Female</th>
				<th>Total</th>	
				
			</tr>
		</thead>
		<tbody>
                    
                    
                    
                       <tr>
				<th>One</th>
				<td>3</td>
				<td>2</td>
				<td>5</td>
			</tr>           
		
                    
                    
                       <tr>
				<th>Two</th>
				<td>3</td>
				<td>2</td>
				<td>5</td>
			</tr>           
		
                    
                    
                       <tr>
				<th>Three</th>
				<td>2</td>
				<td>3</td>
				<td>5</td>
			</tr>           
		
                    
                    
                       <tr>
				<th>Four</th>
				<td>3</td>
				<td>2</td>
				<td>5</td>
			</tr>           
		
                    
                    
                       <tr>
				<th>Five</th>
				<td>4</td>
				<td>1</td>
				<td>5</td>
			</tr>           
		
                  		</tbody>
	</table>
	<div id="target2">
	</div>

<script type="text/javascript">
	$(function() {
		$('#source2').tableBarChart('#target2', '', true);
	});
</script>    
            
            
      
                    </div>
        <!---DASHBOARD MENU BAR ENDS HERE-->
    </div>

    <br> 
    <div class="row-fluid">
        <!---TO DO LIST STARTS-->
        <div class="span6">
            <div class="box box-border">
                <div class="box-header">
                    <span class="title">
                        <i class="icon-reorder"></i>
                        Noticeboard                    </span>
                </div>
                <div class="box-content scrollable" style="max-height: 500px; overflow-y: auto">

                                            <div class="box-section news with-icons">
                            <div class="avatar blue">
                                <i class="icon-tag icon-2x"></i>
                            </div>
                            <div class="news-time">
                                <span>01</span> Mar                            </div>
                            <div class="news-content">
                                <div class="news-title">
                                    Admission Start                                </div>
                                <div class="news-text">
                                    2016-2017 Session Admission start from 30 November 2017. Please Collect your admission from our website.<br><br>                                </div>
                            </div>
                        </div>
                                            <div class="box-section news with-icons">
                            <div class="avatar blue">
                                <i class="icon-tag icon-2x"></i>
                            </div>
                            <div class="news-time">
                                <span>01</span> Mar                            </div>
                            <div class="news-content">
                                <div class="news-title">
                                    First Term Exam                                </div>
                                <div class="news-text">
                                    <div>For class 1 to 5 annual exam start from <b>March 20, 2017</b>,</div>Please Collect your admit card from our website or office.<br><br>                                </div>
                            </div>
                        </div>
                                            <div class="box-section news with-icons">
                            <div class="avatar blue">
                                <i class="icon-tag icon-2x"></i>
                            </div>
                            <div class="news-time">
                                <span>01</span> Feb                            </div>
                            <div class="news-content">
                                <div class="news-title">
                                     Picnic                                </div>
                                <div class="news-text">
                                    You will be very pleased to know 
that, we are going to arrange a picnic from our school on 27 Feb 2017.
 We have selected Sonargaon for our picnic spot.
<br><br>Your loving friend
<span><br>Headmaster</span><br>                                </div>
                            </div>
                        </div>
                                            <div class="box-section news with-icons">
                            <div class="avatar blue">
                                <i class="icon-tag icon-2x"></i>
                            </div>
                            <div class="news-time">
                                <span>01</span> Jan                            </div>
                            <div class="news-content">
                                <div class="news-title">
                                    Holiday                                </div>
                                <div class="news-text">
                                    Janmastami Holiday                                </div>
                            </div>
                        </div>
                                    </div>
            </div>
        </div>
        <!---TO DO LIST ENDS-->

        <div class="span6">
            <div class="box box-border">
                <div class="box-header">
                    <div class="title">
                        <i class="icon-calendar"></i>
                        Calendar Schedule                    </div>
                </div>
                <div class="box-content">
                    <div id="calendar2">
                    </div>
                </div>
            </div>
        </div>
        <!---CALENDAR ENDS-->
    </div>
</div>


<script>
    $(document).ready(function() {

        // page is now ready, initialize the calendar...

        $("#calendar2").fullCalendar({
            header: {
                left: "prev,next",
                center: "title",
                right: "month,agendaWeek,agendaDay"
            },
            editable: 0,
            droppable: 0,
            /*drop: function (e, t) {
              var n, r;
              r = $(this).data("eventObject"), n = $.extend({}, r), n.start = e, n.allDay = t, $("#calendar").fullCalendar("renderEvent", n, !0);
              if ($("#drop-remove").is(":checked")) return $(this).remove()
          },*/
            events: [
                                        {
                            title: "Admission Start",
                            start: new Date(2017, 2, 01),
                            end: new Date(2017, 2, 01) 
                        },
                                                {
                            title: "First Term Exam",
                            start: new Date(2017, 2, 01),
                            end: new Date(2017, 2, 01) 
                        },
                                                {
                            title: " Picnic",
                            start: new Date(2017, 1, 01),
                            end: new Date(2017, 1, 01) 
                        },
                                                {
                            title: "Holiday",
                            start: new Date(1970, 0, 01),
                            end: new Date(1970, 0, 01) 
                        },
                                    ]
        })

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