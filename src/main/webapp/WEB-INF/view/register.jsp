<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Upbond - Responsive Admin Dashboard Template</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="ThemeDesign" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/images/favicon.ico">

        <link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/adminResources/css/icons.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet" type="text/css">

    </head>


    <body>
		<%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@taglib prefix="b" uri="http://www.springframework.org/tags/form" %>
        <!-- Begin page -->
        <div class="accountbg"></div>
        <div class="wrapper-page">
            <div class="panel panel-color panel-primary panel-pages">

                <div class="panel-body">
                    <h3 class="text-center m-t-0 m-b-15">
                        <a href="index.html" class="text-center">Media Bias</a>
                    </h3>
                    <h4 class="text-muted text-center m-t-0"><b>Sign Up</b></h4>

                    <b:form class="form-horizontal m-t-20" action="registerProcess" modelAttribute = "registerObject">

                      

                        <div class="form-group">
                            <div class="col-xs-12">
                                <label>Username</label>
                                <b:input class="form-control" type="email" required="" placeholder="Username(Email)" path = "loginForeignKey.username"/>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-xs-12">
                                <label>Name</label>
                                <b:input class="form-control" type="text" required="" placeholder="Name" path = "name"/>
                            </div>
                        </div>
                        
                        
                        <div class="form-group">
                            <div class="col-xs-12">
                               	<label>Gender</label>
                                <b:select class="form-control" required="" path = "gender">
                                	<b:option value="" hidden="true" selected="selected">Select an option</b:option>
                                	<b:option value="male">Male</b:option>
                                	<b:option value="female">Female</b:option>
                                	<b:option value="other">Other</b:option>
                                </b:select>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-xs-12">
                                <label>Age</label>
                                <b:input class="form-control" type="text" required="" placeholder="Age" path = "age"/>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-xs-12">
                                <label>Political Inclination</label>
                                <b:select class="form-control" required="" path = "politicalInclination">
                                	<b:option value="" hidden="true" selected="selected">Select an option</b:option>
                                	<b:option value="bjp">Towards BJP</b:option>
                                	<b:option value="congress">Towards Congress</b:option>
                                	<b:option value="other">Other</b:option>
                                	<b:option value="none">None</b:option>
                                </b:select>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-xs-12">
                                <b:input class="form-control" type="text" required="" placeholder="State" path = "state"/>
                            </div>
                        </div>
                                                
                        <div class="form-group">
                            	<div class="col-xs-12">
                                      <label>Password</label>
                                      <b:input type="password" id="pass2" class="form-control" required="" placeholder="Password" path = "loginForeignKey.password"/>
                                </div>
                         </div>
			
						<div class="form-group">
							<div class="col-xs-12">
                                	<label>Confirm Password</label>
                                	<input type="password" class="form-control" required="" data-parsley-equalto="#pass2" placeholder="Re-Type Password"/>
                        	</div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12">
                                <div class="checkbox checkbox-primary">
                                    <input id="checkbox-signup" type="checkbox" checked="checked">
                                    <label for="checkbox-signup">
                                        I accept <a href="#">Terms and Conditions</a>
                                    </label>
                                </div>

                            </div>
                        </div>

                        <div class="form-group text-center m-t-40">
                            <div class="col-xs-12">
                                <button class="btn btn-primary btn-block btn-lg waves-effect waves-light" type="submit">Register</button>
                            </div>
                        </div>

                        <div class="form-group m-t-30 m-b-0">
                            <div class="col-sm-12 text-center">
                                <a href="/" class="text-muted">Already have account?</a>
                            </div>
                        </div>

                    </b:form>
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
            $(document).ready(function() {
                $('form').parsley();
            });
        </script>      

    </body>
</html>