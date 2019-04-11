<%@ page import="com.demo.util.BaseMethods" %>
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
                            <!-- <img src="<%=request.getContextPath()%>/adminResources/images/avatar-1.jpg" alt="" class="img-circle"> -->
                        </div>
                        <div class="user-info">
                            <div class="dropdown">
                            	
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <% out.print(user1); %> <span class="caret"></span></a>
                                
                
                                <ul class="dropdown-menu">
                                    <li><a href="javascript:void(0)"> Lock screen</a></li>
                                    <li class="divider"></li>
                                    <li><a href="../logout"> Logout</a></li>
                                </ul>
                            </div>

                            <!--<p class="text-muted m-0"><i class="fa fa-dot-circle-o text-success"></i> Online</p>-->
                        </div>
                    </div>
                    <!--- Divider -->


                    <div id="sidebar-menu">
                        <ul>
                            <li>
                                <a href="index" class="waves-effect"><i class="ti-home"></i><span> Dashboard <span class="badge badge-primary pull-right"></span></span></a>
                            </li>
                            <!-- <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-bar-chart"></i><span> Charts </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="charts-chartjs.jsp">Chartjs</a></li>
                                    <li><a href="charts-flot.jsp">Flot Chart</a></li>
                                    <li><a href="charts-morris.jsp">Morris Chart</a></li>
                                    <li><a href="charts-chartist.jsp">Chartist Chart</a></li>
                                    <li><a href="charts-other.jsp">Other Chart</a></li>
                                </ul>
                            </li>-->

                            <!-- <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-paint-bucket"></i> <span> Icons </span> <span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="icons-material.jsp">Material Design</a></li>
                                    <li><a href="icons-ion.jsp">Ion Icons</a></li>
                                    <li><a href="icons-fontawesome.jsp">Font awesome</a></li>
                                    <li><a href="icons-glyphicons.jsp">Glyphicons</a></li>
                                    <li><a href="icons-themify.jsp">Themify Icons</a></li>
                                </ul>
                            </li> -->

                            <!-- <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-pencil-alt"></i><span> Forms </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                   <!-- <li><a href="form-elements.jsp">General Elements</a></li>
                                    <li><a href="form-advanced.jsp">Advanced Form</a></li>
                                    <li><a href="form-editors.jsp">Form Editors</a></li>                                    
                                    <li><a href="form-mask.jsp">Form Mask</a></li>
                                    <li><a href="form-xeditable.jsp">Form Xeditable</a></li>
                                    <li><a href="formValidation.jsp">Form Validation</a></li>
                                    <li><a href="formUpload.jsp">Multiple File Upload</a></li>
                                </ul>
                            </li> -->

                            <!-- <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-spray"></i> <span> User Interface </span> <span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="ui-buttons.jsp">Buttons</a></li>
                                    <li><a href="ui-panels.jsp">Panels</a></li>
                                    <li><a href="ui-tabs-accordions.jsp">Tabs &amp; Accordions</a></li>
                                    <li><a href="ui-modals.jsp">Modals</a></li>
                                    <li><a href="ui-components.jsp">Components</a></li>
                                    <li><a href="ui-progressbars.jsp">Progress Bars</a></li>
                                    <li><a href="ui-alerts.jsp">Alerts</a></li>
                                    <li><a href="ui-sweet-alert.jsp">Sweet-Alert</a></li>
                                    <li><a href="ui-grid.jsp">Grid</a></li>
                                </ul>
                            </li>-->

                            <!-- <li>
                                <a href="typography.jsp" class="waves-effect"><i class="ti-text"></i><span> Typography <span class="badge badge-primary pull-right">4</span></span></a>
                            </li> -->

                            <!--<li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-list"></i><span> Tables </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                 <!-- <li><a href="tables-basic.jsp">Basic Tables</a></li>                                
                                    <li><a href="tables-responsive.jsp">Responsive Table</a></li>
                                    <li><a href="tables-editable.jsp">Editable Table</a></li>
                                    <li><a href="dataTable.jsp">Data Table</a></li>
                                </ul>
                            </li>

                             <li class="menu-title">Extras</li> -->

                            <!-- <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-location-pin"></i><span> Maps </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="maps-google.jsp"> Google Map</a></li>
                                    <li><a href="maps-vector.jsp"> Vector Map</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="calendar.jsp" class="waves-effect"><i class="ti-calendar"></i><span> Calendar </span></a>
                            </li> -->

                            <!-- <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-files"></i><span> Pages </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="timeline.jsp">Timeline</a></li>
                                    <li><a href="invoice.jsp">Invoice</a></li>
                                    <li><a href="directory.jsp">Directory</a></li>
                                    <li><a href="login.jsp">Login</a></li>
                                    <li><a href="register.jsp">Register</a></li>
                                    <li><a href="recoverPassword.jsp">Recover Password</a></li>
                                    <li><a href="lockscreen.jsp">Lock Screen</a></li>
                                <!--<li><a href="pages-blank.jsp">Blank Page</a></li>
                                    <li><a href="error404.jsp">Error 404</a></li>
                                    <li><a href="error500.jsp">Error 500</a></li>
                                </ul>
                            </li>-->
                            
                            <!-- <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-user"></i><span> Users </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="viewUser">View and Manage Users</a></li>
                                </ul>
                            </li> -->
							
							<li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-notepad"></i><span> Feedback Complaint </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="userFeedback">Submit Feedback</a></li>
                                    <li><a href="userFeedbackView">View Feedback</a></li>                                    
                                    <li><a href="userComplaint">Submit Complaint</a></li>
                                    <li><a href="userComplaintView">View Complaint</a></li>
                                </ul>
                            </li>
                            
                            <!-- <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-user"></i><span> Data Set </span><span class="pull-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="dataSet">View and Manage Data</a></li>
                                </ul>
                            </li> -->
							
											
                            <!-- <li>
                                <a href="collapse-menu.html" class="waves-effect"><i class="ti-layout-media-left"></i><span> Menu Collapse </span></a>
                            </li>

                            <li>
                                <a href="small-menu.html" class="waves-effect"><i class="ti-widget"></i><span> Small Menu </span></a>
                            </li> -->

                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div> <!-- end sidebarinner -->
            </div>
