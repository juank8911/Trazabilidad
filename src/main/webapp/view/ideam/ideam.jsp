<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header />

        <title>sdstrp - Panel de Control IDEAM</title>
    </head>

    <body>
               
        
        
        <%@include file ="sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            
            <div class="col">
            

                <!-- page title area start -->
                <div class="row">
                
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Panel de Control</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>Empresa</span></li>
                                    
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <div class="row">
                    <div class="row">
                         <!-- seo fact area start -->
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-3 mt-4 mb-3">
                                    <div class="card">
                                        <div class="seo-fact sbg1">
                                            <div class="p-4 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-archive"></i> Generadores</div>
                                                <h2>${gendhSedesIdm}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3 mt-4 mb-3">
                                    <div class="card">
                                        <div class="seo-fact sbg2">
                                            <div class="p-4 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-truck"></i> Transportadores</div>
                                                <h2>${trndhSedesIdm}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3 mt-4 mb-4 mb-lg-4">
                                    <div class="card">
                                        <div class="seo-fact sbg4">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i>_ Gestores</div>
                                                <h2>${gestordhSedesIdm}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-3 mt-4">
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
                        </div>
                        <!-- seo fact area end -->


                    </div>
                    <!-- page title area end -->
                    
                    <div class="row align-items-start">
                   <div class=" col-9">
              
                        <canvas id="grafico1" width="80" height="60"></canvas>
     
                   </div>
                    
                    
                        <div class="col-3">

                           
                            <div class="card mt-1">
                                <div class="seo-fact sbg1">
                                    <div class="p-3 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon"><i class="ti-archive"></i>No Enviadas</div>
                                        <h2>${ noEnviadasIdm}</h2>
                                    </div>
                                </div>
                            </div>
                            
                                    <div class="card mt-1">
                                        <div class="seo-fact sbg1">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-layout-media-right"></i> Enviadas</div>
                                                <h2>${enviadasIdm}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                
                                    <div class="card mt-1">
                                        <div class="seo-fact sbg2">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-truck"></i> Aprobadas</div>
                                                <h2>${aprovadasIdm}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                
                                    <div class="card mt-1">
                                        <div class="seo-fact sbg3">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-truck"></i>Rechazadas Transportador</div>
                                                <h2>${rechasadasTIdm}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                            <div class="card mt-1">
                                        <div class="seo-fact sbg2">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i>Finalizadas</div>
                                                <h2>${finalizadasIdm}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>

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
                    <div class="row">
                        
                        
			<h:panelGroup styleClass="col-md-6 col-sm-6 col-xs-12" layout="block">
				<p:radarChart id="radarChart" " style="width:100%" />
			</h:panelGroup>
			<h:panelGroup styleClass="p-col-12 p-sm-6 p-md-3" layout="block">
				<h:panelGroup styleClass="info-box" layout="block">
					<h:panelGroup styleClass="info-box-icon bg-green">
						<h:outputText value="" escape="false" />
					</h:panelGroup>	
					<h:panelGroup styleClass="info-box-content" layout="block">
						<h:outputText value="" styleClass="info-box-text" />	
						<h:outputText value="" styleClass="info-box-number" />
					</h:panelGroup>
				</h:panelGroup>	
			</h:panelGroup>
  
                    </div>

                    <!-- main content area end -->
                    <!-- footer area start-->
                    
                </div>
                    <!-- footer area end-->
                    <div class="row">
                    <demo:footer/>
                    </div>
                </div>
                            
                <!-- page container area end -->
  
                </body>

                </html>
