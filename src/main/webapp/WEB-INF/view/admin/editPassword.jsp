<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Recover Password</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="ThemeDesign" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/images/favicon.ico">

        <link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/adminResources/css/icons.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet" type="text/css">

    </head>


    <body>

        <!-- Begin page -->
        <div class="accountbg"></div>
        <div class="wrapper-page">
            <div class="panel panel-color panel-primary panel-pages">

                <div class="panel-body">
                    <h3 class="text-center m-t-0 m-b-15">
                        <a href="index.jsp" class="text-center">Media Bias</a>
                    </h3>
                    <h4 class="text-muted text-center m-t-0"><b>Reset Password</b></h4>

                 <form class="pt-3"  action="recoverPasswordStep3" method="post">
                <!-- <div class="form-group">
                  <input type="email" class="form-control form-control-lg" name="username" placeholder="Username" path="username1">
                </div> -->
                 
                  <div class="form-group">
                  <div class="col-xs-12">
                  <label>Enter OTP sent on your email</label>
                  <input id="otp" type="text" class="form-control form-control-lg" placeholder="OTP" />
                </div>
                </div>
                 																<span id="otpSpn"></span>
                 
                 		<div class="form-group">
                            	<div class="col-xs-12">
                                      <label>Password</label>
                                      <input type="password" id="password" class="form-control" required="" placeholder="Password" name = "password"/>
                                </div>
                         </div>
			
						<div class="form-group">
							<div class="col-xs-12">
                                	<label>Confirm Password</label>
                                	<input id = "confirmpassword" type="password" class="form-control" required="" data-parsley-equalto="#password" placeholder="Re-Type Password"/>
                        	</div>
                        </div>
                
                <br><br>
                <div class="mt-3 form-group">
                <input disabled="disabled" id="calculate" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" type="submit" value="SUBMIT">
                 <!--  <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="../../index.html">SIGN IN</a> -->
                </div>
                </form>
                </div>

            </div>
        </div>



        <!-- jQuery  -->
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/detect.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/fastclick.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.slimscroll.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.blockUI.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/waves.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/wow.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.nicescroll.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.scrollTo.min.js"></script>

        <script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/adminResources/js/parsley.min.js"></script>
        <script type="text/javascript">
		
		var generatedOTP = <%=session.getAttribute("generatedOTP")%>;
		
		$("#otp").keyup(function(){
			
			
			
			if(generatedOTP == $("#otp").val()){
				$("#otpSpn").html("OTP Matched.");
				$("#otpSpn").css("color" , "green");
				$("#otpSpn").css("font-weight" , "bold");
				$("#calculate").attr("disabled" , false);
			}
			else{
				$("#otpSpn").html("Wrong OTP.");
				$("#otpSpn").css("color" , "red");
				$("#otpSpn").css("font-weight" , "bold");
				$("#calculate").attr("disabled" , true);
			}
			
		});
		</script>
		<script type="text/javascript">
            $(document).ready(function() {
                $('form').parsley();
            });
        </script>

    </body>
</html>