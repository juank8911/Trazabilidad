/**
 * 
 */
var btnDec;
     function remove(el){
	var index = $(el).closest("tr")
	var index1 = $(el).parent().parent().index();
	var detail = $(el).parent().parent().next(); 
 	var status = $(detail).css("display");
	var imgs = $(el).closest("img")
	 	
 	if(status == "none") 
 	{
 	
 	$(detail).css("display", "table-row");
 	$("img", el).attr('src',"assets/images/icon/market-value/triangle-up.png");
 	}
  
   else{
   $("img", el).attr('src',"assets/images/icon/market-value/triangle-down.png")
    $(detail).css("display", "none")
    } 

 }

function openModal(e)
{
		btnDec = e;
	$('#exampleModal').modal('show'); // abrir
}
 

$(document).ready(function (){
	
	$("#envia").click(function(){
	console.log("btn envia")
		console.log(this);
	var detr = $(this).closest("tr");
	console.log(detr);
	})
	
});

 function enviar(el)
 {
		
		var table = $(el).parent().parent().parent();
		var idDeclaResIn = $(table).find('#idDeclaRes');
		var tipEmbalajeIn = $(table).find('#tipEmbalaje');
		var txtCantEmbIn = $(table).find('#txtCantEmb');	
		var txtCantEmpqIn = $(table).find('#txtCantEmpq');
		var tipEmpaqueIn = $(table).find('#tipEmpaque');
		var txtCantPesoin = $(table).find('#txtCantPeso');
		
		var idDeclaRes = new Array(); 
		var tipEmbalaje = new Array();
		var txtCantEmb = new Array(); 
		var txtCantEmpq = new Array();
		var tipEmpaque  = new Array();
		var txtCantEmpq = new Array();
		var txtCantPeso = new Array();
		

		namesValues = [].map.call(idDeclaResIn,function(dataImput){
		idDeclaRes.push(dataImput.value);
		});
		namesValues = [].map.call(tipEmbalajeIn,function(dataImput){
		tipEmbalaje.push(dataImput.value);
		});
		namesValues = [].map.call(txtCantEmbIn,function(dataImput){
		txtCantEmb.push(dataImput.value);
		});
		namesValues = [].map.call(txtCantEmpqIn,function(dataImput){
		txtCantEmpq.push(dataImput.value);
		});
		namesValues = [].map.call(tipEmpaqueIn,function(dataImput){
		tipEmpaque.push(dataImput.value);
		});
		namesValues = [].map.call(txtCantPesoin,function(dataImput){
		txtCantPeso.push(dataImput.value);
		});
		
		console.log("tamaño de los array")
		console.log(idDeclaRes.length);
		console.log(tipEmbalaje.length);
		console.log(txtCantEmb.length);
		console.log(tipEmpaque.length);
		console.log(txtCantEmpq.length);
		console.log(txtCantPeso.length);
		
				
		 $.ajax({
            type: 'POST',
            url: 'controlGenerador?action=CrearDeclaResiduo',
            data: {'idDeclaRes[]':idDeclaRes,'tipEmbalaje[]':tipEmbalaje,'txtCantEmb[]':txtCantEmb ,'tipEmpaque[]': tipEmpaque,'txtCantEmpq[]':txtCantEmpq,'txtCantPeso[]':txtCantPeso},
            statusCode: {
                404: function () {
                    alert('pagina no encontrada');
                },
                500: function () {
                    alert('Error servidor');
                }
            },
            success: function (datos) {
            	$('.alert').show()
              location.reload('controlGenerador?action=generador');
            }

        });
		   
 } 


$(document).ready(function () {
	
function registrar(val){
	window.alert("hola")
}

});

