<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header/>
        <title>sdstrp - Ver Perfil</title>
</head>

    <body>
        <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- page title area start -->
            <div class="col-9">
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
                
                		
                    <div class="form-group row">
                    <div class="col-md-8">
                        <label for="rzon" id="perfil"><strong>Razon Social:</strong></label>
                         <label id="rzon" name="rzon"> ${idSede.empresaSed.emp_razon_social}</label>
                    </div>

                    </div>
                    <div class="form-group row"> 

                        <div class="col-md-10">
                            <label for="validationCustom01" id="perfil" ><strong>Nombre Comercial:</strong></label>
                            <label for="validationCustom01">${idSede.empresaSed.emp_nombre_comercial}</label>
                        </div>

                    </div>
                    <div class="form-group row">
                    <div class="col-md-2">
                     <label for="validationCustom01" id="perfil"><strong>Nit</strong></label>
                     <label for="validationCustom01">${idSede.empresaSed.emp_numero_documento}</label>
                    </div>  
                                                  
                    <div class="col-md-5">
                     <label for="validationCustom01" id="perfil" ><strong>CIUU</strong></label>
                     <label for="validationCustom01">${idSede.empresaSed.empCii.cii_nombre}</label>
                    </div>

                    </div>
                    
                    <div class="form-group row">
                    <div class="col-md-2">
                     <label for="direc" id="perfil"><strong>Direccion:</strong></label>
                     <label id="direc">${idSede.sed_direccion} , ${departamento} </label>
                    </div>

                     <div class="col-md-2">
                     <label for="telef" id="perfil"><strong>Telefono:</strong></label>
                     <label id="telef">${idSede.sed_telefono_nro}</label>
                    </div>

                        <div class="col-md-2">
                     <label for="extn" id="perfil"><strong>Ext:</strong></label>
                     <label id="extn">${idSede.sed_telefono_ext}</label>
						</div>
                        
                    </div>
                    
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label for="ccRep" id="perfil"><strong>CC Representante: </strong></label>
                            <label  id="ccRep">${idSede.empresaSed.emp_rep_nombre}</label>
                        </div>

                        <div class="col-md-5">
                            <label for="mail" id="perfil"><strong>E-Mail Representante</strong></label>
                            <label id="mail">${idSede.empresaSed.emp_rep_email}</label>
                        </div>

                    </div>
                                     </div>
                 </div>
<demo:footer/>

    </body>

</html>
