
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
<title>sdstrp - Panel de Control</title>
</head>
    <body>
        <%@include file ="sidebarNavbar2.jsp" %>
        
            <!-- main content area start -->
            <div class="col-9">

                <!-- page title area start -->
                
                			<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Panel de Control</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">Transportador</span></li>
                            </ul>
            			</div>
            			
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
                                                  <h2>                                             	
                        							${dashNoEnviadasTrn}
                        						</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="card">
                                        <div class="seo-fact sbg1">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fas fa-truck-moving"></i> Aprobadas</div>
                                                  <h2> ${dashAprovadasTrn} </h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-4">
                                    <div class="card">
                                        <div class="seo-fact sbg2">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i>Finalizadas</div>
                                                  <h2> ${dashFinalizadasTrn}
                        						</h2>
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
                                                		<div class="seofct-icon"><i class="fas fa-truck-moving"></i>Rechazadas Transportador</div>
                                                  <h2> ${dashRechasadasTrn}
                        						</h2>
                                            		</div>
                                        		</div>
                                    		</div>
                                		</div>
                                                        <div class="row mt-4">
                                                            <div class="card">
                                                                <div class="seo-fact sbg1">
                                                                    <div class="p-3 d-flex justify-content-between align-items-center">
                                                                        <div class="seofct-icon"><i class="fas fa-file-import"></i> Enviadas</div>
                                                  							<h2> ${dashEnviadasTrn}</h2>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row mt-4">
                                                            <div class="card">
                                                                <div class="seo-fact sbg3">
                                                                    <div class="p-3 d-flex justify-content-between align-items-center">
																		<div class="seofct-icon"><i class="fa fa-industry"></i> Rechazadas Gestor</div>
                                                  							<h2>  ${dashRechaGesTrn}</h2>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>


                
                                                </div>

                        </div>
                        <!-- seo fact area end -->


                    </div>
            			
                        </div>
                        <!-- seo fact area end -->
                    </div>
                    <!-- page title area end -->
                    <div class="row">

                    </div>
                    <!-- main content area end -->
                    <!-- footer area start-->
                    <demo:footer/>               
                </body>

                </html>
