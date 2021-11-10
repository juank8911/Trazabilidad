<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header />
        <title>sdstrp - Ver Perfil</title>
        
    </head>
    <body>
        <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- page title area start -->
            <div class="col">
            <div class="row">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="breadcrumbs-area">
                            <h4 class="page-title pull-left">Ver</h4>
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
            <div class="row">
                <br>
                <div class="row form-control">
                    <div class="form-group row">
                    <div class="col-md-2">
                        <label for="validationCustom01"><strong>Razon Social:</strong></label>
                    </div>
                    <div class="col-md-10">
                     <label for="validationCustom01"> ${nomPersona}</label>
                    </div>
                    </div>
                    <div class="form-group row"> 

                        <div class="col-md-2">
                            <label for="validationCustom01"><strong>Nombre Comercial:</strong></label>
                        </div>
                        <div class="col-md-10">
                            <label for="validationCustom01">${nom_comerc}</label>
                        </div>
                    </div>
                    <div class="form-group row">
                    <div class="col-md-2">
                     <label for="validationCustom01"><strong>Nit</strong></label>
                    </div>
                    <div class="col-md-2">
                     <label for="validationCustom01">999.999.999-1</label>
                    </div>
                                
                    <div class="col-md-2">
                     <label for="validationCustom01"><strong>CIUU</strong></label>
                    </div>
                    <div class="col-md-2">
                     <label for="validationCustom01">Recolector residuos</label>
                    </div>
                    </div>
                    <div class="form-group row">
                    <div class="form-group col-md-2">
                     <label for="validationCustom01"><strong>Direccion:</strong></label>
                    </div>
                        <div class="col-md-3">
                     <label for="validationCustom01">${direccion} , ${departamento} </label>
                    </div>
                        <div class="form-group col-md-2">
                     <label for="validationCustom01"><strong>Telefono:</strong></label>
                    </div>
                        <div class="col-md-2">
                     <label for="validationCustom01">${telefono}</label>
                    </div>
                        <div class="form-group col-md-2">
                     <label for="validationCustom01"><strong>Ext:</strong></label>
                    </div>
                        <div class="col-md-1">
                     <label for="validationCustom01">1023</label>
                    </div>
                        
                    </div>
                    <div class="form-group row">
                        <div class="form-group col-md-2">
                            <label for="validationCustom01"><strong>CC Representante</strong></label>
                        </div>
                        <div class="col-md-3">
                            <label for="validationCustom01">${doc}</label>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="validationCustom01"><strong>Mail Representante</strong></label>
                        </div>
                        <div class="col-md-2">
                            <label for="validationCustom01">${correo}</label> 
                        </div>
                    </div>
                    
                    
                    
    
                </div>
                </div>
                <demo:footer/>
                <!-- footer area end-->
            </div>
          
    </body>

</html>
