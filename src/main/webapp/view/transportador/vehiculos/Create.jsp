<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        
 <demo:header>
 <title>sdstrp - Crear Vehiculo </title>
  </demo:header>
    <body>
        <%@include file ="../sidebarNavbar.jsp" %>
            <!-- main content area start -->
            

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Crear de Vehiculo</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span> asociado a la sede del transportador en el sistema de información</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <!-- main content area inicio -->

                                <form method="post" action="controlTrans?action=vehiGuardaTransp" class="needs-validation form-control" novalidate="">

                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <label for="example-text-input" class="col-form-label">Tipo de Vehiculo </label>

                                        </div>
                                        <div class="form-group col-md-2">
                                            <select class="form-control is-valid" name="tipoVeh" id="tipVeh">
                                                <option selected="">Seleccione Tipo</option>
                                                <c:forEach var="dato" items="${listaTipoVeh}">  
                                                   <c:if test="${dato.tve_padre == null}">
                                                        <option value="${dato.tve_id}">${dato.tve_nombre} </option>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-1">
                                            <label for="example-text-input" class="col-form-label">Designacion*</label>

                                        </div>
                                        <div class="form-group col-md-7">
                                            <select class="form-control is-valid" name="tipDesig">
                                                <option>Seleccione Detalle del Vehiculo </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Placa* </label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtPlaca"class="form-control is-valid" id="validationCustom02" placeholder="" value="" required="">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Placa (Semi) Remolque </label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtPlacaSemi"class="form-control is-valid" id="validationCustom02" placeholder="" value="" required="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Numero de Chasis* </label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtChasis"class="form-control is-valid" id="validationCustom02" placeholder="" value="" required="">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Capacidad(t)*</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtCapacidad"class="form-control is-valid" id="validationCustom02" placeholder="" value="" required="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Marca *</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtMarca"class="form-control is-valid" id="validationCustom02" placeholder="" value="" required="">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Linea* </label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtLinea"class="form-control is-valid" id="validationCustom02" placeholder="" value="" required="">
                                        </div>

                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Modelo *</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtModelo"class="form-control is-valid" id="validationCustom02" placeholder="" value="" required="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-5">
                                            <label for="validationCustom01">Características de peligrosidad de los residuos a transportar* </label>
                                        </div>
                                        <div class="form-group col-md-7">
                                            <select class="custom-select is-valid" name="txtPeligrosidad[]" multiple>
                                                <option value="CORR">Corrosivo</option>
                                                <option value="EXPL">Explosivo</option>
                                                <option value="INFE">Infeccioso o Riesgo Biologico</option>
                                                <option value="INFL">Inflamable</option>
                                                <option value="REAC">Reactivo</option>
                                                <option value="RADI">Radioactivo</option>
                                                <option value="TOXI">Toxico</option>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div class="form-row">
                                        <div class="form-group col-md-3">
                                            <label for="validationCustom01">Nombre o Razon social (Propietario) *</label>
                                        </div>
                                        <div class="form-group col-md-9">
                                            <input type="text" name="txtNomPro" class="form-control is-valid" id="validationCustom02"  value="" required="">
                                        </div>  
                                    </div>
   
                                    <div class="form-row">

                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Tipo de Documento* </label>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <select class="form-control is-valid" name="txtTipDocu">
                                                <option value="1">Cedula Ciudadania</option>
                                                <option value="2">Cedula Extranjeria</option>
                                                <option value="3">Numero de identificacion tributaria</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="example-text-input" class="col-form-label">Nro. Documento </label>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <input type="text" name="txtNdocumento"class="form-control is-valid" id="validationCustom02" placeholder="" value="" required="">
                                        </div>

                                    </div>
                                    
                                    <br />
                                    <div class="form-row form-control">

                                        <button class="btn btn-success " type="submit">Crear Vehiculo</button>
                                        <button class="btn btn-success "><a href="controlTrans?action=vehiculoTransp" class="text-white">Cancelar</a></button>
                                    </div>

                                </form>

               <demo:footer>
               </demo:footer>
    </body>

</html>