//$(document).ready(function () {
//	var bt; 
//	var id ;
//   $("#yesMod").on('click', function(e) {
//     e.preventDefault();
//	 id = $(this).attr("data-id")	
//	console.log(id);
//	
//	
//    $("#exampleModal").modal('show');
//    $('#envioFin').click(function() {
//	e.preventDefault();
//	window.alert("acepto enviar la declaracion");
//	 $(this).prop("disabled", false);
//		console.log(id);
//		var table = document.getElementById("#"+id);
//		console.log("///////////////////body///////////////////////////////////////");
//		console.log(table);
//		
//		var tipEmbalajeIn = $("table").find('#tipEmbalaje');
//		var tipEmbalajeIn = $("table").find('#tipEmbalaje');
//		var txtCantEmbIn = $("table").find('#txtCantEmb');	
//		var txtCantEmpqIn = $("table").find('#txtCantEmpq');
//		var tipEmpaqueIn = $("table").find('#tipEmpaque');
//		var txtCantPesoin = $("table").find('#txtCantPeso');
//		
//		var idDeclaRes = new Array() 
//		var tipEmbalaje = new Array();
//		var txtCantEmb = new Array(); 
//		var txtCantEmpq = new Array();
//		var tipEmpaque  = new Array();
//		var txtCantEmpq = new Array();
//		var txtCantPeso = new Array();
//		
//
//		var tableP = $("table").prop('outerHTML'); 
//		console.log("///////////////////LENGTH///////////////////////////////////////");
//		var cont = $("table").length;
//		console.log("los rows son "+ cont);
//		console.log("//////////////afuer del for///////////////////////////////////////");
//		var trd =  $("table").find(" #trDres");		
//		console.log(trd);
//		window.alert(trd)
//				$("table #trDres").find("td").each(function() {
////				for (var i = 0; i < cont; i++)
////				{
////					
////				}
//			console.log("//////////////////////THIS DEL FOR////////////////////////////////////");
//			console.log(table);
//			console.log("///////////////////////////AGREGANDO A ARRAY///////////////////////////////");
//			console.log($(this).find('#txtCantEmb').value);
//			console.log("///////////////////////////AGREGANDO A ARRAY///////////////////////////////");
//			if($(this).find('#txtCantEmb').value!="")
//			{
//				namesValues = [].map.call($(this).find('#idDeclaRes'),function(dataImput){
//					var vist = $(this).prop('outerHTML');
//				console.log(vist);
//				console.log("encontrado id dela Res");
//				idDeclaRes.push(dataImput.value);
//					});
//					namesValues = [].map.call($(this).find('#tipEmbalaje'),function(dataImput){
//					console.log(this);	
//					console.log("encontrado tipo embalaje");
//					tipEmbalaje.push(dataImput.value);
//					});
//					namesValues = [].map.call($(this).find('#txtCantEmb'),function(dataImput){
//						console.log(this);
//					txtCantEmb.push(dataImput.value);
//					
//					});
//					
//					namesValues = [].map.call($(this).find('#tipEmpaque'),function(dataImput){
//						console.log(this);
//					tipEmpaque.push(dataImput.value);
//						});
//					namesValues = [].map.call($(this).find('#txtCantEmpq'),function(dataImput){
//						console.log(this);
//					txtCantEmpq.push(dataImput.value);
//						});
//					namesValues = [].map.call($(this).find('#txtCantPeso'),function(dataImput){
//						console.log(this);
//						txtCantPeso.push(dataImput.value);
//						});
//			}
//
//
//						
//					
//			
//        });		
//		console.log("tamaño de los array")
//		console.log(idDeclaRes.length);
//		console.log(tipEmbalaje.length);
//		console.log(txtCantEmb.length);
//		console.log(tipEmpaque.length);
//		console.log(txtCantEmpq.length);
//		console.log(txtCantPeso.length);
//		
//	
//	for(var j=0;j<txtCantEmpq.length;j++)
//	{
//	console.log(txtCantEmpq[j]);	
//	};
//	
//			 $.ajax({
//            type: 'POST',
//            url: 'controlGenerador?action=CrearDeclaResiduo',
//            data: {idDeclaRes,'tipEmbalaje[]':tipEmbalaje,'txtCantEmb[]':txtCantEmb ,'tipEmpaque[]': tipEmpaque,'txtCantEmpq[]':txtCantEmpq,'txtCantPeso[]':txtCantPeso},
//            statusCode: {
//                404: function () {
//                    alert('pagina no encontrada');
//                },
//                500: function () {
//                    alert('Error servidor');
//                }
//            },
//            success: function (datos) {
//            	$('.alert').show()
//              location.reload('controlGenerador?action=generador');
//            }
//
//        });		   
// 		
//        $("#exampleModal").modal('hide');
//        
//    });
//    $('#btnNo').click(function() {
//        $("#exampleModal").modal('hide');
//    });
//    });
//});



