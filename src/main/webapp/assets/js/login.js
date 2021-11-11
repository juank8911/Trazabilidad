/**
 * 
 */
/**
 * 
 */


var totalTime = 4;
function updateClock() {
document.getElementById('form_logi').innerHTML = '<span class="spinner-border spinner-border-sm" id="fLog" role="status" aria-hidden="True"></span> Espera ' + totalTime+ ' segundos para continuar';

if(totalTime==0){
document.getElementById('form_logi').innerHTML = '<span class="spinner-border spinner-border-sm" id="fLog" role="status" aria-hidden="True"></span> Ingresar <i class="ti-arrow-right">';
document.getElementById('form_logi').removeAttribute('disabled');
$('#fLog').hide();
}else{
totalTime-=1;
setTimeout("updateClock()",1000);
}
}

	$(document).ready(function () {
		$("#form_logi").click(function(){
    	$('#fLog').show();
		});
		
		$('#fLog').hide();
		var msj = document.getElementById('failses');
		console.log(msj)
		if(msj!=null)
		{
			$('#fLog').show();
			console.log('conrasela mal')
			var btn = document.getElementById('form_logi');
			btn.setAttribute('disabled','disabled');
			updateClock();

			
		}
		});
