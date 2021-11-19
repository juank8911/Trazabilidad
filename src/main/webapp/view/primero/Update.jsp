 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
       
        <title>sdstrp - Crea Perfil</title>
        <!-- jquery latest version -->
        <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
        <script src="assets/js/primSesion.js"></script>
    </head>

    <body data-sesion="${nSesion}">
    		
    	<c:if test="${nSesion == 1 }">
    	<p>${perfil}</p>	
       	<c:if test="${perfil == 1}"><%@include file ="../Autoridad/sidebarNavbar.jsp" %> </c:if>
    	<c:if test="${perfil == 2}"><%@include file ="../ideam/sidebarNavbar2.jsp" %> </c:if>	
    	<c:if test="${perfil == 3}"><%@include file ="../generador/sidebarNavbar2.jsp" %> </c:if>
    	<c:if test="${perfil == 4}"><%@include file ="../transportador/sidebarNavbar2.jsp" %> </c:if>
    	<c:if test="${perfil == 5}"><%@include file ="../gestor/sidebarNavbar2.jsp" %> </c:if>
        </c:if>
            <!-- sidebar menu area end -->
            <!-- page title area start -->
            <div class="col-9 ml-5">
            <div>
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="breadcrumbs-area">
                            <h4 class="page-title pull-left">Actualiza</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span>Perfil</span></li>
                            </ul>
                        </div>
                    </div>
                    <!-- FIN DE MENU  -->
                </div>
            </div>
            <!-- page title area end -->
            <!-- main content area inicio -->
            <div class="main-content-inner">
                <br>
                <div class="row">
                            <!-- Server side start -->
                                <div class="card mt-4">
                                    
                                        <form method="post" id="formContra" action="control?action=perfilActualiza" class="needs-validation form-control" novalidate="">

                                            <div class="form-row">
                                                <div class="form-group col-md-2">
                                                 <label for="validationCustom01">Nombre:</label>
                                                </div>
                                                <div class="form-group col-md-4">
                                                 <input type="text" name="nomUsu" class="form-control" id="validationCustom02"  value="${pSUsuario.usr_nom_persona}" required=""> 
                                                </div>
                                                <div class="form-group col-md-2">
                                                 <label for="example-text-input" class="col-form-label">Apellido:</label>
                                                </div>
                                                <div class="form-group col-md-4">
                                                <input type="text" name="apeUsu" class="form-control" id="validationCustom02"  value="${pSUsuario.usr_apellido}" required="">
                                                </div>
                                                <div class="form-group col-md-2">
                                                     <label for="example-text-input" class="col-form-label">Tipo de Documento:</label>
                                                </div>
                                                <div class="form-group col-md-4">
                                                     <select class="form-control" name="slTiDoc">
                                                            <option value="${pSUsuario.tDocumento.tdo_id}">${pSUsuario.tDocumento.tdo_nombre}</option>
                                                           <c:forEach items="${listTipoDocumento}" var="tDoc">
                                                           	<option value="${tDoc.tdo_id}">${tDoc.tdo_nombre}</option>
                                                           </c:forEach>
                                                        </select>
                                                </div>
                                                <div class="form-group col-md-2">
                                                     <label for="example-text-input" class="col-form-label">Nro de Documento:</label>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <input type="number" name="txtNumDoc" class="form-control" maxlength="10" id="validationCustom02"  value="${pSUsuario.usr_documento}" required="">
                                                </div>
                                                <div class="form-group col-md-2">
                                                    <label for="validationCustom01">Cargo </label>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <input type="text" name="txtCargo" class="form-control" id="validationCustom02"  value="${pSUsuario.usr_cargo}" required="">
                                                </div>
                                                <div class="form-group col-md-2">
                                                     <label for="example-text-input" class="col-form-label">Telefono </label>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <input type="text" name="nroTel" class="form-control" id="validationCustom02"  value="${pSUsuario.usr_telefono}" required="">
                                                </div>
                                                
                                               <div class="form-group col-md-2">
                                                    <label for="validationCustom01">Correo Electronico</label>
                                               </div>
                                                <div class="form-group col-md-5">
                                                    <input type="email" name="txtEmail" class="form-control" id="validationCustom02"  value="${pSUsuario.usr_email}" required="">
                                                </div>
                                               <div class="form-group col-md-2">
                                                    <label for="validationCustom01">Usuario</label>
                                               </div>
                                                <div class="form-group col-md-3">
                                                    <input type="text" name="txtUsu" readonly="readonly" class="form-control" id="validationCustom02"  value="${pSUsuario.usr_nombre}" required="">
                                                    <input type="hidden" name="txtIdusu" value="${pSUsuario.id_usr}">
                                                </div>
                                            </div>
                                            <div class="form-group form-control">

                                                    <button class="btn btn-success mb-11" type="submit">Actualizar Informacion</button>
                                                    <c:choose>
                                                    <c:when test="${nSesion == 1}">
                                                    <button class="btn btn-success mb-11" type="submit"><a href="control?action=perfilLee" class="text-white">Cancelar</a></button>
                                                    </c:when>
                                                    </c:choose>
                                                    
                                            </div>
                                        </form>         
                                </div>

			<!-- Modal -->
			<div class="modal fade" id="firstSession" tabindex="-1"
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
						Estimado usuario, bienvenido a nuestro sistema de informacion. Antes de empezar
						queremos conocer algunos datos personales que nos permita brindar una experiencia de usuario mas amable e integral</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-success"
								data-dismiss="modal">Entiendo</button>
						</div>
					</div>
				</div>
			</div>
				</div>
			<!-- Server side end -->
                </div>
                <!-- main content area end -->
                <!-- footer area start-->
                </div>
			<demo:footer/>
    </body>

</html>
