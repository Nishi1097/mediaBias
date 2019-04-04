<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Login</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="ThemeDesign" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="adminResources/images/favicon.ico">

        <link href="adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="adminResources/css/icons.css" rel="stylesheet" type="text/css">
        <link href="adminResources/css/style.css" rel="stylesheet" type="text/css">
	
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
                    <h4 class="text-muted text-center m-t-0"><b>Sign In</b></h4>

                    <form class="form-horizontal m-t-20" action="j_spring_security_check"  method="post">

                        <div class="form-group">
                            <div class="col-xs-12">
                                <input class="form-control" type="text" required="" placeholder="Username" name="username">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12">
                                <input class="form-control" type="password" required="" placeholder="Password" name="password">
                            </div>
                        </div>

                        <!-- <div class="form-group">
                            <div class="col-xs-12">
                                <div class="checkbox checkbox-primary">
                                    <input id="checkbox-signup" type="checkbox">
                                    <label for="checkbox-signup">
                                        Remember me
                                    </label>
                                </div>
                            </div>
                        </div> -->

                        <div class="form-group text-center m-t-40">
                            <div class="col-xs-12">
                                <button class="btn btn-primary btn-block btn-lg waves-effect waves-light" type="submit">Log In</button>
                            </div>
                        </div>

                        <div class="form-group m-t-30 m-b-0">
                            <div class="col-sm-7">
                                <a href="recoverPasswordStep1" class="text-muted"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
                            </div>
                            
                            <div class="col-sm-5 text-right">
                                <a href="register" class="text-muted">Create an account</a>
                            </div>
                        </div>
                        
                        <div class="form-group text-center m-t-30">
                            <div class="col-xs-12">
                                <p class="text-danger" >${message}</p>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>



        <!-- jQuery  -->
        <script src="adminResources/js/jquery.min.js"></script>
        <script src="adminResources/js/bootstrap.min.js"></script>
        <script src="adminResources/js/modernizr.min.js"></script>
        <script src="adminResources/js/detect.js"></script>
        <script src="adminResources/js/fastclick.js"></script>
        <script src="adminResources/js/jquery.slimscroll.js"></script>
        <script src="adminResources/js/jquery.blockUI.js"></script>
        <script src="adminResources/js/waves.js"></script>
        <script src="adminResources/js/wow.min.js"></script>
        <script src="adminResources/js/jquery.nicescroll.js"></script>
        <script src="adminResources/js/jquery.scrollTo.min.js"></script>

        <script src="adminResources/js/app.js"></script>

    </body>
</html>