<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Timeline</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="ThemeDesign" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="adminResources/images/favicon.ico">

        <link href="adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="adminResources/css/icons.css" rel="stylesheet" type="text/css">
        <link href="adminResources/css/style.css" rel="stylesheet" type="text/css">

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
                        <a href="index.html" class="logo"><img src="adminResources/images/logo.png" height="20" alt="logo"></a>
                        <a href="index.html" class="logo-sm"><img src="adminResources/images/logo_sm.png" height="30" alt="logo"></a>
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
                                        <img src="adminResources/images/avatar-1.jpg" alt="user-img" class="img-circle">
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
                            <img src="adminResources/images/avatar-1.jpg" alt="" class="img-circle">
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
                            <h4 class="page-title">Timeline</h4>
                        </div>
                    </div>

                    <div class="page-content-wrapper ">

                        <div class="container">

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="panel panel-primary">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <section id="cd-timeline" class="cd-container">
                                                        <div class="cd-timeline-block">
                                                            <div class="cd-timeline-img cd-success">
                                                                <i class="fa fa-tag"></i>
                                                            </div> <!-- cd-timeline-img -->

                                                            <div class="cd-timeline-content">
                                                                <h3>Timeline Event One</h3>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis qui ut.</p>
                                                                <span class="cd-date">May 23</span>
                                                            </div> <!-- cd-timeline-content -->
                                                        </div> <!-- cd-timeline-block -->

                                                        <div class="cd-timeline-block">
                                                            <div class="cd-timeline-img cd-danger">
                                                                <i class="fa fa-thumbs-up"></i>
                                                            </div> <!-- cd-timeline-img -->

                                                            <div class="cd-timeline-content">
                                                                <h3>Timeline Event Two</h3>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde?</p>
                                                                <button type="button" class="btn btn-primary btn-rounded waves-effect waves-light m-t-15">See more detail</button>

                                                                <span class="cd-date">May 30</span>
                                                            </div> <!-- cd-timeline-content -->
                                                        </div> <!-- cd-timeline-block -->

                                                        <div class="cd-timeline-block">
                                                            <div class="cd-timeline-img cd-info">
                                                                <i class="fa fa-star"></i>
                                                            </div> <!-- cd-timeline-img -->

                                                            <div class="cd-timeline-content">
                                                                <h3>Timeline Event Three</h3>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, obcaecati, quisquam id molestias eaque asperiores voluptatibus cupiditate error assumenda delectus odit similique earum voluptatem doloremque dolorem ipsam quae rerum quis. Odit, itaque, deserunt corporis vero ipsum nisi eius odio natus ullam provident pariatur temporibus quia eos repellat ... <a href="#">Read more</a></p>
                                                                <span class="cd-date">Jun 05</span>
                                                            </div> <!-- cd-timeline-content -->
                                                        </div> <!-- cd-timeline-block -->

                                                        <div class="cd-timeline-block">
                                                            <div class="cd-timeline-img cd-pink">
                                                                <i class="fa fa-image"></i>
                                                            </div> <!-- cd-timeline-img -->

                                                            <div class="cd-timeline-content">
                                                                <h3>Timeline Event Four</h3>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis qui ut.</p>
                                                                <img src="adminResources/images/img1.jpg" alt="">
                                                                <span class="cd-date">Jun 14</span>
                                                            </div> <!-- cd-timeline-content -->
                                                        </div> <!-- cd-timeline-block -->

                                                        <div class="cd-timeline-block">
                                                            <div class="cd-timeline-img cd-warning">
                                                                <i class="fa fa-pencil-square-o"></i>
                                                            </div> <!-- cd-timeline-img -->

                                                            <div class="cd-timeline-content">
                                                                <h3>Timeline Event Five</h3>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum.</p>
                                                                <button type="button" class="btn btn-primary btn-rounded waves-effect waves-light m-t-15">See more detail</button>
                                                                <span class="cd-date">Jun 18</span>
                                                            </div> <!-- cd-timeline-content -->
                                                        </div> <!-- cd-timeline-block -->

                                                        <div class="cd-timeline-block">
                                                            <div class="cd-timeline-img cd-primary">
                                                                <i class="fa fa-paperclip"></i>
                                                            </div> <!-- cd-timeline-img -->

                                                            <div class="cd-timeline-content">
                                                                <h3>Timeline Event End</h3>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, obcaecati, quisquam id molestias eaque asperiores voluptatibus cupiditate error assumenda delectus odit similique earum voluptatem doloremque dolorem ipsam quae rerum quis. Odit, itaque, deserunt corporis vero ipsum nisi eius odio natus ullam provident pariatur temporibus quia eos repellat consequuntur perferendis enim amet quae quasi repudiandae sed quod veniam dolore possimus rem voluptatum eveniet eligendi quis fugiat aliquam sunt similique aut adipisci.</p>
                                                                <span class="cd-date">Jun 30</span>
                                                            </div> <!-- cd-timeline-content -->
                                                        </div> <!-- cd-timeline-block -->
                                                    </section> <!-- cd-timeline -->
                                                </div>
                                            </div><!-- Row -->

                                        </div>
                                    </div>
                                </div>
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