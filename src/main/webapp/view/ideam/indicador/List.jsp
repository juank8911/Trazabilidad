<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header />
        <title>sdstrp - Crear Autoridad</title>

    </head>

    <body>
        
        <%@include file ="../sidebarNavbar2.jsp" %>
        
            <!-- main content area start -->
            <div class="col-9 ml-2">

				<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Listado de Indicadores</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">asociados a su perfil en el Sistema de Información</span></li>
                            </ul>
            			</div>

               <div class="row justify-content-md-center">
                <form method="post" action="controlIDEAM?action=ideamIndiLista" class="form-inline " >

                    
                        
                    <label class="my-1 mr-2" for="validationCustom01">Fecha Calculo</label>
                       <input class="form-control mr-2" type="date" value="2018-03-05" id="example-date-input">
                    
                    
                       <label class="my-1 mr-2" for="validationCustom01">Estado</label>
                        
                            <select class="form-control mr-2">
                                <option>Select</option>
                                <option>Generada</option>
                                <option>Enviada</option>
                                <option>Aprobada</option>
                                <option>Finalizada</option>
                            </select>
                       
                    
                    
                    <button class="btn btn-success mr-2 ti-search" type="submit">Buscar</button>
                    
                </form>
                </div>
                </div>
                <demo:footer/>
                
                

    </body>

</html>
