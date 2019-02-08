<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Complaint</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="ThemeDesign" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="adminResources/images/favicon.ico">

        <!-- DataTables -->
        <link href="adminResources/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="adminResources/css/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="adminResources/css/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="adminResources/css/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="adminResources/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="adminResources/css/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />

        <link href="adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="adminResources/css/icons.css" rel="stylesheet" type="text/css">
        <link href="adminResources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	
	 <!-- Begin page -->
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
                            <h4 class="page-title">Complaint</h4>
                        </div>
                    </div>

                    <div class="page-content-wrapper ">

                        <div class="container">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="panel panel-primary">
                                        <div class="panel-body">
                                            <h4 class="m-b-30 m-t-0">Problems faced by Users</h4>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">
                                                    <table id="datatable" class="table table-striped table-bordered">
                                                        <thead>
                                                        <tr>
                                                            <th>Name</th>
                                                            <th>Email</th>
                                                            <th>Complaint</th>
                                                            <th>Send Response</th>
                                                        </tr>
                                                        </thead>


                                                        <tbody>
                                                        <tr>
                                                            <td>Drasti Shah</td>
                                                            <td>drastis20@gmail.com</td>
                                                            <td>Blah blah xvcs hvcuy chjvs</td>
                                                            <td><button class = "btn-success">Respond</button></td>
                                                        </tr>
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

        <!-- Datatables-->
        <script src="adminResources/js/jquery.dataTables.min.js"></script>
        <script src="adminResources/js/dataTables.bootstrap.js"></script>
        <script src="adminResources/js/dataTables.buttons.min.js"></script>
        <script src="adminResources/js/buttons.bootstrap.min.js"></script>
        <script src="adminResources/js/jszip.min.js"></script>
        <script src="adminResources/js/pdfmake.min.js"></script>
        <script src="adminResources/js/vfs_fonts.js"></script>
        <script src="adminResources/js/buttons.html5.min.js"></script>
        <script src="adminResources/js/buttons.print.min.js"></script>
        <script src="adminResources/js/dataTables.fixedHeader.min.js"></script>
        <script src="adminResources/js/dataTables.keyTable.min.js"></script>
        <script src="adminResources/js/dataTables.responsive.min.js"></script>
        <script src="adminResources/js/responsive.bootstrap.min.js"></script>
        <script src="adminResources/js/dataTables.scroller.min.js"></script>

        <!-- Datatable init js -->
        <script src="adminResources/js/datatables.init.js"></script>

        <script src="adminResources/js/app.js"></script>
             
	
	
</body>
</html>