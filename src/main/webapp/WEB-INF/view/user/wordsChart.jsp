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
                            <h4 class="page-title">Dashboard</h4>
                        </div>
                    </div>

                    <div class="page-content-wrapper ">

                        <div class="container">

                     
						<%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
						<%@taglib prefix="b" uri="http://java.sun.com/jsp/jstl/functions" %>
						<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
						<table id="datatable">						    
						    <thead>
						        <tr>
						            <th></th>
						            <th>Positive Polarity</th>
						            <th>Negative Polarity</th>
						        </tr>
						    </thead>
						    <tbody>
						    <a:set value="0" var="count" scope="page"></a:set>   
						    <a:forEach var="articleWords" items="${articleWords}" varStatus="status">
						    <tr>
							  <th>${articleWords}</th>
							  <td>${positiveMeasure[status.index]}</td>
							  <td>${negativeMeasure[status.index]}</td>
							 </tr>
							</a:forEach>
						    </tbody>
						</table>
						<script>
						Highcharts.chart('container', {
						    data: {
						        table: 'datatable'
						    },
						    chart: {
						        type: 'column'
						    },
						    title: {
						        text: 'Analysis of Articles'
						    },
						    yAxis: {
						        allowDecimals: true,
						        title: {
						            text: 'Polarity'
						        }
						    },
						    tooltip: {
						        formatter: function () {
						            return '<b>' + this.series.name + '</b><br/>' +
						                this.point.y + ' ' + this.point.name.toLowerCase();
						        }
						    }
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