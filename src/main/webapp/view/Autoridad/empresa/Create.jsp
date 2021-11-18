<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header />
        <title>sdstrp - Crear Empresa </title>        
    </head>

    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- preloader area start -->
       <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            <div class="col-10">

					<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Crear empresas</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">en el sistema de información</span></li>
                            </ul>
            			</div>

                <!-- page title area end -->
                <!-- main content area inicio -->
                <div class="row-10 justify-content-md-center">>
			<form method="post" action="control?">
				<div class="form-row">
					<div class="form-group col-md-2">
						<label for="validationCustom01">Razon Social:</label>
					</div>
					<div class="form-group col-md-10">
						<input type="text" name="txtRaSoc" class="form-control"
							id="txtRaSoc" placeholder="" value="" required="">
					</div>
					<div class="form-group col-md-2">
						<label for="validationCustom01">Nombre Comercial:</label>
					</div>
					<div class="form-group col-md-10">
						<input type="text" name="txtNomComer" class="form-control"
							id="txtNomComer" placeholder="" value="" required="">
					</div>
				</div>


				<div class="form-row">
					<div class="form-group col-md-2">
						<label for="validationCustom01">NIT:</label>
					</div>
					<div class="form-group col-md-4">
						<input type="number" name="txtNit" class="form-control"
							id="txtNit" value="" required="">
					</div>
					<div class="form-group col-md-2">
						<label for="example-text-input" class="col-form-label">CIUU:</label>
					</div>
					<div class="form-group col-md-4">
						<select class="form-control " name="txtCiiu" required="">
							<c:forEach items="${listCiiu}" var="cii">
								<option value="${cii.cii_id}">${cii.cii_id}/
									${cii.cii_nombre}</option>
							</c:forEach>
						</select>
					</div>
				</div>


				<div class="form-row">
					<div class="form-group col-md-2">
						<label for="validationCustom01">Departamento:</label>
					</div>
					<div class="form-group col-md-4">
						<select class="form-control" name="txtDepar">
							<c:forEach items="${listaDepar}" var="dep">
								<option value="${dep.id_dept}">${dep.dept_nombre}</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group col-md-2">
						<label for="example-text-input" class="col-form-label">Municipio:</label>
					</div>
					<div class="form-group col-md-4">
						<select class="form-control " name="txtMun" id="txtMun">
						</select>
					</div>
				</div>
				<div class="form-row">

					<div class="form-group col-md-2">
						<label for="validationCustom01">Direccion:</label>
					</div>
					<div class="form-group col-md-4">
						<input type="text" name="txtDirecc" class="form-control"
							id="txtDirecc" value="" required="">
					</div>

					<div class="form-group col-md-2">
						<label for="example-text-input" class="col-form-label">Telefono:</label>
					</div>
					<div class="form-group col-md-2">
						<input type="text" name="txtTel" class="form-control" id="txtTel"
							value="" required="">
					</div>
					<div class="form-group col-md-1">
						<label for="example-text-input" class="col-form-label">Ext:</label>
					</div>
					<div class="form-group col-md-1">
						<input type="text" name="txtExt" class="form-control" id="txtExt"
							value="" required="">
					</div>
				</div>
				<div class="form-row">

					<div class="form-group col-md-2">
						<label for="validationCustom01">CC Representante:</label>
					</div>
					<div class="form-group col-md-4">
						<input type="number" name="txtReprCed" class="form-control "
							id="txtReprCed" value="" required="">
					</div>

					<div class="form-group col-md-2">
						<label for="example-text-input" class="col-form-label">Email
							Representante:</label>
					</div>
					<div class="form-group col-md-4">
						<input type="email" name="txtEmail" class="form-control"
							id="txtEmail" value="" required="">
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-2">
						<label for="validationCustom01">Nombre Representante:</label>
					</div>
					<div class="form-group col-10">
						<input type="text" name="txtRepr" class="form-control"
							id="txtRepr" required="">
					</div>
				</div>
				<div class="form-row">
					<div class="align-items-center">
						<button class="btn btn-success" type="submit" name="action"
							value="empresaRegistro">Registrar</button>
						<button class="btn btn-success" type="submit">
							<a href="control?action=empresaListar" class="text-white">Cancelar</a>
						</button>
					</div>
				</div>
			</form>



			<!-- Server side end -->

                            
                    </div>
                    <!-- main content area end -->
                </div>
                <!-- footer area start-->
                <demo:footer/>
                        </body>

</html>
