<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%-- 
    Document   : sidebarNavbar
    Created on : 13/10/2020, 09:14:52 AM
    Author     : yorman
--%>
<!-- SIDE BAR DE GENERADOR-->
<!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
<!-- preloader area start -->
<div id="preloader">
	<div class="loader"></div>
</div>
<!-- preloader area end -->
<script src="assets/js/cambioPerfil.js"></script>
<div class="logo1">
	<img src="assets/images/logo_sdstrp.png" alt="logo1"></a> <img
		src="assets/images/logo_siac.jpg" alt="logo1"></a> <img
		src="assets/images/logo_mads.png" alt="logo1"></a> <img
		src="assets/images/logo_ideam.png" alt="logo1"></a>
</div>
 <!-- Bootstrap NavBar -->
 <div class="header-area">
<%--  <jsp:forward page="view/login.jsp" /> --%>

<nav class="navbar navbar-expand-md navbar-dark bg-transparent">
<div class="col-md-1 col-sm-8 clearfix">
  <a class="navbar-brand" data-toggle="sidebar-colapse" href="#">
    <i class="fas fa-bars"></i>
    <span class="menu-collapsed">Menu</span>
  </a>
  
 </div>
 <div class="col-md-5 col-sm-8 clearfix">
  <demo:selectPerf/>
  </div>
  
  <div class="notification-area col-md-6 col-sm-4 clearfix" id="navbarNavDropdown">
    <ul class="navbar-nav pull-right">
    
      <li class="dropdown"><i class="far fa-bell fa-1x"> <span class="badge badge-pill badge-danger ml-2">5</span>
		</i>
	 </li>
		<li class="dropdown"><i class="far fa-flag fa-1x"><span class="badge badge-pill badge-danger ml-2" >3</span></i>
		</li>
		<li >
		<div class="spinner-border text-light" id="carga" role="status">
   			<span class="visually-hidden">Loading...</span>
		</div>
		</li>
      <li class="nav-item">
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
									<a type="button" class="btn btn-outline-success mb-3" href="controlGenerador?action=perfilActuaGenera">Perfil</a>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a type="button" class="btn btn-outline-success mb-3" href="control?action=cerrar">Cerrar Sesion</a>
								</div>
							</div>
						</div>
					</div>
      </li>
      
      <!-- This menu is hidden in bigger devices with d-sm-none. 
           The sidebar isn't proper for smaller screens imo, so this dropdown menu can keep all the useful sidebar itens exclusively for smaller screens  -->
      <li class="nav-item dropdown d-sm-block d-md-none">
        <a class="nav-link dropdown-toggle" href="#" id="smallerscreenmenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Menu
        </a>
        <div class="dropdown-menu" aria-labelledby="smallerscreenmenu">
            <a class="dropdown-item" href="#">Dashboard</a>
            <a class="dropdown-item" href="#">Profile</a>
            <a class="dropdown-item" href="#">Tasks</a>
            <a class="dropdown-item" href="#">Etc ...</a>
        </div>
      </li><!-- Smaller devices menu END -->
      
    </ul>
  </div>
</nav><!-- NavBar END -->
</div>

<!-- Bootstrap row -->
<div class="row" id="body-row">
    <!-- Sidebar -->
    <div id="sidebar-container" class="sidebar-expanded d-none d-md-block"><!-- d-* hiddens the Sidebar in smaller devices. Its itens can be kept on the Navbar 'Menu' -->
        <!-- Bootstrap List Group -->
        <ul class="list-group">
            <!-- Separator with title -->
            <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
                <h6>Menu ${usuario}</h6>
            </li>
            <!-- /END Separator -->
            <!-- Menu with submenu -->
                        <a href="#submenu1" data-toggle="collapse" aria-expanded="true" class="bg-success list-group-item list-group-item-action flex-column align-items-start">
                <div class="d-flex w-100 justify-content-start align-items-center">
                    <span class="fas fa-info fa-fw mr-3"></span>
                    
                    <span class="menu-collapsed">Informacion</span>
                    <span class="submenu-icon ml-auto"></span>
                </div>
            </a>
            <!-- Submenu content -->
            <div id="submenu1" class="sidebar-submenu collapse show" style="">
                <a method="post" href="controlIDEAM?action=ideamClave" class="list-group-item list-group-item-action bg-white text-dark">
                <span style="color: black;" class="fas fa-key fa-fw mr-3"></span>
                    <span class="menu-collapsed">contraseña</span>
                </a>
            </div>   
            <a href="#submenu2" data-toggle="collapse" aria-expanded="false" class="bg-success list-group-item list-group-item-action flex-column align-items-start">
                <div class="d-flex w-100 justify-content-start align-items-center">
                    <span class="fas fa-industry fa-fw mr-3"></span>                     
                    <span class="menu-collapsed">Declaraciones</span>
                    <span class="submenu-icon ml-auto"></span>
                </div>
            </a>
            <!-- Submenu content -->
            <div id='submenu2' class="collapse sidebar-submenu">
                <a href="controlIDEAM?action=ideamEmpresaLista" class="list-group-item list-group-item-action bg-white text-dark">                
                <span style="color: black;" class="fas fa-trash-restore-alt fa-fw mr-3"></span> 
                    <span class="menu-collapsed">empresa</span>
                </a>
                <a href="controlIDEAM?action=ideamSedeLista" class="list-group-item list-group-item-action bg-white text-dark">
                <span style="color: black;" class="fab fa-elementor fa-fw mr-3"></span> 
  
                    <span class="menu-collapsed">estableciomientos</span>
                               
            </div>         
