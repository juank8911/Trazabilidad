<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header />

        <title>sdstrp - Panel de Control IDEAM</title>
    </head>

    <body>
      <%@include file ="sidebarNavbar2.jsp" %>
            <!-- main content area start -->
                <div class="col-9 ml-5">


<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Panel de Control</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">Ideam</span></li>
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
                                                <div class="seofct-icon"><i class="ti-archive"></i> Generadores</div>
                                                <h2>${gendhSedesIdm}</h2>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg2">
                                            <div class="p-4 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-truck"></i> Transportadores</div>
                                                <h2>${trndhSedesIdm}</h2>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg4">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i>_ Gestores</div>
                                                <h2>${gestordhSedesIdm}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg3">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-building-o"></i> Establecimientos</div>
                                                <h2>${SedesIdm}</h2>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <div class="row">
                                        <div id="chartjs-radar">
  										<canvas id="canvas"></canvas>
										</div>
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
                                        <div class="seofct-icon"><i class="ti-archive"></i>No Enviadas</div>
                                        <h2>${ noEnviadasIdm}</h2>
                                    </div>
                                </div>
                            </div>
                            </div>
                            
                            <div class="row mt-4">
                                    <div class="card">
                                        <div class="seo-fact sbg1">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-layout-media-right"></i> Enviadas</div>
                                                <h2>${enviadasIdm}</h2>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="card">
                                        <div class="seo-fact sbg2">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i>Finalizadas</div>
                                                <h2>${finalizadasIdm}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="card mt-1">
                                        <div class="seo-fact sbg3">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i> Rechazadas Gestor</div>
                                                <h2>${rechasadasGIdm}</h2>
                                            </div>                                            
                                        </div>
                                    </div>
                                    </div>

										
										
										</div>
                        </div>
 						</div>
 						 </div>
               
        
        
      
            

                       <demo:footer/>         
                <!-- page container area end -->
  
                </body>

                </html>

                