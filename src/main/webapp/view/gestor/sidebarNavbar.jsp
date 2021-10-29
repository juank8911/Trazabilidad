<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%-- 
    Document   : sidebarNavbar
    Created on : 6/10/2020, 11:49:19 PM
    Author     : yorman
--%>
<!-- SIDE BAR DE GESTOR-->
<div id="preloader">
	<div class="loader"></div>
</div>
<!-- preloader area end -->
<div class="logo1">
	<img src="assets/images/logo_sdstrp.png" alt="logo1"></a> <img
		src="assets/images/logo_siac.jpg" alt="logo1"></a> <img
		src="assets/images/logo_mads.png" alt="logo1"></a> <img
		src="assets/images/logo_ideam.png" alt="logo1"></a>

</div>
<!-- header area start -->
<script src="assets/js/cambioPerfil.js"></script>
<div class="header-area">
	<div class="row align-items-center">
		<!-- nav and search button -->
		<div class="col-md-1 col-sm-8 clearfix">
			<div class="nav-btn pull-left col-md-auto" id="navBtn">
				<span></span> <span></span> <span></span>
			</div>
		</div>
				<demo:selectPerf/>
				
		<!-- profile info & task notification -->
		<div class="col-md-6 col-sm-4 clearfix">
			<ul class="notification-area pull-right">


				<li class="dropdown"><i class="ti-bell "> <span>2</span>
				</i></li>
				<li class="dropdown"><i class="ti-flag-alt"><span>3</span></i>

				</li>
				<li>
					<div class="dropdown col-lg-6 col-md-4 col-sm-6">
						<button class="btn btn-success dropdown-toggle " type="button"
							data-toggle="dropdown">${usuario}</button>
						<div class="dropdown-menu"
							style="background: transparent !important;">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" style="text-align: center !important">${usuario}</h5>
									<button type="button" class="close" data-dismiss="modal">
										<span>&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<p>${nom_epresa}</p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline-success mb-3"
										data-dismiss="modal">Perfil</button>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button type="button" class="btn btn-outline-success mb-3">Cerrar
										Sesion</button>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li class="dropdown"><i class="ti-help" data-toggle="dropdown"></i>

				</li>

			</ul>
		</div>
	</div>
</div>
<!-- header area end -->
<!-- page container area start -->
<div class="page-container"  id="pageConta">
	<!-- sidebar menu area start -->
	<div class="sidebar-menu">

		<div class="main-menu">
			<div class="menu-inner">
				<nav>
					<ul class="metismenu" id="menu">
						<li><a href="ControlGestor?action=gestor"><i
								class="ti-dashboard"></i> <span>Inicio</span></a></li>
						<li class="active"><a aria-expanded="true"><i
								class="ti-angle-down"></i><span>Información</span></a>
							<ul class="collapse">

								<li><a href="ControlGestor?action=perfilLeerGestor"
									aria-expanded="true"><i class="fa fa-male"></i><span>Perfil</span></a></li>

							</ul></li>
						<li class="active"><a aria-expanded="true"><i
								class="ti-angle-down"></i><span>Declaraciones</span></a>
							<ul class="collapse">
								<li><a method="post"
									href="ControlGestor?action=servicioListaGestor"
									aria-expanded="true"><i class="fa fa-university"></i><span>Servicios
											Prestados</span></a></li>
								<li><a href="ControlGestor?action=autorizaListaGestor"
									aria-expanded="true"><i class="fa fa-building"></i><span>Autorizaciones
											Ambientales</span></a></li>
								<li><a href="ControlGestor?action=finalizaListaGestor"
									aria-expanded="true"><i class="ti-user"></i><span>Finalizacion</span></a></li>
							</ul></li>
	                              <li class="active">
                                    <a  aria-expanded="true"><i class="ti-angle-down"></i><span>Consultas</span></a>
                                    <ul class="collapse">
                                        <li><a href="ControlGestor?action=declaraListaGestor" aria-expanded="true"><i class="ti-files"></i><span>Historico</span></a></li>
                                        <li><a href="ControlGestor?action=indiListaGestor" aria-expanded="true"><i class="fa fa-pie-chart"></i><span>Indicadores</span></a></li>
                                        <li><a href="ControlGestor?action=salidaListaGestor" aria-expanded="true"><i class="ti-menu-alt"></i><span>Salidas</span></a></li>
                                    </ul>
                                </li>
						<li><a href="control?action=cerrar"><i
								class="ti-shift-right"></i> <span>Cerrar Sesion</span></a></li>
					</ul>
				</nav>
			</div>
		</div>

	</div>
	<!-- sidebar menu area end -->