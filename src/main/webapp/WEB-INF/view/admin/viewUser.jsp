<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>View and Manage User</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="ThemeDesign" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/images/favicon.ico">

        <!-- DataTables -->
        <link href="<%=request.getContextPath()%>/adminResources/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/adminResources/css/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/adminResources/css/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/adminResources/css/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/adminResources/css/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />

        <link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/adminResources/css/icons.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	
	 <!-- Begin page -->
	 <%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
        <div id="wrapper">

            <!-- Top Bar Start -->
           		<%@include file = "topbar.jsp"%>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->
				<%@include file = "navigation.jsp"%>
            <!-- Left Sidebar End -->

            <!-- Start right Content here -->

            <div class="content-page">
	
	
			<div class="content">

                    <div class="">
                        <div class="page-header-title">
                            <h4 class="page-title">User Details</h4>
                        </div>
                    </div>

                    <div class="page-content-wrapper ">

                        <div class="container">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="panel panel-primary">
                                        <div class="panel-body">
                                            <h4 class="m-b-30 m-t-0">View and Manage Users</h4>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">
                                                    <table id="datatable" class="table table-striped table-bordered">
                                                        <thead>
                                                        <tr>
                                                            <th>Name</th>
                                                            <th>Gender</th>
                                                            <th>Age</th>
                                                            <th>State</th>
                                                            <th>Email</th>
                                                            <th>Political Inclination</th>
                                                            <th>Articles uploaded</th>
                                                            <th>Articles reviewed</th>
                                                            <th>Delete User</th>
                                                        </tr>
                                                        </thead>


                                                        <tbody>
                                                        <a:forEach items="${userList }" var = "userList">
                                                        <tr>
                                                            <td>${userList.name }</td>
                                                            <td>${userList.gender }</td>
                                                            <td>${userList.age }</td>
                                                            <td>${userList.state }</td>
                                                            <td>${userList.email }</td>
                                                            <td>${userList.politicalInclination }</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td><a href = "deleteUser?userId=${userList.registerId}"><button class = "btn-danger">Delete User</button></a></td>
                                                        </tr>
                                                        </a:forEach>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div> <!-- End Row -->
                            
                </div><!-- container -->


                    </div> <!-- Page content Wrapper -->

                </div> <!-- content -->

                <%@include file = "footer.jsp"%>
                
            </div>
            <!-- End Right content here -->

        </div>
        <!-- END wrapper -->
                
                   
             
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

        <!-- Datatables-->
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.dataTables.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.buttons.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/buttons.bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jszip.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/pdfmake.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/vfs_fonts.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/buttons.html5.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/buttons.print.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.fixedHeader.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.keyTable.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.responsive.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/responsive.bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.scroller.min.js"></script>

        <!-- Datatable init js -->
        <script src="<%=request.getContextPath()%>/adminResources/js/datatables.init.js"></script>

        <script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>
             
	
	
</body>
</html>