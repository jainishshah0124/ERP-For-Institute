<%-- 
    Document   : preview_edit
    Created on : Mar 1, 2018, 12:43:42 PM
    Author     : Jainish Shah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
         <%
                                Connection con=Config.connection.getConnection();
                                PreparedStatement ps=con.prepareStatement("select * from faculty_master where faculty_id='"+request.getParameter("id")+"'");
                                ResultSet rs=ps.executeQuery();
                                rs.next();
                         %>
<div class="tab-pane box active" id="edit" style="padding: 5px">
                <div class="box-content">
                    <form action="preview_edit_success" method="post" accept-charset="utf-8" class="form-horizontal validatable" target="_top" enctype="multipart/form-data" onsubmit="getFilename()"><div style="display:none">
<input name="authenticity_token" value="235f8fa1e7c9d5625ebc6772814a66c9" type="hidden">
</div>                        
                                                <div class="padded">
						
				<div class="control-group">
                                <label class="control-label">ID</label>
                                <div class="controls">
                                    <input type="text" readonly="readonly" value="<%=rs.getString("faculty_id")%>" class="validate[required]" name="id"/>
                                </div>
                            </div>		
						     <div class="control-group">
                                <label class="control-label">Name</label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" value="<%=rs.getString("Name")%>" name="name"/>
                                </div>
                            </div>
							
						
							
                            <div class="control-group">
                                <label class="control-label">Address</label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" value="<%=rs.getString("address")%>" name="address"/>
                                </div>
                            </div>
							
							
						
                            <div class="control-group">
                                <label class="control-label">Mobile</label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" name="mob" value="<%=rs.getString("mobile")%>"/>
                                </div>
                            </div>
                            
                             <div class="control-group">
                                <label class="control-label">Email</label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" name="email" value="<%=rs.getString("email")%>" disabled="disabled"/>
                                </div>
                            </div>
                            
                            
                             <div class="control-group">
                                <label class="control-label">Qualification</label>
                                <div class="controls">
                                    <input type="text" class="" name="qua" value="<%=rs.getString("qualification")%>"/>
                                </div>
                            </div>
                            
                              
                             <div class="control-group">
                                <label class="control-label">Experience</label>
                                <div class="controls">
                                    <input type="text" class="" name="exp" value="<%=rs.getString("experience")%>"/>
                                </div>
                            </div>
                            
							<div class="control-group">
                                    <label class="control-label">Joining Date</label>
                                    <div class="controls">
                                        <input type="text" class="datepicker fill-up" name="joining" value="<%=rs.getString("join_date")%>"/>
                                    </div>
                            </div>
							
							<div class="control-group">
                                <label class="control-label">Designation </label>
                                <div class="controls">
                                    <select name="designation" value="<%=rs.getString("designation")%>" class="uniform" style="width:36%;">
										
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
                                    <input type="text" class="" name="branch" value="<%=rs.getString("branch")%>"/>
                                </div>
                            </div>
                          
                            <div class="control-group">
                                <label class="control-label">Photo</label>
                                <div class="controls" style="width:210px;">
                                    <!--<input type="file" class="" name="userfile" id="imgInp" />-->
                                    <input type="file" name="file" id="file" class="inputfile" />
                                    <input type="hidden" id="hidden" name="txt1" value="<%=rs.getString("photo")%>"/>
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
                                    <img id="blah" src="<%=rs.getString("photo").substring(71)%>" alt="your image" height="100">
                                </div>
                            </div>
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray">Edit Teacher</button>
                        </div>
                    </form>
                                    </div>
			</div>

<div class="ex-tooltip"></div><div class="datepicker datepicker-dropdown dropdown-menu" style="display: none;"><div class="datepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="icon-arrow-left"></i></th><th colspan="5" class="switch">April 1989</th><th class="next" style="visibility: visible;"><i class="icon-arrow-right"></i></th></tr><tr><th class="dow">Su</th><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th></tr></thead><tbody><tr><td class="day old">26</td><td class="day old">27</td><td class="day old">28</td><td class="day old">29</td><td class="day old">30</td><td class="day old">31</td><td class="day">1</td></tr><tr><td class="day">2</td><td class="day">3</td><td class="day">4</td><td class="day">5</td><td class="day active">6</td><td class="day">7</td><td class="day">8</td></tr><tr><td class="day">9</td><td class="day">10</td><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td></tr><tr><td class="day">16</td><td class="day">17</td><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td></tr><tr><td class="day">23</td><td class="day">24</td><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td></tr><tr><td class="day">30</td><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td><td class="day new">6</td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="icon-arrow-left"></i></th><th colspan="5" class="switch">1989</th><th class="next" style="visibility: visible;"><i class="icon-arrow-right"></i></th></tr></thead><tbody><tr><td colspan="7"><span class="month">Jan</span><span class="month">Feb</span><span class="month">Mar</span><span class="month active">Apr</span><span class="month">May</span><span class="month">Jun</span><span class="month">Jul</span><span class="month">Aug</span><span class="month">Sep</span><span class="month">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="icon-arrow-left"></i></th><th colspan="5" class="switch">1980-1989</th><th class="next" style="visibility: visible;"><i class="icon-arrow-right"></i></th></tr></thead><tbody><tr><td colspan="7"><span class="year old">1979</span><span class="year">1980</span><span class="year">1981</span><span class="year">1982</span><span class="year">1983</span><span class="year">1984</span><span class="year">1985</span><span class="year">1986</span><span class="year">1987</span><span class="year">1988</span><span class="year active">1989</span><span class="year old">1990</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div></div><div class="datepicker datepicker-dropdown dropdown-menu" style="display: none;"><div class="datepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="icon-arrow-left"></i></th><th colspan="5" class="switch">March 2018</th><th class="next" style="visibility: visible;"><i class="icon-arrow-right"></i></th></tr><tr><th class="dow">Su</th><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th></tr></thead><tbody><tr><td class="day old">25</td><td class="day old">26</td><td class="day old">27</td><td class="day old">28</td><td class="day today active">1</td><td class="day">2</td><td class="day">3</td></tr><tr><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td><td class="day">9</td><td class="day">10</td></tr><tr><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td><td class="day">16</td><td class="day">17</td></tr><tr><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td><td class="day">23</td><td class="day">24</td></tr><tr><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td><td class="day">30</td><td class="day">31</td></tr><tr><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td><td class="day new">6</td><td class="day new">7</td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="icon-arrow-left"></i></th><th colspan="5" class="switch">2018</th><th class="next" style="visibility: visible;"><i class="icon-arrow-right"></i></th></tr></thead><tbody><tr><td colspan="7"><span class="month">Jan</span><span class="month">Feb</span><span class="month active">Mar</span><span class="month">Apr</span><span class="month">May</span><span class="month">Jun</span><span class="month">Jul</span><span class="month">Aug</span><span class="month">Sep</span><span class="month">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="icon-arrow-left"></i></th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><i class="icon-arrow-right"></i></th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year active">2018</span><span class="year">2019</span><span class="year old">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div></div><div id="galleryOverlay" style="display: none;"><div id="gallerySlider"></div><a id="prevArrow"><i class="icon-angle-left icon-4x"></i></a><a id="nextArrow"><i class="icon-angle-right icon-4x"></i></a></div></body>
</html>
