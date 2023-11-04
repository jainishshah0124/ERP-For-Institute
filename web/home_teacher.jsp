<%-- 
    Document   : home_teacher
    Created on : Feb 23, 2018, 7:17:14 PM
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
                <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i,700%7CSource+Sans+Pro:300,400,600,700" rel="stylesheet"> 
    </head>
    <body>
        <div id="main_body">
            <%@include file="header_teacher.jsp" %>
       <div class="main-content">
                        <div class="container-fluid">
            <div class="row-fluid">
                <div class="area-top clearfix">
                    <div class="pull-left header">
                        <h3 class="title">
                        <i class="icon-info-sign"></i>
                        Teacher Dashboard </h3>
                    </div>

                </div>
            </div>
        </div>
        
        <!--------FLASH MESSAGES--->
        
		<!---->
        
        
                        <div class="container-fluid padded">
                    <div class="container-fluid padded">
    <div class="row-fluid">
        <div class="span30">

            <center>
                <span class="label label-blue wobble-bottom"> 
                    <img src="template/images/icons/user.png">Total Student Of School 29                </span>

                <span class="label label-blue wobble-bottom">
                    <img src="template/images/icons/teacher.png">Total Teacher Of School 5                </span>
            </center>


            <!-- find me in partials/action_nav_normal -->
            <!--big normal buttons-->
            <div class="action-nav-normal">
                <div class="row-fluid">
                    <div class="span2 action-nav-button curl-top-left box-shadow-outset">
                        <a href="http://sms.w3developer.org/index.php?teacher/student">
                            <img src="http://sms.w3developer.org/template/images/icons/user.png">
                            <span>Manage Student</span>
                        </a>
                    </div>
                    <div class="span2 action-nav-button curl-top-left box-shadow-outset">
                        <a href="http://sms.w3developer.org/index.php?teacher/teacher_list">
                            <img src="http://sms.w3developer.org/template/images/icons/teacher.png">
                            <span>Manage Teacher</span>
                        </a>
                    </div>
                    <div class="span2 action-nav-button curl-top-left box-shadow-outset">
                        <a href="http://sms.w3developer.org/index.php?teacher/subject">
                            <img src="http://sms.w3developer.org/template/images/icons/subject.png">
                            <span>Subject</span>
                        </a>
                    </div>
                    <div class="span2 action-nav-button curl-top-left box-shadow-outset">
                        <a href="http://sms.w3developer.org/index.php?teacher/marks">
                            <img src="http://sms.w3developer.org/template/images/icons/marks.png">
                            <span>Marks-attendance</span>
                        </a>
                    </div>
                    <div class="span2 action-nav-button curl-top-left box-shadow-outset">
                        <a href="http://sms.w3developer.org/index.php?teacher/class_routine">
                             <img src="http://sms.w3developer.org/template/images/icons/noticeboard.png">
                            <span>Noticeboard</span>
                        </a>
                    </div>
                    <div class="span2 action-nav-button curl-top-left box-shadow-outset">
                        <a href="http://sms.w3developer.org/index.php?teacher/book">
                            <img src="http://sms.w3developer.org/template/images/icons/book.png">
                            <span>Library</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!---DASHBOARD MENU BAR ENDS HERE-->
    </div>

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
                    <div id="calendar2" class="fc"><table class="fc-header" style="width:100%"><tbody><tr><td class="fc-header-left"><span class="fc-button fc-button-prev fc-state-default fc-corner-left"><span class="fc-button-inner"><span class="fc-button-content">&nbsp;◄&nbsp;</span><span class="fc-button-effect"><span></span></span></span></span><span class="fc-button fc-button-next fc-state-default fc-corner-right"><span class="fc-button-inner"><span class="fc-button-content">&nbsp;►&nbsp;</span><span class="fc-button-effect"><span></span></span></span></span></td><td class="fc-header-center"><span class="fc-header-title"><h2>February 2018</h2></span></td><td class="fc-header-right"><span class="fc-button fc-button-month fc-state-default fc-corner-left fc-state-active"><span class="fc-button-inner"><span class="fc-button-content">month</span><span class="fc-button-effect"><span></span></span></span></span><span class="fc-button fc-button-agendaWeek fc-state-default"><span class="fc-button-inner"><span class="fc-button-content">week</span><span class="fc-button-effect"><span></span></span></span></span><span class="fc-button fc-button-agendaDay fc-state-default fc-corner-right"><span class="fc-button-inner"><span class="fc-button-content">day</span><span class="fc-button-effect"><span></span></span></span></span></td></tr></tbody></table><div class="fc-content" style="position: relative; min-height: 1px;"><div class="fc-view fc-view-month fc-grid" style="position: relative; -moz-user-select: none;" unselectable="on"><table class="fc-border-separate" style="width:100%" cellspacing="0"><thead><tr class="fc-first fc-last"><th class="fc-sun fc-widget-header fc-first" style="width: 75px;">Sun</th><th class="fc-mon fc-widget-header" style="width: 74px;">Mon</th><th class="fc-tue fc-widget-header" style="width: 74px;">Tue</th><th class="fc-wed fc-widget-header" style="width: 74px;">Wed</th><th class="fc-thu fc-widget-header" style="width: 74px;">Thu</th><th class="fc-fri fc-widget-header" style="width: 74px;">Fri</th><th class="fc-sat fc-widget-header fc-last">Sat</th></tr></thead><tbody><tr class="fc-week0 fc-first"><td class="fc-sun fc-widget-content fc-day0 fc-first fc-other-month"><div style="min-height: 57px;"><div class="fc-day-number">28</div><div class="fc-day-content"><div style="position: relative; height: 0px;">&nbsp;</div></div></div></td><td class="fc-mon fc-widget-content fc-day1 fc-other-month"><div><div class="fc-day-number">29</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-tue fc-widget-content fc-day2 fc-other-month"><div><div class="fc-day-number">30</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-wed fc-widget-content fc-day3 fc-other-month"><div><div class="fc-day-number">31</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-thu fc-widget-content fc-day4"><div><div class="fc-day-number">1</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-fri fc-widget-content fc-day5"><div><div class="fc-day-number">2</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-sat fc-widget-content fc-day6 fc-last"><div><div class="fc-day-number">3</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td></tr><tr class="fc-week1"><td class="fc-sun fc-widget-content fc-day7 fc-first"><div style="min-height: 57px;"><div class="fc-day-number">4</div><div class="fc-day-content"><div style="position: relative; height: 0px;">&nbsp;</div></div></div></td><td class="fc-mon fc-widget-content fc-day8"><div><div class="fc-day-number">5</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-tue fc-widget-content fc-day9"><div><div class="fc-day-number">6</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-wed fc-widget-content fc-day10"><div><div class="fc-day-number">7</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-thu fc-widget-content fc-day11"><div><div class="fc-day-number">8</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-fri fc-widget-content fc-day12"><div><div class="fc-day-number">9</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-sat fc-widget-content fc-day13 fc-last"><div><div class="fc-day-number">10</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td></tr><tr class="fc-week2"><td class="fc-sun fc-widget-content fc-day14 fc-first"><div style="min-height: 57px;"><div class="fc-day-number">11</div><div class="fc-day-content"><div style="position: relative; height: 0px;">&nbsp;</div></div></div></td><td class="fc-mon fc-widget-content fc-day15"><div><div class="fc-day-number">12</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-tue fc-widget-content fc-day16"><div><div class="fc-day-number">13</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-wed fc-widget-content fc-day17"><div><div class="fc-day-number">14</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-thu fc-widget-content fc-day18"><div><div class="fc-day-number">15</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-fri fc-widget-content fc-day19"><div><div class="fc-day-number">16</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-sat fc-widget-content fc-day20 fc-last"><div><div class="fc-day-number">17</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td></tr><tr class="fc-week3"><td class="fc-sun fc-widget-content fc-day21 fc-first"><div style="min-height: 57px;"><div class="fc-day-number">18</div><div class="fc-day-content"><div style="position: relative; height: 0px;">&nbsp;</div></div></div></td><td class="fc-mon fc-widget-content fc-day22"><div><div class="fc-day-number">19</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-tue fc-widget-content fc-day23"><div><div class="fc-day-number">20</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-wed fc-widget-content fc-day24"><div><div class="fc-day-number">21</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-thu fc-widget-content fc-day25"><div><div class="fc-day-number">22</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-fri fc-widget-content fc-day26 fc-state-highlight fc-today"><div><div class="fc-day-number">23</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-sat fc-widget-content fc-day27 fc-last"><div><div class="fc-day-number">24</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td></tr><tr class="fc-week4"><td class="fc-sun fc-widget-content fc-day28 fc-first"><div style="min-height: 57px;"><div class="fc-day-number">25</div><div class="fc-day-content"><div style="position: relative; height: 0px;">&nbsp;</div></div></div></td><td class="fc-mon fc-widget-content fc-day29"><div><div class="fc-day-number">26</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-tue fc-widget-content fc-day30"><div><div class="fc-day-number">27</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-wed fc-widget-content fc-day31"><div><div class="fc-day-number">28</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-thu fc-widget-content fc-day32 fc-other-month"><div><div class="fc-day-number">1</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-fri fc-widget-content fc-day33 fc-other-month"><div><div class="fc-day-number">2</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-sat fc-widget-content fc-day34 fc-last fc-other-month"><div><div class="fc-day-number">3</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td></tr><tr class="fc-week5 fc-last"><td class="fc-sun fc-widget-content fc-day35 fc-first fc-other-month"><div style="min-height: 61px;"><div class="fc-day-number">4</div><div class="fc-day-content"><div style="position: relative; height: 0px;">&nbsp;</div></div></div></td><td class="fc-mon fc-widget-content fc-day36 fc-other-month"><div><div class="fc-day-number">5</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-tue fc-widget-content fc-day37 fc-other-month"><div><div class="fc-day-number">6</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-wed fc-widget-content fc-day38 fc-other-month"><div><div class="fc-day-number">7</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-thu fc-widget-content fc-day39 fc-other-month"><div><div class="fc-day-number">8</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-fri fc-widget-content fc-day40 fc-other-month"><div><div class="fc-day-number">9</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td><td class="fc-sat fc-widget-content fc-day41 fc-last fc-other-month"><div><div class="fc-day-number">10</div><div class="fc-day-content"><div style="position:relative">&nbsp;</div></div></div></td></tr></tbody></table><div style="position:absolute;z-index:8;top:0;left:0"></div></div></div>
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
                            end:	new Date(2017, 2, 01) 
                        },
                            {
                            title: "First Term Exam",
                            start: new Date(2017, 2, 01),
                            end:	new Date(2017, 2, 01) 
                        },
                            {
                            title: " Picnic",
                            start: new Date(2017, 1, 01),
                            end:	new Date(2017, 1, 01) 
                        },
                            {
                            title: "Holiday",
                            start: new Date(1970, 0, 01),
                            end:	new Date(1970, 0, 01) 
                        },
                ]
        })

    });
</script>                </div>       
                <div style="clear:both;color:#aaa; padding:20px;">

    <a href="#" target="_blank">
        <center>© 2018, w3developer Ltd</center>
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
</html>
