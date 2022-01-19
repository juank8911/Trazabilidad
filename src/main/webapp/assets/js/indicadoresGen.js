/**
 * 
 */
var rut = "genResAnio";
function cambioChar(sel)
{
//	window.alert(sel.options[sel.selectedIndex].text);
//	window.alert(sel.options[sel.selectedIndex].value);
	var val = sel.options[sel.selectedIndex].value
//	$("#chart").empty();
//	window.alert("valor de select"+val);
	switch (val) {
  	case "1":
//		window.alert("valor 1")
		rut= "genResAnio";
		$('#chart').empty();
		createChart();
		
    //Declaraciones ejecutadas cuando el resultado de expresión coincide con el valor1
    break;
	case "2":
		window.alert("valor 2")
		$('#chart').empty();
		rut= "genSubManAnio";
		createChart();
	break;
	case "3":
	window.alert("valor 3")
		$('#chart').empty();
		rut= "genGesAnio";
		createChart();
	break;
	case "4":
	window.alert("valor 4")
		$('#chart').empty();
		rut= "genTrnAnio";
		createChart();
	break;
		}
	
	
	
}



function createChart() {
	var desde = $("#desde").val();
	var hasta = $("#hasta").val();
//	window.alert(desde+" / "+hasta);
	if(desde=="")
	{
		desde="2021"
	}
		if(hasta=="")
	{
		hasta="2021"
	}
//	window.alert("valor de desde hasta");
//	window.alert(desde+" / "+hasta);
	
            $("#chart").kendoChart({
             theme: "material",
             dataSource: {
                 transport: {
                     read: {
                         url: "/trazabilidad/indicadores?action="+rut+"&desde="+desde+"&hasta="+hasta,
                         dataType: "json"
                     }
                 },
                 group:{field: 'competitorName'},
                 sort: {field: "date", dir: "asc"},
                 schema: {
                  model: {
                      fields: {
                          date: {
                              type: "String"
                          }
                      }
                  }
              }
          },
              legend: { visible: true, position: "bottom" },
              seriesDefaults: {type: 'column',},
              series: [{
                  field: 'price',
                  categoryField: "date",
                  name: "#= group.value #"
              }],
              tooltip: {
                visible: true,
                template: "#= series.name #<br />#= kendo.toString(category, 'yyyy-MM-dd') # = #= value #"
              },
            });
        }

$(document).ready(createChart);
$(document).bind("kendo:skinChange", createChart);