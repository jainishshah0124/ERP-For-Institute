<%-- 
    Document   : mnage_subject
    Created on : Feb 23, 2018, 10:54:17 PM
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
        <div id="main_body" style="">
            <%@include file="header_admin.jsp" %>
            <div class="main-content">
                        <div class="container-fluid">
            <div class="row-fluid">
                <div class="area-top clearfix">
                    <div class="pull-left header">
                        <h3 class="title">
                        <i class="icon-info-sign"></i>
                        Manage Subject </h3>
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
					Subject List                    	</a></li>		
			<li>
            	<a href="#add" data-toggle="tab"><i class="icon-plus"></i>
					Add Subject                    	</a></li>
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
		<div class="tab-content">            
            <!----TABLE LISTING STARTS--->
            <div class="tab-pane box active" id="list">
				
                <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline" role="grid"><div class="table-header"><div class="dataTables_filter" id="DataTables_Table_0_filter"><label>Search: <input aria-controls="DataTables_Table_0" type="text"></label></div><div id="DataTables_Table_0_length" class="dataTables_length"><label>Show <div class="selector" style="width: 67px;"><span style="width: 40px; -moz-user-select: none;">10</span><select size="1" name="DataTables_Table_0_length" aria-controls="DataTables_Table_0" style=""><option value="10" selected="selected">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select></div> entries</label></div></div>
<table class="dTable responsive dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" border="0" cellspacing="0" cellpadding="0">
                	<thead>
                            <tr role="row"><th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Class: activate to sort column descending"><div>Subject Code</div></th><th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Group: activate to sort column ascending"><div>Subject Name</div></th><th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Subject Name: activate to sort column ascending"><div>Branch</div></th><th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Teacher &amp;amp; Staff: activate to sort column ascending"><div>Credit</div></th><th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Options: activate to sort column ascending">Semester</th>
<!--            <div>Options</div></th></tr>-->
					</thead>
                    
                                     <%
                                Connection con=Config.connection.getConnection();
                                PreparedStatement ps=con.prepareStatement("select * from subject_master");
                                ResultSet rs=ps.executeQuery();
                         %>
                <tbody role="alert" aria-live="polite" aria-relevant="all">
                    <%
                                while(rs.next())
                                {
                                    %>
                                    <tr class="odd">
                                        <td class="  sorting_1"><%=rs.getString("sub_code")%></td>
							<td class=" ">
							<%=rs.getString("sub_name")%>					</td>
														<td class=" ">
								<%=rs.getString("branch")%>	</td>
							<td class=" ">
								<%=rs.getString("semester")%>							
								</td>
                                                                <td><%=rs.getString("credit")%></td>
<!--							<td class=" " align="center">
                            	<a data-toggle="modal" href="#modal-form" onclick="modal('edit_subject',36)" class="btn btn-gray btn-small">
                                		<i class="icon-wrench"></i> Edit                                </a>
                            	<a data-toggle="modal" href="#modal-delete" onclick="modal_delete('http://sms.w3developer.org/index.php?admin/subject/delete/36')" class="btn btn-red btn-small">
                                		<i class="icon-trash"></i> Delete                                </a>
        					</td>-->
                        </tr>
                                    <%
                                }
                    %>
                    </tbody></table>
                    <div class="table-footer"><div class="dataTables_info" id="DataTables_Table_0_info">Showing 1 to 10 of 22 entries</div><div class="dataTables_paginate paging_full_numbers" id="DataTables_Table_0_paginate"><a tabindex="0" class="first paginate_button paginate_button_disabled" id="DataTables_Table_0_first">First</a><a tabindex="0" class="previous paginate_button paginate_button_disabled" id="DataTables_Table_0_previous">Previous</a><span><a tabindex="0" class="paginate_active">1</a><a tabindex="0" class="paginate_button">2</a><a tabindex="0" class="paginate_button">3</a></span><a tabindex="0" class="next paginate_button" id="DataTables_Table_0_next">Next</a><a tabindex="0" class="last paginate_button" id="DataTables_Table_0_last">Last</a></div></div></div>
			</div>
            <!----TABLE LISTING ENDS--->

			<!----CREATION FORM STARTS---->
			<div class="tab-pane box" id="add" style="padding: 5px;">
                <div class="box-content" style="">
                	<form action="add_subject" method="post" accept-charset="utf-8" class="form-horizontal validatable" target="_top" style=""><div style="display:none">
