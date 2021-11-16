 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@page import="java.util.HashMap"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<!--     <head> -->
<!--         <meta charset="utf-8"> -->
<!--         <meta http-equiv="x-ua-compatible" content="ie=edge"> -->
<!--         <title>sdstrp - Panel de Control</title> -->
<!--         <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!--         <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico"> -->
<!--         <link rel="stylesheet" href="assets/css/bootstrap.min.css"> -->
<!--         <link rel="stylesheet" href="assets/css/font-awesome.min.css"> -->
<!--         <link rel="stylesheet" href="assets/css/themify-icons.css"> -->
<!--         <link rel="stylesheet" href="assets/css/metisMenu.css"> -->
<!--         <link rel="stylesheet" href="assets/css/owl.carousel.min.css"> -->
<!--         <link rel="stylesheet" href="assets/css/slicknav.min.css"> -->
<!--         <link rel="stylesheet" href="assets/css/coloresInst.css"> -->
<!--         amchart css -->
<!--         <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" /> -->
<!--         others css -->
<!--         <link rel="stylesheet" href="assets/css/typography.css"> -->
<!--         <link rel="stylesheet" href="assets/css/default-css.css"> -->
<!--         <link rel="stylesheet" href="assets/css/styles.css"> -->
<!--         <link rel="stylesheet" href="assets/css/responsive.css"> -->
<!--         modernizr css -->
<!--         <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script> -->
<!--     </head> -->

<demo:header/>
</head>
    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- preloader area start -->

        <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            <div class="col-9">

                <!-- page title area start -->
                <div class="row">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Listado de declaraciones </h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>de residuos </span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
 
                <!-- main content area inicio -->
                <div class="row">
                <div class="text-uppercase bg-success mb-3">
                           <button type="button" class="fa fa-newspaper-o btn btn-success"> Columnas</button>
                           <button type="button" class="fa fa-floppy-o btn btn-success"> Exportar</button>
                           <div class="pull-right">
                                <form action="#">
                                <input type="text" name="search" placeholder="Buscar..." required="">
                                <i class="ti-search col-md-2"></i>
                            </form>
                           </div>
                           </div>
                <div class="single-table">
                                <div class="table-responsive">                                    
 <%
	HashMap<String, Object> data = new HashMap<String, Object>();
	data.put("dec_id", "#=dec_id#");
%>           

   <kendo:grid name="grid" pageable="true" height="550px" detailTemplate="template"
	dataBound="dataBound">
    <kendo:grid-columns>
        <kendo:grid-column title="Numero declaracion" field="dec_id" width="120px" />
        <kendo:grid-column title="Fecha Declaracion" field="dec_gen_fecha_gen" width="120px" format="{0:MM/dd/yyyy}" />
        <kendo:grid-column title="Generador" field="sedGen.sed_nombre"  width="120px" />
        <kendo:grid-column title="Transportador" field="sedTrn.sed_nombre"  width="120px" />
        <kendo:grid-column title="Gestor" field="sedGes.sed_nombre"  width="120px" />
    </kendo:grid-columns>
    <kendo:dataSource pageSize="15" >
        <kendo:dataSource-schema data="data" total="total">
        <kendo:dataSource-schema-model id="dec_id">
                        <kendo:dataSource-schema-model-fields>
                            <kendo:dataSource-schema-model-field name="dec_id" type="number" />
                            <kendo:dataSource-schema-model-field name="dec_gen_fecha_gen" type="date" />

                        </kendo:dataSource-schema-model-fields>
                    </kendo:dataSource-schema-model>
        </kendo:dataSource-schema>
        <kendo:dataSource-transport>
            <kendo:dataSource-transport-read url="/trazabilidad/IdeamServlet?action=IdeHist" />
        </kendo:dataSource-transport>
    </kendo:dataSource>
</kendo:grid>

<kendo:grid-detailTemplate id="template">
    <kendo:tabStrip name="tabStrip_#=dec_id#">
    <kendo:tabStrip-animation>
    	<tabStrip-animation-open effects="fadeIn"/>
    </kendo:tabStrip-animation>
        <kendo:tabStrip-items>
            <kendo:tabStrip-item text="Estado De la Declaracion" selected="true">
                <kendo:tabStrip-item-content>
                    <kendo:grid name="grid_#=dec_id#" pageable="true" scrollable="false">
                        <kendo:grid-columns>
                            <kendo:grid-column title="Numero Declaracion" field="dec_id" width="100px" />
                            <kendo:grid-column title="Fecha Envio" field="dec_gen_fecha_trn" width="110px" />
                            <kendo:grid-column title="Fecha Aprobacion" field="dec_trn_fecha_trn" width="110px" />
                            <kendo:grid-column title="Fecha Finalizacion" field="dec_ges_fecha_ges" width="110px" />
                        </kendo:grid-columns>
                        <kendo:dataSource pageSize="15" >
                            <kendo:dataSource-schema data="data" total="total"></kendo:dataSource-schema>
                            <kendo:dataSource-transport>
                                <kendo:dataSource-transport-read url="/trazabilidad/IdeamServlet?action==IdeHistData" data="<%=data %>"  />
                            </kendo:dataSource-transport>
                        </kendo:dataSource>
                    </kendo:grid>
                </kendo:tabStrip-item-content>
            </kendo:tabStrip-item>
            <kendo:tabStrip-item text="Rechasada ">
                <kendo:tabStrip-item-content>
                    <div class='employee-details'>
                        <ul>
                            <li><label>Rechasada por:</label>#= rechasoP #</li>
                            <li><label>Fecha Rechaso:</label>#= fecha_rechasoP #</li>
                            <li><label>Observaciones:</label>#= dec_ges_observacion #</li>
                        </ul>
                    </div>
                </kendo:tabStrip-item-content>
            </kendo:tabStrip-item>
        </kendo:tabStrip-items>
    </kendo:tabStrip>
</kendo:grid-detailTemplate>
                                </div>
                                
                                <script>
        function dataBound() {
            this.expandRow(this.tbody.find("tr.k-master-row").first());
        }
</script>  
    
<style>
    .k-detail-cell .k-tabstrip .k-content {
        padding: 0.2em;
    }
    .employee-details ul
    {
        list-style:none;
        font-style:italic;
        margin: 15px;
        padding: 0;
    }
    .employee-details ul li
    {
        margin: 0;
        line-height: 1.7em;
    }

    .employee-details label
    {
        display:inline-block;
        width:90px;
        padding-right: 10px;
        text-align: right;
        font-style:normal;
        font-weight:bold;
    }
</style>

             
<demo:footer/>
</div>
</div>
</div>
                </body>

                </html>
