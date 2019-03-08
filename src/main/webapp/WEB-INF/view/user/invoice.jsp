<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Invoice</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="ThemeDesign" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/images/favicon.ico">

        <link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/adminResources/css/icons.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet" type="text/css">

    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">
                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="text-center">
                        <!--<a href="index.html" class="logo"><span>Up</span>Bond</a>-->
                        <!--<a href="index.html" class="logo-sm"><span>U</span></a>-->
                        <a href="index.html" class="logo"><img src="<%=request.getContextPath()%>/adminResources/images/logo.png" height="20" alt="logo"></a>
                        <a href="index.html" class="logo-sm"><img src="<%=request.getContextPath()%>/adminResources/images/logo_sm.png" height="30" alt="logo"></a>
                    </div>
                </div>
                <!-- Button mobile view to collapse sidebar menu -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container">
                        <div class="">
                            <div class="pull-left">
                                <button type="button" class="button-menu-mobile open-left waves-effect waves-light">
                                    <i class="ion-navicon"></i>
                                </button>
                                <span class="clearfix"></span>
                            </div>

                            <ul class="nav navbar-nav navbar-right pull-right">
                                <li class="dropdown hidden-xs">
                                    <a href="#" data-target="#" class="dropdown-toggle waves-effect waves-light notification-icon-box" data-toggle="dropdown" aria-expanded="true">
                                        <i class="ion-ios7-bell"></i> <span class="badge badge-xs badge-danger">17</span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-lg">
                                        <li class="text-center notifi-title">Notification <span class="badge badge-xs badge-success">3</span></li>
                                        <li class="list-group">
                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <i class="fa fa-diamond text-danger noti-sm-icon"></i>
                                                    <div class="noti-content">
                                                        <div class="media-heading">Your order is placed</div>
                                                        <p class="m-0">
                                                            <small>Dummy text of the printing and typesetting industry.</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <i class="fa  fa-envelope-o text-primary noti-sm-icon"></i>
                                                    <div class="noti-content">
                                                        <div class="media-heading">New Message received</div>
                                                        <p class="m-0">
                                                            <small>You have 87 unread messages</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <i class="fa fa-fighter-jet text-warning noti-sm-icon"></i>
                                                <div class="noti-content">
                                                    <div class="media-heading">Your item is shipped.</div>
                                                    <p class="m-0">
                                                        <small>It is a long established fact that a reader will</small>
                                                    </p>
                                                </div>
                                            </a>
                                            <!-- last list item -->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <small class="text-primary">See all notifications</small>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="hidden-xs">
                                    <a href="#" id="btn-fullscreen" class="waves-effect waves-light notification-icon-box"><i class="ion-qr-scanner"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="" class="dropdown-toggle profile waves-effect waves-light" data-toggle="dropdown" aria-expanded="true">
                                        <img src="<%=request.getContextPath()%>/adminResources/images/avatar-1.jpg" alt="user-img" class="img-circle">
                                                <span class="profile-username">
                                                    James Grim <span class="caret"></span>
                                                </span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0)"> Profile</a></li>
                                        <li><a href="javascript:void(0)"><span class="badge badge-success pull-right">5</span> Settings </a></li>
                                        <li><a href="javascript:void(0)"> Lock screen</a></li>
                                        <li class="divider"></li>
                                        <li><a href="javascript:void(0)"> Logout</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!--/.nav-collapse -->
                    </div>
                </div>
            </div>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->

            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">

                    <form class="sidebar-search">
                        <div class="">
                            <input type="text" class="form-control search-bar" placeholder="Search...">
                        </div>
                        <button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
                    </form>

                    <div class="user-details">
                        <div class="text-center">
                            <img src="<%=request.getContextPath()%>/adminResources/images/avatar-1.jpg" alt="" class="img-circle">
                        </div>
                        <div class="user-info">
                            <div class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">James A. Grim <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="javascript:void(0)"> Profile</a></li>
                                    <li><a href="javascript:void(0)"> Settings</a></li>
                                    <li><a href="javascript:void(0)"> Lock screen</a></li>
                                    <li class="divider"></li>
                                    <li><a href="javascript:void(0)"> Logout</a></li>
                                </ul>
                            </div>

                            <!--<p class="text-muted m-0"><i class="fa fa-dot-circle-o text-success"></i> Online</p>-->
                        </div>
                    </div>
                    <!--- Divider -->


                    <div id="sidebar-menu">
                        <ul>
                            <li>
                                <a href="index.html" class="waves-effect"><i class="ti-home"></i><span> Dashboard <span class="badge badge-primary pull-right">21</span></span></a>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-bar-chart"></i><span> Charts </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="charts-chartjs.html">Chartjs</a></li>
                                    <li><a href="charts-flot.html">Flot Chart</a></li>
                                    <li><a href="charts-morris.html">Morris Chart</a></li>
                                    <li><a href="charts-chartist.html">Chartist Chart</a></li>
                                    <li><a href="charts-other.html">Other Chart</a></li>
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-paint-bucket"></i> <span> Icons </span> <span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="icons-material.html">Material Design</a></li>
                                    <li><a href="icons-ion.html">Ion Icons</a></li>
                                    <li><a href="icons-fontawesome.html">Font awesome</a></li>
                                    <li><a href="icons-glyphicons.html">Glyphicons</a></li>
                                    <li><a href="icons-themify.html">Themify Icons</a></li>
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-pencil-alt"></i><span> Forms </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="form-elements.html">General Elements</a></li>
                                    <li><a href="form-validation.html">Form Validation</a></li>
                                    <li><a href="form-advanced.html">Advanced Form</a></li>
                                    <li><a href="form-editors.html">Form Editors</a></li>
                                    <li><a href="form-uploads.html">Multiple File Upload</a></li>
                                    <li><a href="form-mask.html">Form Mask</a></li>
                                    <li><a href="form-xeditable.html">Form Xeditable</a></li>
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-spray"></i> <span> User Interface </span> <span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="ui-buttons.html">Buttons</a></li>
                                    <li><a href="ui-panels.html">Panels</a></li>
                                    <li><a href="ui-tabs-accordions.html">Tabs &amp; Accordions</a></li>
                                    <li><a href="ui-modals.html">Modals</a></li>
                                    <li><a href="ui-components.html">Components</a></li>
                                    <li><a href="ui-progressbars.html">Progress Bars</a></li>
                                    <li><a href="ui-alerts.html">Alerts</a></li>
                                    <li><a href="ui-sweet-alert.html">Sweet-Alert</a></li>
                                    <li><a href="ui-grid.html">Grid</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="typography.html" class="waves-effect"><i class="ti-text"></i><span> Typography <span class="badge badge-primary pull-right">4</span></span></a>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-list"></i><span> Tables </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="tables-basic.html">Basic Tables</a></li>
                                    <li><a href="tables-datatable.html">Data Table</a></li>
                                    <li><a href="tables-responsive.html">Responsive Table</a></li>
                                    <li><a href="tables-editable.html">Editable Table</a></li>
                                </ul>
                            </li>

                            <li class="menu-title">Extras</li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-location-pin"></i><span> Maps </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="maps-google.html"> Google Map</a></li>
                                    <li><a href="maps-vector.html"> Vector Map</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="calendar.html" class="waves-effect"><i class="ti-calendar"></i><span> Calendar </span></a>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-files"></i><span> Pages </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="pages-timeline.html">Timeline</a></li>
                                    <li><a href="pages-invoice.html">Invoice</a></li>
                                    <li><a href="pages-directory.html">Directory</a></li>
                                    <li><a href="pages-login.html">Login</a></li>
                                    <li><a href="pages-register.html">Register</a></li>
                                    <li><a href="pages-recoverpw.html">Recover Password</a></li>
                                    <li><a href="pages-lock-screen.html">Lock Screen</a></li>
                                    <li><a href="pages-blank.html">Blank Page</a></li>
                                    <li><a href="pages-404.html">Error 404</a></li>
                                    <li><a href="pages-500.html">Error 500</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="collapse-menu.html" class="waves-effect"><i class="ti-layout-media-left"></i><span> Menu Collapse </span></a>
                            </li>

                            <li>
                                <a href="small-menu.html" class="waves-effect"><i class="ti-widget"></i><span> Small Menu </span></a>
                            </li>

                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div> <!-- end sidebarinner -->
            </div>
            <!-- Left Sidebar End -->

            <!-- Start right Content here -->

            <div class="content-page">
                <!-- Start content -->
                <div class="content">

                    <div class="">
                        <div class="page-header-title">
                            <h4 class="page-title">Invoice</h4>
                        </div>
                    </div>

                    <div class="page-content-wrapper ">

                        <div class="container">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="panel panel-default">
                                        <!-- <div class="panel-heading">
                                            <h4>Invoice</h4>
                                        </div> -->
                                        <div class="panel-body">

                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <div class="invoice-title">
                                                        <h4 class="pull-right">Order # 12345</h4>
                                                        <h3 class="m-t-0">UPBOND</h3>
                                                    </div>
                                                    <hr>
                                                    <div class="row">
                                                        <div class="col-xs-6">
                                                            <address>
                                                                <strong>Billed To:</strong><br>
                                                                John Smith<br>
                                                                1234 Main<br>
                                                                Apt. 4B<br>
                                                                Springfield, ST 54321
                                                            </address>
                                                        </div>
                                                        <div class="col-xs-6 text-right">
                                                            <address>
                                                                <strong>Shipped To:</strong><br>
                                                                Kenny Rigdon<br>
                                                                1234 Main<br>
                                                                Apt. 4B<br>
                                                                Springfield, ST 54321
                                                            </address>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-xs-6">
                                                            <address>
                                                                <strong>Payment Method:</strong><br>
                                                                Visa ending **** 4242<br>
                                                                jsmith@email.com
                                                            </address>
                                                        </div>
                                                        <div class="col-xs-6 text-right">
                                                            <address>
                                                                <strong>Order Date:</strong><br>
                                                                October 7, 2016<br><br>
                                                            </address>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            <h3 class="panel-title"><strong>Order summary</strong></h3>
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="table-responsive">
                                                                <table class="table">
                                                                    <thead>
                                                                    <tr>
                                                                        <td><strong>Item</strong></td>
                                                                        <td class="text-center"><strong>Price</strong></td>
                                                                        <td class="text-center"><strong>Quantity</strong>
                                                                        </td>
                                                                        <td class="text-right"><strong>Totals</strong></td>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <!-- foreach ($order->lineItems as $line) or some such thing here -->
                                                                    <tr>
                                                                        <td>BS-200</td>
                                                                        <td class="text-center">$10.99</td>
                                                                        <td class="text-center">1</td>
                                                                        <td class="text-right">$10.99</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>BS-400</td>
                                                                        <td class="text-center">$20.00</td>
                                                                        <td class="text-center">3</td>
                                                                        <td class="text-right">$60.00</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>BS-1000</td>
                                                                        <td class="text-center">$600.00</td>
                                                                        <td class="text-center">1</td>
                                                                        <td class="text-right">$600.00</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="thick-line"></td>
                                                                        <td class="thick-line"></td>
                                                                        <td class="thick-line text-center">
                                                                            <strong>Subtotal</strong></td>
                                                                        <td class="thick-line text-right">$670.99</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="no-line"></td>
                                                                        <td class="no-line"></td>
                                                                        <td class="no-line text-center">
                                                                            <strong>Shipping</strong></td>
                                                                        <td class="no-line text-right">$15</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="no-line"></td>
                                                                        <td class="no-line"></td>
                                                                        <td class="no-line text-center">
                                                                            <strong>Total</strong></td>
                                                                        <td class="no-line text-right"><h4 class="m-0">$685.99</h4></td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>

                                                            <div class="hidden-print">
                                                                <div class="pull-right">
                                                                    <a href="javascript:window.print()" class="btn btn-success waves-effect waves-light"><i class="fa fa-print"></i></a>
                                                                    <a href="#" class="btn btn-primary waves-effect waves-light">Send</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div> <!-- end row -->
                                        </div> <!-- panel body -->
                                    </div> <!-- end panel -->

                                </div> <!-- end col -->

                            </div>
                            <!-- end row -->


                        </div><!-- container -->


                    </div> <!-- Page content Wrapper -->

                </div> <!-- content -->

                <footer class="footer">
                    © 2017 Upbond - By Themesdesign.
                </footer>

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

        <script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>

    </body>
</html>