<input name="authenticity_token" value="85c14eae2928009a760c8653c31a0858" type="hidden">
</div>                        <div class="padded" style="">
                            <div class="control-group">
                                <label class="control-label">Name</label>
                                <div class="controls">
                                    <input class="validate[required]" name="name" type="text">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Code</label>
                                <div class="controls">
                                    <input class="validate[required]" name="code" type="text">
                                </div>
                            </div>
    
							<div class="control-group" style="">
                                <label class="control-label">Branch</label>
                                <div class="controls" style="">
                                        <select name="branch" class="uniform" style="">
                                    <div class="selector" style="width: 152px;">
                                    	<option>Computer</option>
                                        <option>IT</option>
                                        <option>Mechanical</option>
                                        <option>Aeronautical</option>
                                        <option>EC</option>
                                        <option>Civil</option>
                                        </div></select>
                                </div>
                            </div>
				<div class="control-group">
                                <label class="control-label">Credit</label>
                                <div class="controls">
                                    <input class="validate[required]" name="credit" type="text">
                                </div>
                            </div>
    <div class="control-group">
                                <label class="control-label">Semester</label>
                                <div class="controls">
                                    <select name="sem" class="uniform">
                                     <div class="selector" style="width: 152px;"><span style="width: 125px; -moz-user-select: none;"> --> Select Semester <--</span>
                                        
                                    	<option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                        </div></select>
                                </div>
                            </div>
                            
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray">Add Subject</button>
                        </div>
                    </form>                
                </div>                
			</div>
			<!----CREATION FORM ENDS--->
			
			<!----CREATION College FORM STARTS---->
			<div class="tab-pane box" id="addcollege" style="padding: 5px;">
                <div class="box-content" style="">
                	<form action="http://sms.w3developer.org/index.php?/admin/college/create" method="post" accept-charset="utf-8" class="form-horizontal validatable" target="_top" style=""><div style="display:none">
<input name="authenticity_token" value="85c14eae2928009a760c8653c31a0858" type="hidden">
</div>                        <div class="padded" style="">
                            <div class="control-group">
                                <label class="control-label">Name</label>
                                <div class="controls">
                                    <input class="validate[required]" name="name" type="text">
                                </div>
                            </div>
                            <div class="control-group" style="">
                                <label class="control-label">Group</label>
                                <div class="controls" style="">
                                    <div class="selector" style="width: 152px;"><span style="width: 125px; -moz-user-select: none;">All</span><select name="group_id" class="uniform" style="width: 100%;">
									    <option value="0">All</option>
                                    	<option value="1">Science</option><option value="2">Humanities</option><option value="3">Business Studies</option>                                    </select></div>
                                </div>
                            </div>
                            <div class="control-group" style="">
                                <label class="control-label">Category</label>
                                <div class="controls" style="">
                                    <div class="selector" style="width: 131px;"><span style="width: 104px; -moz-user-select: none;">Compulsory</span><select name="category_id" class="uniform" style="width: 100%;">
                                    	<option value="1">Compulsory</option>
										<option value="2">Other Subject</option>
										<option value="3">Optional</option>
                                    </select></div>
                                </div>
                            </div>
							
							<div class="control-group" style="">
                                <label class="control-label">Teacher &amp; Staff</label>
                                <div class="controls" style="">
                                    <div class="selector" style="width: 172px;"><span style="width: 145px; -moz-user-select: none;">Md. srikanth</span><select name="teacher_id" class="uniform" style="width: 100%;">
                                    	                                    		<option value="14">Md. srikanth</option>
                                                                            		<option value="15">Shirin Shabnam</option>
                                                                            		<option value="16">Mst. Shahenur Akter</option>
                                                                            		<option value="30">Shamim Anowar</option>
                                                                            		<option value="31">Pallav Thakur</option>
                                                                            		<option value="32">jaini</option>
                                                                            		<option value="33">jaini</option>
                                                                            		<option value="34">jaini</option>
                                                                            		<option value="35">jaini</option>
                                                                            		<option value="36">jaini</option>
                                                                            </select></div>
                                </div>
                            </div>
							
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray">Add Subject</button>
                        </div>
                    </form>                
                </div>                
			</div>
			<!----CREATION College FORM ENDS--->
            
		</div>
	</div>
</div>                </div>       
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
            '<iframe id="frame1" src="http://sms.w3deindex.php?modal/popup/'+param1+'/'+param2+'/'+param3+'" width="100%" height="400" frameborder="0"></iframe>';

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
