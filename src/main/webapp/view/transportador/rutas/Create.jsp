<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
<title>sdstrp - Crear Ruta </title>
    </head>

    <body>
       
        <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Crear de Ruta</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span> asociada a la sede del transportador en el sistema de información</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <div class="row">
                
                <div class="form-control">
                    <form method="post" action="controlTrans?action=rutaAgregar" class="needs-validation " novalidate="">
                        <div class="form-row">

                            <div class="form-group col-md-2">
                                <label for="example-text-input" class="col-form-label">Nombre: * </label>

                            </div>
                            <div class="form-group col-md-10">
                                <input type="text" name="nombreRuta"class="form-control" id="validationCustom02" placeholder="" value="" required="">
                            </div>
                        </div>
                        <input type="hidden" value="${idSede}" name="idTransp">

                        <div class="form-group col-md-4">
                            <label for="example-text-input" class="col-form-label">Seleccione Establecimientos Generadores: *</label>

                        </div>
                        <div class="form-group col-md-10">
                            <select  class="form-control" name="sedeG" size="3" multiple="" required="">
                                <c:forEach var="dato" items="${listSedeTr}">
                                    <option value="${dato.get(0)}"> ${dato.get(1)}  ::  ${dato.get(2)}  ::  ${dato.get(3)}  ::  ${dato.get(4)}:: ${dato.get(5)}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <button class="btn btn-success mb-3" type="submit">Crear Ruta</button>
                        <button class="btn btn-success mb-3" type="submit"><a href="controlTrans?action=transp" class="text-white">Cancelar</a></button>
                    </form>
                    
                </div>
                <br/>
                </div>
				<demo:footer/>
    </body>

</html>
