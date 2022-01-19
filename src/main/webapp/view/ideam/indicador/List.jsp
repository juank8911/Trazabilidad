<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

    <demo:header/>     
        <title>sdstrp - Lista Indicador</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/css/datepicker.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/js/bootstrap-datepicker.min.js"></script>
    </head>

     <body>
       <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            <div class="col-9 ml-5">
            
            <div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Historico</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">Transportador</span></li>
                            </ul>
            			</div>


	<div class="row justify-content-md-center">
				<div class="input-group mb-3">
  			<input type="text" class="form-control datepicker" id="datepicker" placeholder="desde" aria-label="desde">
  			<span class="input-group-text">-</span>
  			<input type="text" class="form-control" placeholder="Hasta" aria-label="Hasta">
			</div>
			<div>
			<select class="form-select" aria-label="Disabled select example" disabled>
	  			<option selected>Open this select menu</option>
	  			<option value="1">Cantidad anual de residuos peligrosos movilizados, por corriente de residuos</option>
	  			<option value="2">Cantidad anual de residuos peligrosos recolectados, por generador</option>
	  			<option value="3">Cantidad anual de residuos peligrosos entregados , por instalación del gestor</option>
			</select>
			</div>
		<div class="container px-4">
  			<div class="row gx-5">
    		<div class="col">
     		<div class="p-3 border bg-light">
     		<input type="date" name="datepicker" id="datepicker"></div>
    		</div>
    		<div class="col">
      		<div class="p-3 border bg-light">Custom column padding</div>
    		</div>
  			</div>
		</div>
	</div>	
		<div class="row justify-content-md-center">
		<c:url value="/resources/dataviz/js/spain-electricity.json" var="readUrl" />
					<div class="demo-section k-content wide">

    </div>
				
			
		</div>
			<script type="text/javascript">
			$(document).ready(function(){
				  $("#datepicker").datepicker({
				     format: "yyyy",
				     viewMode: "years", 
				     minViewMode: "years",
				     autoclose:true
				  });

				  $("#hasta").datepicker({
					     format: "yyyy",
					     viewMode: "years", 
					     minViewMode: "years",
					     autoclose:true
					  });
				     
				})
			</script>
	</div>          
			<demo:footer/>

    </body>

</html>
