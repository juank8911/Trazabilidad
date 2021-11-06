<%--
    JBoss, Home of Professional Open Source
    Copyright 2015, Red Hat, Inc. and/or its affiliates, and individual
    contributors by the @authors tag. See the copyright.txt in the
    distribution for a full listing of individual contributors.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="assets/css/bootstrap.min.css" >
<link rel="stylesheet" type="text/css" href="assets/css/sidebarjk.css" />
<link rel="stylesheet" type="text/css" href="assets/css/styles.css" />
<link rel="stylesheet" type="text/css" href="assets/css/all.min.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js" ></script>
<script src="assets/js/bootstrap.min.js" ></script>
<script src="assets/js/sidebarjk.js" ></script>
<title>kitchensink-jsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Here we include the css file -->

</head>
<body>
<script src="assets/js/cambioPerfil.js"></script>
<div class="logo1">
	<img src="assets/images/logo_sdstrp.png" alt="logo1"></a> <img
		src="assets/images/logo_siac.jpg" alt="logo1"></a> <img
		src="assets/images/logo_mads.png" alt="logo1"></a> <img
		src="assets/images/logo_ideam.png" alt="logo1"></a>
</div>
 <!-- Bootstrap NavBar -->
 <div class="header-area">
 <jsp:forward page="view/login.jsp" />

<nav class="navbar navbar-expand-md navbar-dark bg-primary">
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
    
      <li class="dropdown"><i class="far fa-bell fa-1x"> <span class="badge badge-pill badge-primary ml-2">5</span>
		</i>
	 </li>
		<li class="dropdown"><i class="far fa-flag fa-1x"><span class="badge badge-pill badge-primary ml-2" >3</span></i>
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
                <small>MAIN MENU</small>
            </li>
            <!-- /END Separator -->
            <!-- Menu with submenu -->
                        <a href="#submenu1" data-toggle="collapse" aria-expanded="true" class="bg-success list-group-item list-group-item-action flex-column align-items-start">
                <div class="d-flex w-100 justify-content-start align-items-center">
                    <span class="fa fa-user fa-fw mr-3"></span>
                    <span class="menu-collapsed">Profile</span>
                    <span class="submenu-icon ml-auto"></span>
                </div>
            </a>
            <!-- Submenu content -->
            <div id="submenu1" class="sidebar-submenu collapse show" style="">
                <a href="controlGenerador?action=perfilLeeGenera" class="list-group-item list-group-item-action bg-white text-black-50">
                    <span class="menu-collapsed">perfil</span>
                </a>
                <a method="post" href="controlGenerador?action=passGenera" class="list-group-item list-group-item-action bg-white text-black-50">
                    <span class="menu-collapsed">contraseña</span>
                </a>
            </div>   
            <a href="#submenu2" data-toggle="collapse" aria-expanded="false" class="bg-success list-group-item list-group-item-action flex-column align-items-start">
                <div class="d-flex w-100 justify-content-start align-items-center">
                    <span class="fas fa-tachometer-alt fa-fw mr-3"></span> 
                    
                    
                    <span class="menu-collapsed">Dashboard</span>
                    <span class="submenu-icon ml-auto"></span>
                </div>
            </a>
            <!-- Submenu content -->
            <div id='submenu2' class="collapse sidebar-submenu">
                <a href="#" class="list-group-item list-group-item-action bg-white text-black-50">
                    <span class="menu-collapsed">Charts</span>
                </a>
                <a href="#" class="list-group-item list-group-item-action bg-white text-black-50">
                    <span class="menu-collapsed">Reports</span>
                </a>
                <a href="#" class="list-group-item list-group-item-action bg-white text-black-50">
                    <span class="menu-collapsed">Tables</span>
                </a>
            </div>         
            <a href="#" class="bg-success list-group-item list-group-item-action">
                <div class="d-flex w-100 justify-content-start align-items-center">
                    <span class="fa fa-tasks fa-fw mr-3"></span>
                    <span class="menu-collapsed">Tasks</span>    
                </div>
            </a>
            <!-- Separator with title -->
            <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
                <small>OPTIONS</small>
            </li>
            <!-- /END Separator -->
            <a href="#" class="bg-success list-group-item list-group-item-action">
                <div class="d-flex w-100 justify-content-start align-items-center">
                    <span class="fa fa-calendar fa-fw mr-3"></span>
                    <span class="menu-collapsed">Calendar</span>
                </div>
            </a>
            <a href="#" class="bg-success list-group-item list-group-item-action">
                <div class="d-flex w-100 justify-content-start align-items-center">
                    <span class="fa fa-envelope fa-fw mr-3"></span>
                    
                    <span class="menu-collapsed">Messages <span class="badge badge-pill badge-primary ml-2">5</span></span>
                </div>
            </a>
            <!-- Separator without title -->
            <li class="list-group-item sidebar-separator menu-collapsed"></li>            
            <!-- /END Separator -->
            <a href="#" class="bg-success list-group-item list-group-item-action">
                <div class="d-flex w-100 justify-content-start align-items-center">
                    <span class="fa fa-question fa-fw mr-3"></span>
                    <span class="menu-collapsed">Help</span>
                </div>
            </a>
            <a href="#" data-toggle="sidebar-colapse" class="bg-success list-group-item list-group-item-action d-flex align-items-center">
                <div class="d-flex w-100 justify-content-start align-items-center">
                    <span id="collapse-icon" class="fa fa-angle-double-left mr-3"></span>
                    <span id="collapse-text" class="menu-collapsed">Collapse</span>
                </div>
            </a>
            <!-- Logo -->
            <li class="list-group-item logo-separator d-flex justify-content-center">
                <img src='assets/images/logo_sdstrp.png' width="30" height="30" />    
            </li>   
        </ul><!-- List Group END-->
    </div><!-- sidebar-container END -->

    <!-- MAIN -->
    <div class="col">
        
        <h1>
            Trazabilidad
            <small class="text-muted">Version 2.1</small>
        </h1>
        
        
        <div class="card">

        </div>
       


    </div><!-- Main Col END -->
    
</div><!-- body-row END -->
</body>
</html>
