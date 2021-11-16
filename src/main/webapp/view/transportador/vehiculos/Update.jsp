<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header>
<title>sdstrp - Actualiza vehiculo</title>
</demo:header>

    <body>
        <%@include file ="../sidebarNavbar2.jsp" %>
       
        <div class="col-10">
            <!-- main content area start -->
           

                <!-- page title area start -->
                <div class="row">
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Actualiza de Vehiculo</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span> inscritas en el sistema de información</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <div class="row">
                <form method="post" action="controlTrans?action=vehiActualizaTransp" class="needs-validation form-control" novalidate="">

                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <label for="example-text-input" class="col-form-label">Tipo de Vehiculo </label>

                                        </div>
                                        <div class="form-group col-md-2">
                                            <select class="form-control is-valid" name="tipoVeh" id="tipVeh">
                                                <option value="${VVehiculo.tvehiculo.tve_id}">${VVehiculo.tvehiculo.tve_nombre}</option>
                                                <c:forEach var="dato" items="${listaTipoVeh}">  

                                                    <c:if test="${dato.getVeh_desig_padre() == null}">
                                                        <option value="${dato.getVeh_id_desig()}">${dato.getVeh_designacion()} </option>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-1">
                                            <label for="example-text-input" class="col-form-label">Designacion*</label>

                                        </div>
                                        <div class="form-group col-md-7">
                                            <select class="form-control is-valid" name="tipDesig">
                                                <option value="${VVehiculo.veh_id_desig}">${VVehiculo.veh_designacion} </option>
                                            </select>
                                        </div>
                                    </div>
                                            <input type="hidden" name="txtId" value="${VVehiculo.veh_id}">
                                    
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Placa</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtPlaca"class="form-control is-valid" id="validationCustom02" placeholder="" value="${VVehiculo.veh_placa}" required="">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Placa (Semi) Remolque </label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtPlacaSemi" value="${VVehiculo.veh_placa_remolque}" class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_placaR()}" required="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Numero de Chasis</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtChasis" value="${VVehiculo.veh_chasis}"class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_chasis()}" required="">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Capacidad(t)*</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtCapacidad" valus="${VVehiculo.veh_capacidad }" class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_capacidad()}" required="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Marca *</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtMarca" value="${VVehiculo.veh_marca}" class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_marca()}" required="">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Linea </label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtLinea" value="${VVehiculo.veh_marca}" class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_linea()}" required="">
                                        </div>

                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Modelo *</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtModelo" value="${VVehiculo.veh_modelo}" class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_modelo()}" required="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-5">
                                            <label for="validationCustom01">Características de peligrosidad de los residuos a transportar* </label>
                                        </div>
                                        <div class="form-group col-md-7">
                                            <select class="custom-select is-valid" name="txtPeligrosidad[]" multiple>
                                                <option value="${VVehiculo.veh_tipo_peligrosidad}"></option>
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


                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Tipo de Documento </label>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <select class="form-control is-valid" name="txtTipDocu">
                                                <option value="${vVehiculo.getV_tipoDoc()}"> 
                                                    <c:if test="${vVehiculo.getV_tipoDoc() == '1'}">
                                                        Cedula Ciudadania
                                                    </c:if>
                                                    <c:if test="${vVehiculo.getV_tipoDoc() == '2'}">
                                                        Cedula Extranjeria
                                                    </c:if>
                                                    <c:if test="${vVehiculo.getV_tipoDoc() == '3'}">
                                                        Numero de identificacion tributaria
                                                    </c:if>
                                                
                                                </option>
                                                <option value="1">Cedula Ciudadania</option>
                                                <option value="2">Cedula Extranjeria</option>
                                                <option value="3">Numero de identificacion tributaria</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="example-text-input" class="col-form-label">Nro. Documento </label>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <input type="text" name="txtNdocumento"class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_numeDoc()}" required="">
                                        </div>

                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-md-3">
                                            <label for="validationCustom01">Nombre o Razon social (Propietario) *</label>
                                        </div>
                                        <div class="form-group col-md-9">
                                            <input type="text" name="txtNomPro" class="form-control is-valid" id="validationCustom02"  value="${vVehiculo.getV_propie()}" required="">
                                        </div>  
                                    </div>

                                    <br />
                                    <div class="form-row form-control">

                                        <button class="btn btn-success " type="submit">Actualizar Vehiculo</button>
                                        <button class="btn btn-success "><a href="controlTrans?action=vehiculoTransp" class="text-white">Cancelar</a></button>
                                    </div>


                                </form>
                                </div>
                </div>
<demo:footer/>
    </body>

</html>
