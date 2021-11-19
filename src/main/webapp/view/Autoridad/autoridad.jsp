<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header />
        <title>sdstrp - Panel de Control</title>
        <link rel="stylesheet" href="assets/css/radarCanvas.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
		<script src="assets/js/radarCanvas.js"></script>
     
    </head>

    <body>
        
        <%@include file ="sidebarNavbar2.jsp" %>
   
            <div class="col-9 ml-5">


<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Panel de Control</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">Autoridad</span></li>
                            </ul>
            			</div>
                <!-- page title area start -->
			
                <!-- page title area end -->
                
                    <div class="row justify-content-md-center">
                        <!-- seo fact area start -->
                        <div class="row">
                        <div class="col-lg-10 mt-4">
                            <div class="row">
                                <div class="col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg1">
                                            <div class="p-4 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fas fa-archive"></i> Generadores</div>
                                                <h2>${gendhSedesAut}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg2">
                                            <div class="p-4 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fas fa-truck-moving"></i> Transportadores</div>
                                                <h2>${trndhSedesAut}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg4">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i>_ Gestores</div>
                                                <h2>${gestordhSedesAut}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg3">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fas fa-building"></i> Establecimientos</div>
                                                <h2>${SedesAut}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <div class="row">
<!--                                         <div id="chartjs-radar"> -->
<!--   										<canvas id="canvas"></canvas> -->
<!-- 										</div> -->
                                	 <canvas id="marksChart" width="60%" height="40%"></canvas>
                                </div>
                        </div>
                        <!-- seo fact area end -->


                   
                    <!-- page title area end -->
                    
<!--                     <div class="row align-items-start"> -->
<!--                    <div class=" col-9 ml-5"> -->
              
<!--                         <canvas id="grafico1" width="80" height="60"></canvas> -->
     
<!--                    </div> -->
                           <div class="col mt-4">
                           <div class="row">
                         
                            <div class="card mt-1">
                                <div class="seo-fact sbg1">
                                    <div class="p-3 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon"><i class="fas fa-archive"></i>No Enviadas</div>
                                        <h2>${noEnviadasAut}</h2>
                                    </div>
                                </div>
                            </div>
                            </div>
                            
                            <div class="row mt-4">
                                    <div class="card">
                                        <div class="seo-fact sbg1">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fas fa-file-import"></i> Enviadas</div>
                                                <h2>${enviadasAut}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="card">
                                        <div class="seo-fact sbg2">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fas fa-truck-moving"></i> Aprobadas</div>
                                                <h2>${aprovadasAut}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="card mt-1">
                                        <div class="seo-fact sbg3">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fas fa-truck-moving"></i>Rechazadas Transportador</div>
                                                <h2>${rechasadasTAut}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                    </div>
                                    
                                    <div class="row mt-4">
                                            <div class="card">
                                        <div class="seo-fact sbg2">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i>Finalizadas</div>
                                                <h2>${finalizadasAut}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
										</div>
										<div class="row mt-4">
                                    <div class="card mt-1">
                                        <div class="seo-fact sbg3">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i> Rechazadas Gestor</div>
                                                <h2>${rechasadasGAut}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
										</div>
										
										
										</div>
                        </div>
 						</div>
 						 </div>
            
                    <div class="row">
                    
         
                        
<!--                 <h:panelGroup styleClass="p-grid" layout="block"> -->
<!-- 			<h:panelGroup styleClass="col-md-6 col-sm-6 col-xs-12" layout="block"> -->
<!-- 				<p:radarChart id="radarChart" " style="width:100%" /> -->
<!-- 			</h:panelGroup> -->
<!-- 			<h:panelGroup styleClass="p-col-12 p-sm-6 p-md-3" layout="block"> -->
<!-- 				<h:panelGroup styleClass="info-box" layout="block"> -->
<!-- 					<h:panelGroup styleClass="info-box-icon bg-green"> -->
<!-- 						<h:outputText value="" escape="false" /> -->
<!-- 					</h:panelGroup>	 -->
<!-- 					<h:panelGroup styleClass="info-box-content" layout="block"> -->
<!-- 						<h:outputText value="20" styleClass="info-box-text" />	 -->
<!-- 						<h:outputText value="30" styleClass="info-box-number" /> -->
<!-- 					</h:panelGroup> -->
<!-- 				</h:panelGroup>	 -->
<!-- 			</h:panelGroup> -->
<!-- 			</h:panelGroup> -->
  
                    </div>
                    <!-- main content area end -->
                    <!-- footer area start-->
                    <div class="row">
                    <demo:footer></demo:footer>
                    </div>
                    <!-- footer area end-->
                </div>
                <!-- page container area end -->

                <!-- jquery latest version -->


                <!-- start chart js -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
     

                </html>
