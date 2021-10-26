    var bancheck = false;
    
      $(document).ready(function () {
      $('#modalRhT').on('show.bs.modal', function (event) {
	     var button = $(event.relatedTarget) // Button that triggered the modal
	     var id = button.data('id');
	     var fecha = button.data('fecha');
	     // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	     // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
	     var modal = $(this)
	     modal.find('.modal-title').append();
	     modal.find('#formDeRe','.modal-body').append("<input type='text' value="+id+" name='rechasa' />");
	     modal.find('.modal-footer').append("<button type='button'  class='btn btn-secondary' data-dismiss='modal'>Close</button>");
		modal.find('.modal-footer').append("<button type='button' id='rechasar'  class='btn btn-alert' data-url='controlTrans?action=declaTRNRechazar' data-id="+id+"  onclick='rechazar(this)'>Rechasar</button>");
     	})     
       });
       
       
     function rechazar(btn){
 
     	        $.ajax({
            type: 'GET',
            url: $(btn).data("url"),
            data: 'idDec=' + $(btn).data("id"),
            statusCode: {
                404: function () {
                    alert('pagina no encontrada');
                },
                500: function () {
                    alert('Error servidor');
                }
            },
            success: function (datos) {
            location.reload();
				//$('#modalRh').modal(toggle)	
            }

        });
     }
     
     
     
     $(document).ready(function () {
    $('#rechasar').on('click', function () {
        $.ajax({
            type: 'GET',
            url: 'controlTrans?action=declaTRNRechazar',
            data: {'idSed': $('#chekTrans').val(), 'idGes':$('#txtGes').val()},
            statusCode: {
                404: function () {
                    alert('pagina no encontrada');
                },
                500: function () {
                    alert('Error servidor');
                }
            },
            success: function (datos) {
					
            }

        });

    });

});
     

     function expande(el){
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
 
 function enviar()
 {

		var pr = evalCheck();
		var formu = document.getElementById('#formDeRe');
		if(pr==true)
		{
		$('#formDeRe').attr('action','controlTrans?action=declaTRNAprobar')
		var items = document.getElementsByName('brand[]');

		for (var i = 0; i < items.length; i++) {
				var input = document.createElement("input");
				input.setAttribute("type", "hidden");
				input.setAttribute("name", "prCheck[]");
				input.setAttribute("value", items[i].checked+"");
			 document.getElementById("formDeRe").appendChild(input);
		}
		$('#formDeRe').submit();
		}
		else
		{
		$('#exampleModal').modal('toggle');
		$('#noCheck').modal('show');
		}

 }

 function evalCheck()
 {
  
   var items = document.getElementsByName('brand[]');
               for (var i = 0; i < items.length; i++) {
						if(items[i].checked==true)
						{
						bancheck = true;
						}               

               }
               
       return bancheck;
 }
 
 
 function evalCheck1()
 {
  
   var che = document.getElementsByName('che[]');
window.alert(che.length());

               for (var i = 0; i < che.length; i++) {
				var items = che[i].brand;
						if(items.checked==true)
						{
						bancheck = true;
						}               

               }
               
       return bancheck;
 }
 
 
 function editar(bt)
{
var trs = $(bt).parent().parent()
$(bt).attr('class','btn btn-warning ti-save');
$("input", trs).removeAttr("readonly");
}

 
 
   $(document).ready(function () {
   
   
		$(".saleRow td:nth-child(2)").css("text-align","center");
 	  $(".saleRow td:nth-child(2)").html("<a onclick='expande(this)'><img id='myImg' src='assets/images/icon/market-value/triangle-down.png' /></a>");
   
   $("#btnDetail").click(function()
{
var index = $(this).parent().parent().index();
 var detail = $(this).parent().parent().next(); 
 var status = $(detail).css("display");
 console.log('Prueba de impresion');
  if(status == "none") 
  $(detail).css("display", "table-row");
   else $(detail).css("display", "none") 
   });
   
   $(document).ready(function () {

$('#submit').click(function(){
     /* when the submit button in the modal is clicked, submit the form */
	 $("input",'#formDeRe').removeAttr("readonly");
     $('#formDeRe').submit();
});

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
               			window.alert(items[i].checked);
                   if (items[i].type == 'checkbox')
                       items[i].checked = false;
               }
 }
 
 }
