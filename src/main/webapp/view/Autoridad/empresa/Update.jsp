<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header />
        <title>sdstrp - Actualizar Empresa </title>

    </head>

    <body>

        <!-- header area end -->
        <!-- page container area start -->
        <div class="page-container">
            <!-- sidebar menu area start -->

            <!-- sidebar menu area end -->
            <!-- main content area start -->
            <div class="main-content">

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Crear de empresas</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span> inscritas en el sistema de información</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <!-- main content area inicio -->
                <div class="main-content-inner">
                    <div class="row">
                        <div class="col-lg-6 col-ml-12">
                            <div class="row">


                                <!-- Server side start -->
                                <div class="col-12">
                                    <div class="card mt-4">
                                        <div class="card-body">

                                            <form method="post" action="control?action=empresaRegistro" class="needs-validation" novalidate="">
   <table class="table text-left">

                                                    <tr>
                                                        <td> <label for="validationCustom01"> Razon Social </label></td>
                                                        <td> <input type="text" name="" class="form-control" id="validationCustom02" placeholder="" value="" required=""> </td>
                                                        <td> <label for="validationCustom01">Nombre Comercial</label></td>
                                                        <td> <input type="text" name=""class="form-control" id="validationCustom02" placeholder="" value="" required=""></td>

                                                    </tr>
                                                    <tr>
                                                        <td> <label for="validationCustom01">NIT </label></td>
                                                        <td> <input type="text" name="cargoUsu" class="form-control" id="validationCustom02"  value="" required=""></td>
                                                        <td> <label for="example-text-input" class="col-form-label">CIUU </label></td>
                                                        <td> <select class="form-control" name="tipDocu">
                                                                <option>Select</option>
                                                                <option>Large select</option>
                                                                <option>Small select</option>
                                                            </select></td>

                                                    </tr>
                                                    <tr>
                                                        <td> <label for="validationCustom01">Departamento </label></td>
                                                        <td> <select class="form-control" name="tipDocu">
                                                                <option>Select</option>
                                                                <option>Large select</option>
                                                                <option>Small select</option>
                                                            </select></td>
                                                        <td> <label for="example-text-input" class="col-form-label">Municipio </label></td>
                                                        <td> <select class="form-control" name="tipDocu">
                                                                <option>Select</option>
                                                                <option>Large select</option>
                                                                <option>Small select</option>
                                                            </select></td>

                                                    </tr>
                                                    <tr>
                                                        <td> <label for="validationCustom01">Direccion </label></td>
                                                        <td> <input type="text" name="cargoUsu" class="form-control" id="validationCustom02"  value="" required=""></td>
                                                        <td> <label for="example-text-input" class="col-form-label">Telefono </label></td>
                                                        <td> <input type="text" name="telUsu" class="form-control" id="validationCustom02"  value="" required=""> </td>
                                                        <td> <label for="example-text-input" class="col-form-label">Ext </label></td>
                                                        <td> <input type="text" name="telUsu" class="form-control" id="validationCustom02"  value="" required=""></td>
                                                    </tr>
                                                    <tr>
                                                        <td> <label for="validationCustom01">CC Representante </label></td>
                                                        <td> <input type="text" name="cargoUsu" class="form-control" id="validationCustom02"  value="" required=""></td>
                                                        <td> <label for="example-text-input" class="col-form-label">Email Representante </label></td>
                                                        <td> <input type="text" name="telUsu" class="form-control" id="validationCustom02"  value="" required=""></td>

                                                    </tr>
                                                    <tr>
                                                        <td> <label for="validationCustom01">Nombre Representante</label></td>
                                                        <td> <input type="text" name="" class="form-control" id="validationCustom02" placeholder="" value="" required=""></td>
                                                        <td> </td>
                                                        <td> </td>

                                                    </tr>
                                                    <tr>
                                                        <td> <button class="btn btn-success mb-3" type="submit">Actualizar</button></td>
                                                        <td> <button class="btn btn-success mb-3" type="submit"><a href="control?action=residuoLeeGenera" class="text-white">Cancelar</a></button></td>

                                                    </tr>


                                                </table>
                                            
                                            </form>
                                            
                                        </div>
                                    </div>
                                </div>
                                <!-- Server side end -->

                            </div>
                        </div>
                    </div>
                    <!-- main content area end -->
                </div>
                <!-- footer area start-->
                <footer>
                    <div class="footer-area">
                        <p>Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p>
                    </div>
                </footer>
                <!-- footer area end-->
            </div>
            <!-- page container area end -->
            <!-- offset area start -->
            <div class="offset-area">
                <div class="offset-close"><i class="ti-close"></i></div>
                <ul class="nav offset-menu-tab">
                    <li><a class="active" data-toggle="tab" href="#activity">Activity</a></li>
                    <li><a data-toggle="tab" href="#settings">Settings</a></li>
                </ul>
                <div class="offset-content tab-content">
                    <div id="activity" class="tab-pane fade in show active">
                        <div class="recent-activity">
                            <div class="timeline-task">
                                <div class="icon bg1">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg2">
                                    <i class="fa fa-check"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Added</h4>
                                    <span class="time"><i class="ti-time"></i>7 Minutes Ago</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg2">
                                    <i class="fa fa-exclamation-triangle"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>You missed you Password!</h4>
                                    <span class="time"><i class="ti-time"></i>09:20 Am</span>
                                </div>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg3">
                                    <i class="fa fa-bomb"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Member waiting for you Attention</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg3">
                                    <i class="ti-signal"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>You Added Kaji Patha few minutes ago</h4>
                                    <span class="time"><i class="ti-time"></i>01 minutes ago</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg1">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Ratul Hamba sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Hello sir , where are you, i am egerly waiting for you.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg2">
                                    <i class="fa fa-exclamation-triangle"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg2">
                                    <i class="fa fa-exclamation-triangle"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg3">
                                    <i class="fa fa-bomb"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg3">
                                    <i class="ti-signal"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div id="settings" class="tab-pane fade">
                        <div class="offset-settings">
                            <h4>General Settings</h4>
                            <div class="settings-list">
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Notifications</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch1" />
                                            <label for="switch1">Toggle</label>
                                        </div>
                                    </div>
                                    <p>Keep it 'On' When you want to get all the notification.</p>
                                </div>
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Show recent activity</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch2" />
                                            <label for="switch2">Toggle</label>
                                        </div>
                                    </div>
                                    <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                                </div>
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Show your emails</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch3" />
                                            <label for="switch3">Toggle</label>
                                        </div>
                                    </div>
                                    <p>Show email so that easily find you.</p>
                                </div>
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Show Task statistics</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch4" />
                                            <label for="switch4">Toggle</label>
                                        </div>
                                    </div>
                                    <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                                </div>
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Notifications</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch5" />
                                            <label for="switch5">Toggle</label>
                                        </div>
                                    </div>
                                    <p>Use checkboxes when looking for yes or no answers.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- offset area end -->
            <!-- jquery latest version -->
            <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
            <!-- bootstrap 4 js -->
            <script src="assets/js/popper.min.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/owl.carousel.min.js"></script>
            <script src="assets/js/metisMenu.min.js"></script>
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
    </body>

</html>
