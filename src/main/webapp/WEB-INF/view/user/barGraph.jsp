<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Media Bias</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="ThemeDesign" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/images/favicon.ico">

        <!--Morris Chart CSS -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/morris.css">

        <link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/adminResources/css/icons.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet" type="text/css">
        <script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/modules/data.js"></script>
		<script src="https://code.highcharts.com/modules/exporting.js"></script>
		<script src="https://code.highcharts.com/modules/export-data.js"></script>

    </head>

	<%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
    <body class="fixed-left">

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
                <!-- Start content -->
                <div class="content">

                    <div class="">
                        <div class="page-header-title">
                            <h4 class="page-title">Graph</h4>
                        </div>
                    </div>

                    <div class="page-content-wrapper ">

                        <div class="container">

                     
							<script src="<%=request.getContextPath()%>/adminResources/js/highcharts.js"></script>
							<script src="<%=request.getContextPath()%>/adminResources/js/exporting.js"></script>
							<script src="https://code.highcharts.com/highcharts.js"></script>
							
							
							
							<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fun" %>
							
							
							<div id="container" style="height: 400px"></div>
							
							<script>
							Highcharts.chart('container', {
							
							    chart: {
							        type: 'column'
							    },
							
							    title: {
							        text: 'Number of Articles for topic: ${topic}'
							    },
							
							    xAxis: {
							        type: 'category'
							    },
							
							    plotOptions: {
							        series: {
							            cursor: 'pointer',
							            point: {
							                events: {
							                    click: function () {
							                        location.href = 'articleList?list=' +
							                            this.options.key;
							                    }
							                }
							            }
							        }
							    },
							
							    series: [{
								   	name: 'News Articles',
									data: [{
							        y: ${fun:length(quint)},
							        name: 'Quint',
							        key: '${quint}'
							    }, {
							        y: ${fun:length(firstpost)},
							        name: 'FirstPost',
							        key: '${firstpost}'
							    }, {
							        y: ${fun:length(opindia)},
							        name: 'OPIndia',
							        key: '${opindia}'
							    }, {
							        y: ${fun:length(thewire)},
							        name: 'The Wire',
							        key: '${thewire}'
							    }, {
							        y: ${fun:length(scroll)},
							        name: 'Scroll',
							        key: '${scroll}'
							    }, {
							        y: ${fun:length(catchnews)},
							        name: 'Catch News',
							        key: '${catchnews}'
							    }]
							}]
							});
							</script>
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

        <!--Morris Chart-->
        <!-- <script src="<%=request.getContextPath()%>/adminResources/js/morris.min.js"></script> -->
        <script src="<%=request.getContextPath()%>/adminResources/js/raphael-min.js"></script>

        <script src="<%=request.getContextPath()%>/adminResources/js/dashborad.js"></script>

        <script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>

    </body>
</html>