function dialog(e) {
	var  bt = $(e);
    var dialog = $('').dialog();

    $('#envioFin').click(function() {
        dialog.dialog('close');
        enviar1(bt);
    });
    $('#btnNo').click(function() {
        dialog.dialog('close');
    });
}

// function enviar1()
// {		console.log(btnDec);
//		var index = $(btnDec).parent("tbody");
//		var index1 = $(btnDec).parent().parent().index();
//		var detail = $(index).parent().parent().next(); 
//		console.log("indexs");
//		console.log(index);
//		console.log(detail);
//		console.log(index1);
//		console.log("prop");
//		
//		var table = $(btnDec).parent("#trDres");
//		
//		var tipEmbalajeIn = $(this).find('#tipEmbalaje');
//		var tipEmbalajeIn = $(table).find('#tipEmbalaje');
//		var txtCantEmbIn = $(table).find('#txtCantEmb');	
//		var txtCantEmpqIn = $(table).find('#txtCantEmpq');
//		var tipEmpaqueIn = $(table).find('#tipEmpaque');
//		var txtCantPesoin = $(table).find('#txtCantPeso');
//		
//		var idDeclaRes = new Array() 
//		var tipEmbalaje = new Array();
//		var txtCantEmb = new Array(); 
//		var txtCantEmpq = new Array();
//		var tipEmpaque  = new Array();
//		var txtCantEmpq = new Array();
//		var txtCantPeso = new Array();
//		
//
//		var tableP = $(table).prop('outerHTML'); 
//		var indexp = $(index).prop('outerHTML');
//		console.log(tableP);
//		console.log("////////////////////INDEX//////////////////////////////////////");
//		console.log(indexp);
//		console.log("///////////////////LENGTH///////////////////////////////////////");
//		var cont = $('table').length;
//		console.log("los rows son "+ cont);
//		console.log("//////////////afuer del for///////////////////////////////////////");
//
//	
//				$("table #trDres").find("td").each(function() {
////				for (var i = 0; i < cont; i++)
////				{
////					
////				}
//			console.log("//////////////////////THIS DEL FOR////////////////////////////////////");
//			console.log(this);
//			console.log("///////////////////////////AGREGANDO A ARRAY///////////////////////////////");
//			
//			window.alert($(this).find('#txtCantEmb').value);
//			if($(this).find('#txtCantEmb').value!="")
//			{
//				namesValues = [].map.call($(this).find('#idDeclaRes'),function(dataImput){
//				console.log("encontrado id dela Res");
//				idDeclaRes.push(dataImput.value);
//					});
//					namesValues = [].map.call($(this).find('#tipEmbalaje'),function(dataImput){
//					console.log("encontrado tipo embalaje");
//					tipEmbalaje.push(dataImput.value);
//					});
//					namesValues = [].map.call($(this).find('#txtCantEmb'),function(dataImput){
//					txtCantEmb.push(dataImput.value);
//					
//					});
//					
//					namesValues = [].map.call($(this).find('#tipEmpaque'),function(dataImput){
//					tipEmpaque.push(dataImput.value);
//						});
//					namesValues = [].map.call($(this).find('#txtCantEmpq'),function(dataImput){
//					txtCantEmpq.push(dataImput.value);
//						});
//					namesValues = [].map.call($(this).find('#txtCantPeso'),function(dataImput){
//						txtCantPeso.push(dataImput.value);
//						});
//			}
//
//
//						
//					
//			
//        });		
//		console.log("tamaño de los array")
//		console.log(idDeclaRes.length);
//		console.log(tipEmbalaje.length);
//		console.log(txtCantEmb.length);
//		console.log(tipEmpaque.length);
//		console.log(txtCantEmpq.length);
//		console.log(txtCantPeso.length);
//		

