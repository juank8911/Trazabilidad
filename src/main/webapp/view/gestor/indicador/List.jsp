<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

    <demo:header/>     
        <title>sdstrp - Lista Indicador</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/css/datepicker.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/js/bootstrap-datepicker.min.js"></script>
        <script src="assets/js/indicadoresGen.js"></script>
    </head>

     <body>
       <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            <div class="col-9 ml-5">
            
            <div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Indicadores</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">Gestor</span></li>
                            </ul>
            			</div>


	<div class="row justify-content-md-center">
				<div class="input-group mb-3">
  			<input type="text" class="form-control desde" id="desde" placeholder="Desde" aria-label="Desde">
  			<span class="input-group-text">-</span>
  			<input type="text" class="form-control hasta" id="hasta" placeholder="Hasta" aria-label="Hasta">
			</div>
			<div>
			<select class="form-select" aria-label="select" onchange="cambioChar(this)" id="select_id">
	  			<option selected value="1">Cantidad anual de residuos peligrosos recepcionados, por corriente de residuos</option>
	  			<option value="2">Cantidad anual de residuos peligrosos recepcionados, por generador</option>
	  			<option value="3">Cantidad anual de residuos peligrosos recepcionados , por transportador</option>
			</select>
			</div>
	</div>	
		<div class="row justify-content-md-center" id="chart">
    </div>
				
			
		</div>
			<script type="text/javascript">
			$(document).ready(function(){
				  $("#desde").datepicker({
				     format: "yyyy",
				     viewMode: "years", 
				     minViewMode: "years",
				     autoclose:true,
				     value:"2021",
				  });

				  $("#hasta").datepicker({
					     format: "yyyy",
					     viewMode: "years", 
					     minViewMode: "years",
					     autoclose:true,
					     value:"2021",
					  });
				     
				})
			</script>        
			<demo:footer/>

    </body>

</html>
