<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Feedback</title>
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
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/adminResources/css/star.css">
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
            <%@taglib prefix="a" uri="http://www.springframework.org/tags/form" %>
            <%@taglib prefix="b" uri="http://java.sun.com/jsp/jstl/core" %>

            <div class="content-page">
	
	
			<div class="content">

                    <div class="">
                        <div class="page-header-title">
                            <h4 class="page-title">Feedback</h4>
                        </div>
                    </div>

                    <div class="page-content-wrapper ">

                        <div class="container">

                            <div class="row">                                
                        	              	<div class="m-t-20">
                                                     <a:form class="" action="userFeedbackEntry" modelAttribute="feedbackVO" method = "post">
                                                          <div class="form-group">
                                                               <div class="stars">
																<div class="form-group">
																<label for="description">Rating:</label>

					  
					    										<a:radiobutton class="star star-5 col-sm-1 controls" id="star-5"   value="5" path="star" required="required"/>
					    										<label class="star star-5 col-sm-1 controls" for="star-5"></label>
					   											<a:radiobutton class="star star-5 col-sm-1 controls" id="star-4"   value="4" path="star" required="required"/>
					    										<label class="star star-4 col-sm-1 controls" for="star-4"></label>
					 											<a:radiobutton class="star star-5 col-sm-1 controls" id="star-3"   value="3" path="star" required="required"/>
					    										<label class="star star-3 col-sm-1 controls" for="star-3"></label>
					     										<a:radiobutton class="star star-5 col-sm-1 controls" id="star-2"   value="2" path="star" required="required"/>
					    										<label class="star star-2 col-sm-1 controls" for="star-2"></label>
					    										<a:radiobutton class="star star-5 col-sm-1 controls" id="star-1"   value="1" path="star" required="required"/>
					   										 	<label class="star star-1 col-sm-1 controls" for="star-1"></label>

				
																</div>
																</div>
                                                               
                                                               <div class = "form-group">
                                                               <label>Title of your feedback</label>
                                                               
                                                                    <a:input required = "true" class="form-control" rows="5" placeholder="Feedback Title" path = "feedbackTitle"/>
                                                                </div>
                                                               
                                                               <div class = "form-group">
                                                               <label>Type your feedback here</label>
                                                               
                                                                    <a:textarea required = "true" class="form-control" rows="5" placeholder="Feedback" path = "feedback"></a:textarea>
                                                                </div>
                                                           </div>
                                                    	
                                                    
                                                    <div class="form-group text-center m-t-30">
                            							<div class="col-xs-12">                            							
                                							
                                							<b:if test="${flagFeedbackSubmitted == '1'}">
                                							
                                								<p class="text-success" >Feedback Received!!</p>
                                								
                                							</b:if>
                            							
                            							</div>
                            						
                       		 						</div>
                                                           
                                                           <div class="form-group">
                                                                <div>
                                                                    <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                                        Submit
                                                                    </button>
                                                                    <button type="reset" class="btn btn-default waves-effect m-l-5">
                                                                        Cancel
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </a:form>
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