//		namesValues = [].map.call($(table).find('#idDeclaRes'),function(dataImput){
//		idDeclaRes.push(dataImput.value);
//		});

//		namesValues = [].map.call(tipEmbalajeIn,function(dataImput){
//		tipEmbalaje.push(dataImput.value);
//		});

//		namesValues = [].map.call(txtCantEmbIn,function(dataImput){
//		txtCantEmb.push(dataImput.value);
//		});
//		namesValues = [].map.call(txtCantEmpqIn,function(dataImput){
//		txtCantEmpq.push(dataImput.value);
//		});
//		namesValues = [].map.call(tipEmpaqueIn,function(dataImput){
//		tipEmpaque.push(dataImput.value);
//		});
//		namesValues = [].map.call(txtCantPesoin,function(dataImput){
//		txtCantPeso.push(dataImput.value);
//		});
//		txtCantPeso
		
				
//		 $.ajax({
//            type: 'POST',
//            url: 'controlGenerador?action=CrearDeclaResiduo',
//            data: {idDeclaRes,'tipEmbalaje[]':tipEmbalaje,'txtCantEmb[]':txtCantEmb ,'tipEmpaque[]': tipEmpaque,'txtCantEmpq[]':txtCantEmpq,'txtCantPeso[]':txtCantPeso},
//            statusCode: {
//                404: function () {
//                    alert('pagina no encontrada');
//                },
//                500: function () {
//                    alert('Error servidor');
//                }
//            },
//            success: function (datos) {
//            	$('.alert').show()
//              location.reload('controlGenerador?action=generador');
//            }
//
//        });		   
// }
 
 
 
 function editar(bt)
{
var trs = $(bt).parent().parent()
$(bt).attr('class','btn btn-warning ti-save');
$("input", trs).removeAttr("readonly");
}

 
 
   $(document).ready(function () {
   
   
		$(".saleRow td:nth-child(1)").css("text-align","center");
 	  $(".saleRow td:nth-child(1)").html("<a onclick='remove(this)'><img id='myImg' src='assets/images/icon/market-value/triangle-down.png' /></a>");

$('#exampleModal').on('show.bs.modal', function (event) {
//		event.preventDefault();
//        event.stopImmediatePropagation();
  var button = $(event.relatedTarget) // Button that triggered the modal
  var recipient = button.data('id') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
var envio = document.getElementById("envioFin");
envio.setAttribute("data-id", recipient);
})

var i =0;
	$('#envioFin').click(function(e) {
		e.preventDefault();
        e.stopImmediatePropagation();
		$("#exampleModal").modal('hide');
	
	var button = $(this) // Button that triggered the modal
  	var id = button.data('id')
console.log("///////////////////id///////////////////////////////////////");
		console.log("#"+id);
console.log("///////////////////id///////////////////////////////////////");		
		var table1 = $("#Item"+id+" #"+id);
		var  ebody = $("table").find("#Item"+id)
		var table = $(ebody).find("#"+id);
		console.log("///////////////////table///////////////////////////////////////");
		console.log(table);
		console.log(table1);
		window.alert("PRUEBA DE REPETICION "+i)
		console.log("///////////////////table///////////////////////////////////////");
		var tipEmbalajeIn = $("table").find('#tipEmbalaje');
		var tipEmbalajeIn = $("table").find('#tipEmbalaje');
		var txtCantEmbIn = $("table").find('#txtCantEmb');	
		var txtCantEmpqIn = $("table").find('#txtCantEmpq');
		var tipEmpaqueIn = $("table").find('#tipEmpaque');
		var txtCantPesoin = $("table").find('#txtCantPeso');
		i++;
		var idDeclaRes = new Array() 
		var tipEmbalaje = new Array();
		var txtCantEmb = new Array(); 
		var txtCantEmpq = new Array();
		var tipEmpaque  = new Array();
		var txtCantEmpq = new Array();
		var txtCantPeso = new Array();
		

		var tableP = $("table").prop('outerHTML'); 
		console.log(tableP)
		console.log("///////////////////LENGTH///////////////////////////////////////");
		var cont = $("table").length;
		console.log("los rows son "+ cont);
		console.log("//////////////afuer del for///////////////////////////////////////");
			
				$("table").find("td").each(function() {

			console.log("//////////////////////THIS DEL FOR////////////////////////////////////");
			console.log(this);
			console.log("///////////////////////////AGREGANDO A ARRAY///////////////////////////////");
			console.log($(this).find('#txtCantEmb').value);
			console.log("///////////////////////////AGREGANDO A ARRAY///////////////////////////////");
			if($(this).find('#txtCantEmb').value!="")
			{
				namesValues = [].map.call($(this).find('#idDeclaRes'),function(dataImput){
				console.log("///////////////////////////AGREGANDO A ARRAY///////////////////////////////");
					var vist = $(this).prop('outerHTML');
				console.log(vist);
				console.log("encontrado id dela Res");
				idDeclaRes.push(dataImput.value);
					});
					namesValues = [].map.call($(this).find('#tipEmbalaje'),function(dataImput){
					console.log(this);	
					console.log("encontrado tipo embalaje");
					tipEmbalaje.push(dataImput.value);
					});
					namesValues = [].map.call($(this).find('#txtCantEmb'),function(dataImput){
						console.log(this);
					txtCantEmb.push(dataImput.value);
					
					});
					
					namesValues = [].map.call($(this).find('#tipEmpaque'),function(dataImput){
						console.log(this);
					tipEmpaque.push(dataImput.value);
						});
					namesValues = [].map.call($(this).find('#txtCantEmpq'),function(dataImput){
						console.log(this);
					txtCantEmpq.push(dataImput.value);
						});
					namesValues = [].map.call($(this).find('#txtCantPeso'),function(dataImput){
						console.log(this);
						txtCantPeso.push(dataImput.value);
						});
			}


						
					
			
        });		
		console.log("tamaño de los array")
		console.log(idDeclaRes.length);
		console.log(tipEmbalaje.length);
		console.log(txtCantEmb.length);
		console.log(tipEmpaque.length);
		console.log(txtCantEmpq.length);
		console.log(txtCantPeso.length);
		
			for(var j=0;j<txtCantEmpq.length;j++)
			{
			console.log(txtCantEmpq[j]);	
			};
	})


   $("#btnDetail").click(function()
{
var index = $(this).parent().parent().index();
 var detail = $(this).parent().parent().next(); 
 var status = $(detail).css("display");
  if(status == "none") 
  $(detail).css("display", "table-row");
   else $(detail).css("display", "none") 
   });
      
 });
 
 
 
 
       $(document).ready(function () {  
        //Detectar click en el checkbox superior de la lista
        $('#brand').on('click', function () {
          //verificar el estado de ese checkbox si esta marcado o no
          var checked_status = this.checked;
 
          /*
           * asignarle ese estatus a cada uno de los checkbox
           * que tengan la clase "selectall"
          */
          $(".brand").each(function () {
            this.checked = checked_status;
          });
        });
      });
 
 function table()
 {
 var index = $(this).parent().parent().index();
 var detail = $(this).parent().parent().next(); 
 var status = $(detail).css("display");
  if(status == "none") 
  $(detail).css("display", "table-row");
   else $(detail).css("display", "none")
 }
 
 function selTodas(val)
 {
 if(val==true)
 {
 var items = document.getElementsByName('brand[]');
               for (var i = 0; i < items.length; i++) {
                   if (items[i].type == 'checkbox')
                       items[i].checked = true;
               }
 }
 else 
 {
 var items = document.getElementsByName('brand[]');
               for (var i = 0; i < items.length; i++) {
                   if (items[i].type == 'checkbox')
                       items[i].checked = false;
               }
 }
 
 }
 
