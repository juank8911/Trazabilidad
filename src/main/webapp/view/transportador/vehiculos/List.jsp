<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header>
</demo:header>
    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- preloader area start -->
        <div id="preloader">
            <div class="loader"></div>
        </div>
        <!-- preloader area end -->
        <div class="logo">
            <img src="assets/images/logo_sdstrp.png" alt="logo"></a>
            <img src="assets/images/logo_siac.jpg" alt="logo" ></a>
            <img src="assets/images/logo_mads.png" alt="logo"></a> 
            <img src="assets/images/logo_ideam.png" alt="logo"></a> 

        </div>
        <!-- header area start -->
        <div class="header-area">
            <div class="row align-items-center">
                <!-- nav and search button -->
                <div class="col-md-6 col-sm-8 clearfix">
                    <div class="nav-btn pull-left">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>

                </div>
                <!-- profile info & task notification -->
                <div class="col-md-6 col-sm-4 clearfix">
                    <ul class="notification-area pull-right">


                        <li class="dropdown">
                            <i class="ti-bell ">
                                <span>2</span>
                            </i>

                        </li>
                        <li class="dropdown">
                            <i class="ti-flag-alt"><span>3</span></i>

                        </li>
                        <li>
                            <div class="dropdown col-lg-6 col-md-4 col-sm-6">
                                <button class="btn btn-success dropdown-toggle " type="button" data-toggle="dropdown">
                                    Nombre usuario
                                </button>
                                <div class="dropdown-menu" style="background: transparent !important;">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" style="text-align: center !important">Nombre Usuario</h5>
                                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                                        </div>
                                        <div class="modal-body">
                                            <p>Corporación para el Desarrollo Sostenible del Archipiélago de San Andrés, Providencia y Santa Catali</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-outline-success mb-3" data-dismiss="modal"> Perfil</button>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <button type="button" class="btn btn-outline-success mb-3">Cerrar Sesion</button>
                                        </div>
                                    </div>
                                </div>
                            </div></li>
                        <li class="dropdown">
                            <i class="ti-help" data-toggle="dropdown"></i>

                        </li>

                    </ul>
                </div>
            </div>
        </div>
        <!-- header area end -->
        <!-- page container area start -->
        <div class="page-container">
            <!-- sidebar menu area start -->
            <div class="sidebar-menu">

                <div class="main-menu">
                    <div class="menu-inner">
                        <nav>
                            <ul class="metismenu" id="menu" >
                                <li><a href="controlTrans?action=transp"><i class="ti-dashboard"></i> <span>Inicio</span></a></li>
                                <li class="active">
                                    <a aria-expanded="true"><i class="ti-angle-down"></i><span>Información</span></a>
                                    <ul class="collapse">
                                        <li><a method="post" href="controlTrans?action=empresaLeerTransp" aria-expanded="true"><i class="fa fa-university"></i><span>Empresa</span></a></li>
                                        <li><a href="controlTrans?action=sedeLeeTransp" aria-expanded="true"><i class="fa fa-building"></i><span>Establecimiento</span></a></li>
                                        <li><a href="controlTrans?action=perfilLeeTransp" aria-expanded="true"><i class="fa fa-male"></i><span>Perfil</span></a></li>
                                        <li><a method="post" href="controlTrans?action=claveTransp" aria-expanded="true"><i class="ti-key"></i><span>Contraseña</span></a></li>
                                    </ul>
                                </li>
                                <li class="active">
                                    <a aria-expanded="true"><i class="ti-angle-down"></i><span>Declaraciones</span></a>
                                    <ul class="collapse">
                                        <li><a method="post" href="controlTrans?action=vehiculoTransp" aria-expanded="true"><i class="fa fa-university"></i><span>Vehiculos</span></a></li>
                                        <li><a href="controlTrans?action=rutaCreaTransp" aria-expanded="true"><i class="fa fa-building"></i><span>Ruta</span></a></li>
                                        <li><a href="controlTrans?action=apruebaTransp" aria-expanded="true"><i class="ti-user"></i><span>Aprobacion</span></a></li>
                                    </ul>
                                </li>
                                <li class="active">
                                    <a  aria-expanded="true"><i class="ti-angle-down"></i><span>Consultas</span></a>
                                    <ul class="collapse">
                                        <li><a href="controlTrans?action=declaraListaTransp" aria-expanded="true"><i class="ti-files"></i><span>Historico</span></a></li>
                                        <li><a href="controlTrans?action=indiListaTransp" aria-expanded="true"><i class="fa fa-pie-chart"></i><span>Indicadores</span></a></li>
                                        <li><a href="controlTrans?action=salidaListTransp" aria-expanded="true"><i class="ti-menu-alt"></i><span>Salidas</span></a></li>
                                    </ul>
                                </li>
                                <li><a href="controlTrans?action=transp"><i class="ti-shift-right"></i> <span>Cerrar Sesion</span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- sidebar menu area end -->
            <!-- main content area start -->
            <div class="main-content">

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Listado de Vehiculo</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>Registrados en el sistema de informacion</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                    <button type="button" class="btn btn-success mb-3 ti-plus pull-right"><a href="controlTrans?action=vehiCreaTransp" class="text-white">Crear Vehiculo </a> </button>
                </div>
                <!-- page title area end -->
                <!--div class="main-content-inner"-->
                    <!-- table success start -->
 
                    <!--div class="card"-->
                       
                        <!--div class="card-body"-->
                           
                            <br />
                            <br />
                            <div class="text-uppercase bg-success mb-3">
                           <button type="button" class="fa fa-newspaper-o btn btn-success btn-xs"> Columnas</button>
                           <button type="button" class="fa fa-floppy-o btn btn-success btn-xs">Exportar</button>
                          
                           <div class="pull-right">
                                <form action="#">
                                <input type="text" name="search" placeholder="Buscar..." required="">
                                <i class="ti-search col-md-1"></i>
                            </form>
                           </div>
                           </div>
                            <div class="single-table">
                                <div class="table-responsive">
                                    
                                    
                                    <table class="table">
                                        <thead class="bg-light">
                                            <tr>
                                                <th scope="col">Razon Social <br/>
                                                <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
                                                    <option value="10">10</option>
                                                    <option value="25">25</option>
                                                    <option value="50">50</option>
                                                    <option value="100">100</option>
                                                </select> 
                                                </th>
                                                <th scope="col">Nit <br />
                                                <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
                                                    <option value="10">10</option>
                                                    <option value="25">25</option>
                                                    <option value="50">50</option>
                                                    <option value="100">100</option>
                                                </select> </th>
                                                <th scope="col">Departamento<br />
                                                <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
                                                    <option value="10">10</option>
                                                    <option value="25">25</option>
                                                    <option value="50">50</option>
                                                    <option value="100">100</option>
                                                </select> </th>
                                                <th scope="col">Municipio<br />
                                                <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
                                                    <option value="10">10</option>
                                                    <option value="25">25</option>
                                                    <option value="50">50</option>
                                                    <option value="100">100</option>
                                                </select> </th>
                                                <th scope="col">Generadores<br />
                                                <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
                                                    <option value="10">10</option>
                                                    <option value="25">25</option>
                                                    <option value="50">50</option>
                                                    <option value="100">100</option>
                                                </select> </th>
                                                <th scope="col">Transportadores<br />
                                                <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
                                                    <option value="10">10</option>
                                                    <option value="25">25</option>
                                                    <option value="50">50</option>
                                                    <option value="100">100</option>
                                                </select> </th>
                                                <th scope="col">Gestores<br />
                                                <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
                                                    <option value="10">10</option>
                                                    <option value="25">25</option>
                                                    <option value="50">50</option>
                                                    <option value="100">100</option>
                                                </select> </th>
                                                <th scope="col">Establecimiento<br />
                                                <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
                                                    <option value="10">10</option>
                                                    <option value="25">25</option>
                                                    <option value="50">50</option>
                                                    <option value="100">100</option>
                                                </select> </th>
                                                <th scope="col">Opciones</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">usuario1</th>
                                                <td>Mark</td>
                                                <td>Transportador</td>
                                                <td>ejemplo 1</td>
                                                <td>ejemplo 2</td>
                                                <td>ejemplo 3</td>
                                                <td>ejemplo 4</td>
                                                <td>ejemplo 5</td>
                                                <td><button type="button" class="btn btn-success btn-xs mb-3">Restaurar contraseña</button>
                                                    <br/>
                                                <button type="button" class="btn btn-success btn-xs mb-3">Desactivar</button>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <th scope="row">usuario2</th>
                                                <td>Activo</td>
                                                <td>Administrador</td>
                                                <td>ejemplo 1</td>
                                                <td>ejemplo 2</td>
                                                <td>ejemplo 3</td>
                                                <td>ejemplo 4</td>
                                                <td>ejemplo 5</td>
                                                <td><button type="button" class="btn btn-success btn-xs mb-3">Restaurar contraseña</button>
                                                    <br/>
                                                <button type="button" class="btn btn-success btn-xs mb-3">Desactivar</button>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <th scope="row">Usuario3</th>
                                                <td>Activo</td>
                                                <td>Generador</td>
                                                <td>ejemplo 1</td>
                                                <td>ejemplo 2</td>
                                                <td>ejemplo 3</td>
                                                <td>ejemplo 4</td>
                                                <td>ejemplo 5</td>
                                                 <td><button type="button" class="btn btn-success btn-xs mb-3">Restaurar contraseña</button>
                                                    <br/>
                                                <button type="button" class="btn btn-success btn-xs mb-3">Desactivar</button>
                                                </td>
                                                
                                                
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>Desactivado</td>
                                                <td>Gestor</td>
                                                <td>ejemplo 1</td>
                                                <td>ejemplo 2</td>
                                                <td>ejemplo 3</td>
                                                <td>ejemplo 4</td>
                                                <td>ejemplo 5</td>
                                                 <td><button type="button" class="btn btn-success btn-xs mb-3">Restaurar contraseña</button>
                                                    <br/>
                                                <button type="button" class="btn btn-success btn-xs mb-3">Desactivar</button>
                                                </td>
                                                
                                                
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        <!--/div-->
                    <!--/div-->

                    <!-- table success end -->
                <!--/div-->
                <!-- main content area end -->
                <!-- footer area start-->
               <demo:footer/>
    </body>

</html>
