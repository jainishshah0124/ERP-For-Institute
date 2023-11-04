<%-- 
    Document   : newjsp
    Created on : Feb 23, 2018, 7:03:13 PM
    Author     : Jainish Shah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            
            <div class="container">
                <div class="span4 offset4">
                    <div class="padded">
                        <center>
                        </center>
                        <div class="login box box-border" style="margin-top: 10px;">
                            <div class="box-header">
                                <span class="title" style="font-weight: bold;text-align: center">School system | Login</span>
                            </div>
                            <div class="box-content padded">
                                <script>
                                    function check_account_type() {
                                        var account_type = document.getElementById('account_selector').value;
                                        if (account_type == "") {
                                            Growl.info({title:"Please Select Your Account First",text:" "})
                                            return false;
                                        }
                                        else return true;
                                    }
                                </script>
                                <form action="http://sms.w3developer.org/index.php?/login" method="post" accept-charset="utf-8" class="separate-sections" onsubmit="return check_account_type()"><div style="display:none">
<input type="hidden" name="authenticity_token" value="7760457465c1a22e7767632f3f8b5b15" />
</div>                                <center>
                                    <div style="height:100px;">
                                        <div id="avatar" class="avatar">
                                            <img src="http://sms.w3developer.org/template/images/icons_big/account.png" class="avatar-big"  id="account_img" style=""/>
                                        </div>
                                    </div>

                                    <img src="images/icons_big/admin.png" style="display:none;"/>
                                    <img src="images/icons_big/accountant.png" style="display:none;"/>
                                    <img src="images/icons_big/teacher.png" style="display:none;"/>
                                    <img src="images/icons_big/student.png" style="display:none;"/>
                                    <img src="images/icons_big/parent.png" style="display:none;"/>
                                </center>
                                <div class="">
                                    <select id="account_selector" class="validate[required]" name="login_type" style="width:100%;margin-bottom:0px !important;" >
                                        <option value="">Select Account Type</option>
                                        <option value="admin">Admin</option>
                                        <option value="teacher">Teacher</option>
                                        <option value="student">Student</option>
                                        <option value="parent">Parent</option>
                                    </select>
                                </div>
                                <style>
                                    .flip_in{
                                        opacity:0;
                                        -moz-transform:rotateY(-90deg);
                                        -webkit-transform:rotateY(-90deg);
                                        transform:rotateY(-90deg);
                                        transition:.2s;
                                    }
                                    .flip_out{
                                        opacity:1;
                                        -moz-transform:rotateY(0deg);
                                        -webkit-transform:rotateY(0deg);
                                        transform:rotateY(0deg);
                                        transition:.2s;
                                    }
                                </style>

                                <script>
                                    $(document).ready(function(){
                                        $("#account_selector").change(function(){

                                            //squeezee in
                                            function rotate_in()
                                            {
                                                $('#avatar').toggleClass('flip_in');
                                            }
                                            setTimeout(rotate_in, 0);

                                            //change img src
                                            function set_img()
                                            {
                                                var img = document.getElementById('account_selector').value;
                                                if(img == "")
                                                    img	=	'account';
                                                $("#account_img").attr("src", "http://sms.w3developer.org/template/images/icons_big/"+img+".png");
                                            }
                                            setTimeout(set_img, 200);

                                            //expand out
                                            function rotate_out()
                                            {
                                                $('#avatar').toggleClass('flip_out');
                                            }
                                            setTimeout(rotate_out, 200);

                                            //clear css
                                            function reset_class()
                                            {
                                                $("#avatar").attr("class", "avatar");
                                            }
                                            setTimeout(reset_class, 500);
                                        });
                                    });
                                </script>

                                <div class="input-prepend">
                                    <span class="add-on" href="#">
                                        <i class="icon-envelope"></i>
                                    </span>
                                    <input name="email" type="text" placeholder="Email" autocomplete="off">
                                </div>
                                <div class="input-prepend">
                                    <span class="add-on" href="#">
                                        <i class="icon-key"></i>
                                    </span>
                                    <input name="password" type="password" placeholder="Password" autocomplete="off">
                                </div>
                                <div class="row-fluid">
                                    <div class="span6">
                                        <a  data-toggle="modal" href="#modal-simple"  class="btn btn-blue btn-block" >
                                            Forgot Password ? 
                                        </a>
                                    </div>
                                    <div class="span6">
                                        <input type="submit" class="btn btn-gray btn-block "  value="Login"/>
                                    </div>
                                </div>
                                </form>
            <table class="table table-bordered">
             <thead> <tr><th style="text-align:center">Email</th> <th style="text-align:center">Password</th> <th style="text-align:center">Type</th> </tr> </thead> 
             <tbody> 
             <tr><td style="text-align:center">admin@w3developer.org</td> <td style="text-align:center">1234</td> <td style="text-align:center">Admin</td> </tr>
             <tr><td style="text-align:center">teacher@w3developer.org</td> <td style="text-align:center">1234</td> <td style="text-align:center">Teacher</td> </tr>
             <tr><td style="text-align:center">Student@w3developer.org</td> <td style="text-align:center">1234</td> <td style="text-align:center">Student</td> </tr>
             <tr><td style="text-align:center">Parent@w3developer.org</td> <td style="text-align:center">1234</td> <td style="text-align:center">Parent</td> </tr> 
             </tbody> 
             </table>
                                

                            </div>
                        </div>
                        <hr />
                        <div style="color:#a5a5a5;">
                            <a href="#" target="_blank">
                                <center>&copy; 2018, w3developer Ltd</center>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-----------password reset form ------>
        <div id="modal-simple" class="modal hide fade" style="top:30%;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h6 id="modal-tablesLabel">Reset Password</h6>
            </div>
            <div class="modal-body" style="padding:20px;">
                <form action="http://sms.w3developer.org/index.php?/login/reset_password" method="post" accept-charset="utf-8"><div style="display:none">
<input type="hidden" name="authenticity_token" value="7760457465c1a22e7767632f3f8b5b15" />
</div>                <select class="validate[required]" name="account_type"  style="margin-bottom: 0px !important;">
                    <option value="">Select Account Type</option>
                    <option value="admin">Admin</option>
                    
                    <option value="teacher">Teacher & Staff</option>
                    <option value="student">Student</option>
                    <option value="parent">Parent</option>
                </select>
                <input type="email" name="email"  placeholder="Email"  style="margin-bottom: 0px !important;"/>
                <input type="submit" value="Reset"  class="btn btn-blue btn-medium"/>
                </form>            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-----------password reset form ------>
    </body>
</html>
