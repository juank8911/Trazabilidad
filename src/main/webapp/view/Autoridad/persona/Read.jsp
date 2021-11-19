<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header />
        <title>sdstrp - Ver Perfil</title>
        
    </head>
    <body>
        <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- page title area start -->
            <div class="col-9 ml-5">
            
            <div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Ver</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">Perfil</span></li>
                            </ul>
            			</div>
           
            <!-- page title area end -->
            <!-- main content area inicio -->
            <div class="row">
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
                
                <!-- footer area end-->
            </div>
            </div>
            <demo:footer/>
          
    </body>

</html>
