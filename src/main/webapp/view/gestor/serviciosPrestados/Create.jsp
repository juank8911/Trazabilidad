   
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header/>
        <title>sdstrp - Panel de Control</title>
        <script src="assets/js/listSTG.js"></script>
    </head>

    <body>
         <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            <div class="col-9">

                <!-- page title area start -->
                <div>
                    <div class="row justify-content-md-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Crear Tipo de Residuo autorizado</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>a las sede del gestor en el sistema de informacion</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <div class="row justify-content-md-center">
                <div class="row">
                    <form method="post" action="ControlGestor?action=creaServicioGestor"> 
                        <div class="row-group row-10">
                    <label class="form-group col-md-2" for="corrienteResiduo">Corriente Residuo: </label>
                                        <select class="form-control" id ="tipResiduo" name="tipResiduo">
                                            <option> Seleccione </option>
												<c:forEach var="dato" items="${listaResiduos}">
												   <option value="${dato.tre_id}">${dato.tre_nombre}</option>
												</c:forEach>
                                        </select>
                                            </div>
                                            <div class="form-group">
                                                                
                                          <label  class="form-group col-md-2"for="tipoGestion">Tipo Gestion: </label>
                                        <select class="form-control" id ="tipGestion" name="tipGestion">
                                            <option> Seleccione </option>
                                            <c:forEach var="tges" items="${listaTipoGestion}">
													<option value="${tges.id_tip_gestion}">${tges.nombre_gestion}</option>                                            
                                           </c:forEach>
                                        </select>
                                        </div>
                                        <div class="form-group">
                                        
                                        
                                        <label  class="form-group col-md-2"for="subTipGest">Sub tipo de Gestion: </label>
                                        <select class="form-control" id ="subTipGest" name="subTipGest">
                                            <option> Seleccione </option>
                        
                                        </select>
                                        </div>
                                        
                                        <input class="btn btn-success mb-3" type="submit"  value="Crear Tipo de Residuo Autorizado">
                    

                    </form>
					</div>
                    
                    <!-- page title area end -->

                    <!-- main content area end -->
                    <!-- footer area start-->
                    </div>
                    </div>
                	<demo:footer/>
                </body>

                </html>
