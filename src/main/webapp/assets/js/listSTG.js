/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



// funcion para ocultar por valor de ubicacion
function ocultarInterna (id){
    if (id == "1") {
        
        $("#tipEmpa").hide();
        $("#tipEmbalaje").hide();
        $("#i_transpo").hide();
        $("#sedeTransp").hide();
        $("#i_Gestor").hide();
        $("#sedeGestor").hide();
        $("#ltipEmpa").hide();
        $("#ltipEmbalaje").hide();
        $("#li_transpo").hide();
        $("#lsedeTransp").hide();
        $("#li_Gestor").hide();
        $("#lsedeGestor").hide();
        
    }else {
        $("#tipEmpa").show();
        $("#tipEmbalaje").show();
        $("#i_transpo").show();
        $("#sedeTransp").show();
        $("#i_Gestor").show();
        $("#sedeGestor").show();
        $("#ltipEmpa").show();
        $("#ltipEmbalaje").show();
        $("#li_transpo").show();
        $("#lsedeTransp").show();
        $("#li_Gestor").show();
        $("#lsedeGestor").show();
    }
    };





$(document).on('click', '#editbtn', function(e) {
	 alert("hello"); 
	e.preventDefault();
        e.stopImmediatePropagation();
	var btn = $(this);
	console.log(btn);
	var id = btn.data('id')
	console.log(id);

});

$(document).on('click', '#editbtn1', function(e) 
{ alert("hello1"); 
e.preventDefault();
        e.stopImmediatePropagation();
	var btn = $(this);
	console.log(btn);
	var id = btn.data('id')
	console.log(id);
});

//$(document).ready(function () {
//	window.alert('inicio paginas')
//
////$(document).on('click', '#editbtn', function() { alert("prueba"); });
////	
////$('#editbtn').click(function(event){
////	console.log('pressbn')
////	 var button = $(event.relatedTarget)
////console.log(button);
//////	window.alert("boton");
////});
//	
//	});
	
//function edtarVh(btn)
//{
//	var btdata = btn;
//	console.log(btn);
//	var recipient = btdata.data('id')
////	window.alert(recipient);
//}


    
$(document).ready(function () {
    $('select[name=tipGestion]').on('change', function () {
        
        $.ajax({
            type: 'GET',
            url: 'controlGenerador?action=residuoListaSTGGenera',
            data: 'codiSTG=' + $('select[name=tipGestion]').val(),
            statusCode: {
                404: function () {
                    alert('pagina no encontrada');
                },
                500: function () {
                    alert('Error servidor');
                }
            },
            success: function (datos) {
                $('select[name=subTipGest] option').remove(); // limpia el valor del comboBox
                //console.log('entrando a funcion succes');
                var proDatos = datos.split("|");

                for (var i = 0; i < proDatos.length - 1; i++) { // inicia ciclo para extraer los datos del arreglo

                    var id_STG = proDatos[i].split("-")[0];
                    var nombre_STG = proDatos[i].split("-")[1];
                    $('select[name=subTipGest]').append('<option value= "' + id_STG + '">' + nombre_STG + '</option>') // imprimir datos en el comboBox
                }
            }

        });

    });

});

    
    $(document).ready(function () {
    $('select[name=tipoVeh]').on('change', function () {
        $.ajax({
            type: 'GET',
            url: 'controlTrans?action=residuoListaGesGenera',
            data: 'codGes=' + $('select[name=tipoVeh]').val(),
            statusCode: {
                404: function () {
                    alert('pagina no encontrada');
                },
                500: function () {
                    alert('Error servidor');
                }
            },
            success: function (datos) {
                $('select[name=tipDesig] option').remove(); // limpia el valor del comboBox
                //console.log('entrando a funcion succes');
                var proDatos = datos.split("|");

                for (var i = 0; i < proDatos.length - 1; i++) { // inicia ciclo para extraer los datos del arreglo

                    var id_Des = proDatos[i].split("-")[0];
                    var nom_Des = proDatos[i].split("-")[1];
                    $('select[name=tipDesig]').append('<option value= "' + id_Des + '">' + nom_Des + '</option>') // imprimir datos en el comboBox
                }
            }

        });

    });

});



    $(document).ready(function () {
    $('select[name=i_transpo]').on('change', function () {
        $.ajax({
            type: 'GET',
            url: 'controlGenerador?action=sedeListTranspGenera',
            data: 'codEm=' + $('select[name=i_transpo]').val(),
            statusCode: {
                404: function () {
                    alert('pagina no encontrada');
                },
                500: function () {
                    alert('Error servidor');
                }
            },
            success: function (datos) {
                $('select[name=sedeTransp] option').remove(); // limpia el valor del comboBox
                //console.log('entrando a funcion succes');
                var proDatos = datos.split("|");

                for (var i = 0; i < proDatos.length - 1; i++) { // inicia ciclo para extraer los datos del arreglo

                    var id_Des = proDatos[i].split("-")[0];
                    var nom_Des = proDatos[i].split("-")[1];
                    $('select[name=sedeTransp]').append('<option value= "' + id_Des + '">' + nom_Des + '</option>') // imprimir datos en el comboBox
                }
            }

        });

    });

});


    $(document).ready(function () {
    $('select[name=i_Gestor]').on('change', function () {
        $.ajax({
            type: 'GET',
            url: 'controlGenerador?action=sedeListGestorGenera',
            data: 'codEmG=' + $('select[name=i_Gestor]').val(),
            statusCode: {
                404: function () {
                    alert('pagina no encontrada');
                },
                500: function () {
                    alert('Error servidor');
                }
            },
            success: function (datos) {
                $('select[name=sedeGestor] option').remove(); // limpia el valor del comboBox
                //console.log('entrando a funcion succes');
                var proDatos = datos.split("|");

                for (var i = 0; i < proDatos.length - 1; i++) { // inicia ciclo para extraer los datos del arreglo

                    var id_Des = proDatos[i].split("-")[0];
                    var nom_Des = proDatos[i].split("-")[1];
                    $('select[name=sedeGestor]').append('<option value= "' + id_Des + '">' + nom_Des + '</option>') // imprimir datos en el comboBox
                }
            }

        });

    });

});

$(document).ready(function () {

    $('select[name=txtDepar]').on('change', function () {
        
        $.ajax({
            type: 'GET',
            url: 'control?action=listaMunip',
            data: 'idDepa=' + $('select[name=txtDepar]').val(),
            statusCode: {
                404: function () {
                    alert('pagina no encontrada');
                },
                500: function () {
                    alert('Error servidor');
                }
            },
            success: function (datos) {
                $('select[name=txtMun] option').remove(); // limpia el valor del comboBox
                //console.log('entrando a funcion succes');
                var proDatos = datos.split("|");

                for (var i = 0; i < proDatos.length - 1; i++) { // inicia ciclo para extraer los datos del arreglo

                    var id_STG = proDatos[i].split("-")[0];
                    var nombre_STG = proDatos[i].split("-")[1];
                    $('select[name=txtMun]').append('<option value= "' + id_STG + '">' + nombre_STG + '</option>') // imprimir datos en el comboBox
                }
            }

        });

    });

});

function editarRes(bn)
{
	console.log(bn);
	var btn = bn;
	id = btn.getAttribute('data-bs-id')
	console.log(id);
	window.location.href='controlTrans?action=vehiActuaTransp'+'&data1='+id;
}






