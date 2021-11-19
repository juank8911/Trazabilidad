<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header/>
 <title>sdstrp - Panel de Control</title>
 </head>

 <body>

        <%@include file ="sidebarNavbar2.jsp" %>
       <!-- MAIN -->
    <div class="col-9 ml-5">
    		<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Panel de Control</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">Generador</span></li>
                            </ul>
            </div>

                <!-- page title area end -->
                <div class="row justify-content-md-center">
                        <div class="row">
                        <!-- seo fact area start -->
                        <div class="col-lg-10 mt-4">
                            <div class="row">
                                <div class="col-4 ">
                                    <div class="card">
                                        <div class="seo-fact sbg1">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fas fa-archive"></i>No Enviadas</div>
                                                <h2>${dashNoEnviadas}</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="card">
                                        <div class="seo-fact sbg1">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fas fa-file-import"></i></i> Enviadas</div>
                                                
                                                <h2> ${dashEnviadas}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-4">
                                    <div class="card">
                                        <div class="seo-fact sbg2">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fas fa-truck-moving"></i>Aprobadas</div>
                                                 <h2>${dashAprovadas}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>

                                </div>
                                <div class="row">
                                	 <canvas id="marksChart" width="60%" height="40%"></canvas>
                                </div>
                            </div>
                      
												<div class="col mt-4">
										 <div class="row">
                                    		<div class="card">
                                        		<div class="seo-fact sbg2">
                                            		<div class="p-3 d-flex justify-content-between align-items-center">
                                                		<div class="seofct-icon"><i class="fa fa-industry"></i>Finalizadas</div>
                                                		 <h2>${dashFinalizadas}</h2>
                                            		</div>
                                        		</div>
                                    		</div>
                                		</div>
                                                        <div class="row mt-4">
                                                            <div class="card">
                                                                <div class="seo-fact sbg1">
                                                                    <div class="p-3 d-flex justify-content-between align-items-center">
                                                                        <div class="seofct-icon"><i class="fas fa-calendar-alt"></i></i>Programadas Generador</div>
                                                                        <h2>${dashPrograma}</h2>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row mt-4">
                                                            <div class="card">
                                                                <div class="seo-fact sbg3">
                                                                    <div class="p-3 d-flex justify-content-between align-items-center">
                                                                        <div class="seofct-icon"><i class="fas fa-truck-moving"></i>Rechazadas Transportador</div>
                                                                        <h2>${dashRechasadas}</h2>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row mt-4">
                                                            <div class="card">
                                                                <div class="seo-fact sbg3">
                                                                    <div class="p-3 d-flex justify-content-between align-items-center">
                                                                        <div class="seofct-icon"><i class="fas fa-industry"></i> Rechazadas Gestor</div>
                                                                       <h2>${dashRechaGes}</h2>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>

                
                                                </div>

                        </div>
                        <!-- seo fact area end -->


                    </div>
                    <!-- main content area end -->
                    <!-- footer area start-->
                    <footer>
                        <div class="footer-area">
                            <p>Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p>
                        </div>
                    </footer>
                    <!-- footer area end-->
                </div>
                <!-- page container area end -->

                <!-- bootstrap 4 js -->
<!--                 <script src="assets/js/popper.min.js"></script> -->
                <script src="assets/js/owl.carousel.min.js"></script>

                <script src="assets/js/jquery.slimscroll.min.js"></script>
                <script src="assets/js/jquery.slicknav.min.js"></script>

                <!-- start chart js -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
                <!-- start highcharts js -->
                <script src="https://code.highcharts.com/highcharts.js"></script>
                <!-- start zingchart js -->
                <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
                <script>
                    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
                    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
                </script>
                <!-- all line chart activation -->
                <script src="assets/js/line-chart.js"></script>
                <!-- all pie chart -->
                <script src="assets/js/pie-chart.js"></script>
                <!-- others plugins -->
                <script src="assets/js/plugins.js"></script>
                <script src="assets/js/scripts.js"></script>
       


    </div><!-- Main Col END -->
    
</div><!-- body-row END -->
                </body>
                </html>
