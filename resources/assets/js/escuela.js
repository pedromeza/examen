$(document).ready(function(){
	//toma el valor que se selecciono en contries
	var interes = $('#id_interes').val();
	//toma el valor que se selecciono anterior mente en cities
	// var id_city = $('#id_city').val();
	// borra el campo de cities
	  // $("#city").empty();
    console.log(interes);
	$.get("cities/"+contries+"",function(idPaisResp,state,lada,id){
		$("#city").empty();
			//trae todos los datos del arreglo con .length
			// $("#city").append("<option>SELECCIONA</option>")
		for(i=0; i< idPaisResp.length; i++){
			// if si el campo id_city es igual que idPaisResp[id].id deja seleccionado la cities que se habia seleccionado anterior mente
			if( id_city == idPaisResp[i].cifk ){
				// deja seleccionada la ciudad con el id que se habia seleccionado
				// console.log(idPaisResp[i].cifk);
				$("#city").append("<option selected='selected' value='"+idPaisResp[i].cifk+"'>"+idPaisResp[i].ciname+"</option>");
					$.get("lada/"+idPaisResp[i].cifk+"",function(idciudad,state,lada){
						// console.log(event.target.value);
						$("#lada").empty();
					for(i=0; i< 1; i++){
						$("#lada").val(idciudad[i].cilada);
						$("#id_city").val(idciudad[i].ccfk);
						}
					});
			}else{
				// si quiere cambiar el campo de lo seleccionado mustrame todos los demas registros
				$("#city").append("<option  value='"+idPaisResp[i].cifk+"'>"+idPaisResp[i].ciname+"</option>");
				// console.log(idPaisResp[i].cifk);
			}
		}
	});
/**/

$("#countries").change(function(event){
	$("#city").empty();
	$.get("cities/"+event.target.value+"",function(idPaisResp,state,lada,id){
	$("#city").empty();
	$("#city").append("<option>SELECCIONA</option>")
	for(i=0; i< idPaisResp.length; i++){
		$("#city").append("<option  value='"+idPaisResp[i].cifk+"'>"+idPaisResp[i].ciname+"</option>");
		}
	});
});

$("#city").change(function(event){
	$("#lada").empty();
	$.get("lada/"+event.target.value+"",function(idciudad,state,lada){
		$("#lada").empty();
		for(i=0; i< 1; i++){
			$("#lada").val(idciudad[i].cilada);
			$("#id_city").val(idciudad[i].ccfk);
		}
	});
});
});
