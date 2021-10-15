<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header/>

    <body>
        <%@include file ="../sidebarNavbar.jsp" %>
            <!-- main content area start -->
            <div class="main-content">

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left"> OJO lista antigua Listado de declaraciones</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>de residuos</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <!-- main content area inicio -->
                <br>
                
                    <div class="row">

                        <form method="post" action="controlGenerador?action=enviosBuscar" class="needs-validation form-control" novalidate="">

                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="validationCustom01">Filtrar declaraciones pendientes de envío por </label>
                                </div>
                                <input type="hidden" value="${idUsuario}" name="txtG">
                                <div class="form-group col-md-6">
                                    <select class="form-control is-valid" name="txtGi">
                                        <option value="${idUsuario}" >Fecha de programacion de entrega de los residuos al transportador</option>
                                    </select>
                                </div>

                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-2">
                                    <label for="validationCustom01">Desde: </label>
                                </div>
                                <div class="form-group col-md-2">
                                    <input type="date" name="txtFechaIni" class="form-control" id="fechaActual" placeholder="" value="" required="">
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="validationCustom01">Hasta: </label>
                                </div>
                                <div class="form-group col-md-2">
                                    <input type="date" name="txtFechaFin" class="form-control" id="fechaActual2" placeholder="" value="" required="">
                                </div>

                                <div class="form-group col-md-2">

                                    <button class="btn btn-success " type="submit">Buscar</button>
                                </div>
                            </div>
                        </form>
                                    
                                        <table id="grid">

                                            <thead>
                                                <tr>
                                                    <th>Descripcion</th>
                                                    <!--th>Tipo Embalaje</th>
                                                    <th># Embalajes</th>
                                                    <th>Tipo de Empaque</th>
                                                    <th># Empaques</th>
                                                    <th>Peso (Kg)</th-->
                                                    <th>Declaraciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="listdato" items="${listVdecla}">

                                                        <tr>
                                                            <td><label for="validationCustom01">${listdato.getRes_nombre()} </label></td>
                                                    
                                                        <td><select  id="tipEmbalaje" name="tipEmbalaje">
<!-- 														SELECT TIPO EMBALAJE  -->
                                                        </select></td>
                                                    <td><input type="number" name="txtcantEmbalaje" required=""></td>
                                                    <td><select  id="tipEmpaque" name="tipEmpaque">
<!-- 															SELECT DE TIPO EMPAQUE -->
                                                        </select></td>
                                                    <td><input type="number" name="txtCantEmpaque" required=""></td>
                                                    <td><input type="number" name="txtPeso" required=""></td>
                                                    <td>
                                                        <form method="post" action="controlGenerador?action=declaraResiduo" class="needs-validation form-control" novalidate="" >
                                                            <input type="hidden" name="txtResi" value="${listdato.getId_pre_residuo()}">
                                                            <input type="hidden" name="txtIdGen" value="${idUsuario}">
                                                            <button class="btn btn-success mb-2" type="submit">Crear declaracion</button> 
                                                        </form>
                                                        </td>
                                                    </tr>

                                                    

                                                
                                            </c:forEach>
                                                    </tbody>
                                        </table>
                                    

                    </div>
                    </div>
                    <!-- main content area end -->
                
                <!-- footer area start-->
                <demo:footer/>
    </body>

</html>
