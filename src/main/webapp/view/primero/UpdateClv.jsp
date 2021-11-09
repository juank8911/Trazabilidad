
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
        
        <title>sdstrp - Actualizar contraseñade </title>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
        <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>

        
        <!-- modernizr css -->
       <script src="assets/js/primSesion.js"></script>
    </head>

    <body data-sesionCl="${nSesion}">
    
        <c:if test="${selPerfil.id_perfil == 1}"><%@include file ="../Autoridad/sidebarNavbar.jsp" %> </c:if>
    	<c:if test="${selPerfil.id_perfil == 2}"><%@include file ="../ideam/sidebarNavbar.jsp" %> </c:if>	
    	<c:if test="${selPerfil.id_perfil == 3}"><%@include file ="../generador/sidebarNavbar.jsp" %> </c:if>
    	<c:if test="${selPerfil.id_perfil == 4}"><%@include file ="../transportador/sidebarNavbar.jsp" %> </c:if>
    	<c:if test="${selPerfil.id_perfil == 5}"><%@include file ="../gestor/sidebarNavbar.jsp" %> </c:if>
    	
            			<!-- Modal -->
			<div class="modal fade" id="firstSessionCl" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header" id="verde">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
						<p>Estimado usuario, su contraseña actual fue generada de manera automatica 
						por el sistema de informacion y por lo tanto es necesario actualizarla</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-success"
								data-dismiss="modal">Entiendo</button>
						</div>
					</div>
				</div>
			</div>
            <!-- main content area start -->
            <div class="main-content">

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Actualizar contraseña</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span> acceso al sistema de información</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <!-- main content area inicio -->
                <section class="container">

                  
                    <br>
                    
                    <div class="row form-control">
				<div id="msg"></div>

				<!-- Mensajes de Verificación -->
				<input type="hidden" name="actual" id="actual" >
				<div id="errorAc" class="alert alert-danger ocultar" role="alert">
					La contraseña actual esta errada, vuelve a intentar !</div>
				<div id="error" class="alert alert-danger ocultar" role="alert">
					Las Contraseñas no coinciden, vuelve a intentar !</div>
				<div id="ok" class="alert alert-success ocultar" role="alert">
					Las Contraseñas coinciden ! (Procesando formulario ... )</div>
				<div class="col-8">
        
                        <form method="post" onsubmit="pssValidate(); return false" action="control?action=perfilActualizaContra" name="f1" >
                            <input type="text" name="txtUsuario" value="${idUsuario}" hidden="">
                        <div class="form-group row">
                            <label for="validationCustom01" class="col-4 col-form-label">Contraseña Actual *</label>
                         <input type="password" name="txtPassActu"  placeholder="Tu Contraseña" id="validationCustom02" class="form-control col-8" value="" required="">
                         </div>
                        <div class="form-group row">
                          <label for="validationCustom01" class="col-4 col-form-label">Contraseña Nueva *</label>
                          <input type="password" name="txtPassNuev1" id="txtPassNuev1" placeholder="Tu Contraseña Nueva" id="validationCustom02" class="form-control col-8" value="" required="">
                        </div>
                        <div class="form-group row">
                            <label for="validationCustom01" class="col-4 col-form-label">Repita Contraseña *</label>
                            <input type="password" name="txtPassNuev2" id="txtPassNuev2" placeholder="Repita Contraseña Nueva" id="validationCustom02" class="form-control col-8" value="" required="">
                        </div>
                        <div class="form-group d-flex justify-content-center">
                            <button class="btn btn-success mx-2" type="submit" >Actualizar Contraseña</button>
                            <c:choose>
                              <c:when test="${nSesion == 1}">
                              <button class="btn btn-success mx-2" type="submit"><a href="control?action=ingresar" class="text-white">Cancelar</a></button>
                              </c:when>
                              </c:choose>
                            
                        </div>
                        </form>
      
                    </div>
                    </div>

                </section>
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
            <script src="assets/js/popper.min.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/owl.carousel.min.js"></script>
            <script src="assets/js/metisMenu.min.js"></script>
            <script src="assets/js/jquery.slimscroll.min.js"></script>
            <script src="assets/js/jquery.slicknav.min.js"></script>

            
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