<!--             <a href="#" class="bg-success list-group-item list-group-item-action"> -->
<!--                 <div class="d-flex w-100 justify-content-start align-items-center"> -->
<!--                     <span class="fa fa-tasks fa-fw mr-3"></span> -->
<!--                     <span class="menu-collapsed">Tasks</span>     -->
<!--                 </div> -->
<!--             </a> -->
            <!-- Separator with title -->
            <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
                <h6>Reportes</h6>
            </li>  
            
                        <a href="#submenu3" data-toggle="collapse" aria-expanded="false" class="bg-success list-group-item list-group-item-action flex-column align-items-start">
                <div class="d-flex w-100 justify-content-start align-items-center">
                    <span class="fas fa-industry fa-fw mr-3"></span>                     
                    <span class="menu-collapsed">Consultas</span>
                    <span class="submenu-icon ml-auto"></span>
                </div>
            </a>
            <!-- Submenu content -->
            <div id='submenu3' class="collapse sidebar-submenu">
                <a href="controlIDEAM?action=ideamDeclaLista" class="list-group-item list-group-item-action bg-white text-dark">                
                <span style="color: black;" class="fas fa-trash-restore-alt fa-fw mr-3"></span> 
                    <span class="menu-collapsed">Historico</span>
                </a>
                <a href="controlIDEAM?action=ideamIndiLista" class="list-group-item list-group-item-action bg-white text-dark">
                <span style="color: black;" class="fab fa-elementor fa-fw mr-3"></span> 
  
                    <span class="menu-collapsed">Indicadores</span>
                </a>

				<a href="controlIDEAM?action=ideamSalidaLista" class="list-group-item list-group-item-action bg-white text-dark">
                <span style="color: black;" class="fas fa-calendar-alt mr-3"></span>                 
                    <span class="menu-collapsed">Salida</span>
                </a>                
                
            </div>   
            
            <!-- /END Separator -->
<!--             <a href="#" class="bg-success list-group-item list-group-item-action"> -->
<!--                 <div class="d-flex w-100 justify-content-start align-items-center"> -->
<!--                     <span class="fa fa-calendar fa-fw mr-3"></span> -->
<!--                     <span class="menu-collapsed">Calendar</span> -->
<!--                 </div> -->
<!--             </a> -->
<!--             <a href="#" class="bg-success list-group-item list-group-item-action"> -->
<!--                 <div class="d-flex w-100 justify-content-start align-items-center"> -->
<!--                     <span class="fa fa-envelope fa-fw mr-3"></span> -->
                    
<!--                     <span class="menu-collapsed">Messages <span class="badge badge-pill badge-primary ml-2">5</span></span> -->
<!--                 </div> -->
<!--             </a> -->
            <!-- Separator without title -->
            <li class="list-group-item sidebar-separator menu-collapsed"></li>            
            <!-- /END Separator -->
<!--             <a href="#" class="bg-success list-group-item list-group-item-action"> -->
<!--                 <div class="d-flex w-100 justify-content-start align-items-center"> -->
<!--                     <span class="fa fa-question fa-fb mr-3"></span> -->
<!--                     <span class="menu-collapsed">Help</span> -->
<!--                 </div> -->
<!--             </a> -->
            <a href="control?action=cerrar" class="bg-success list-group-item list-group-item-action d-flex align-items-center">
                <div class="d-flex w-100 justify-content-start align-items-center">
                    <span id="collapse-icon" class="fas fa-lock mr-3"></span>
                    <span id="collapse-text" class="menu-collapsed">Cerrar sesion</span>
                </div>
            </a>
            <!-- Logo -->
            <li class="list-group-item logo-separator d-flex justify-content-center">
                <img src='assets/images/logo_sdstrp.png' width="30" height="30" />    
            </li>   
        </ul><!-- List Group END-->
    </div><!-- sidebar-container END -->
