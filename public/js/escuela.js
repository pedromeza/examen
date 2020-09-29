$(document).ready(function(){


$("#id_interes").change(function(event){
	$("#id_opc").empty();
	$.get("interesopc/"+event.target.value+"",function(id_interes,name,estatus,id){
    // console.log(id_interes);
	$("#id_opc").empty();
  $("#id_opc").append("<option value='0'>SELECCIONA</option>")
		if( id_interes.length == '' ){
			// si quiere cambiar el campo de lo seleccionado mustrame todos los demas registros
			// $("#id_opc").append("<option  value='0'></option>");
			}else {
				// console.log(idPaisResp[i].cifk);
				for(i=0; i< id_interes.length; i++){
					$("#id_opc").append("<option  value='"+id_interes[i].id+"'>"+id_interes[i].name+"</option>");
					}
			}

	});
});

});

function soloLetras(e){
  key = e.keyCode || e.which;
  tecla = String.fromCharCode(key).toLowerCase();
  letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
  especiales = "8-37-39-46";

  tecla_especial = false
  for(var i in especiales){
       if(key == especiales[i]){
           tecla_especial = true;
           break;
       }
   }

   if(letras.indexOf(tecla)==-1 && !tecla_especial){
       return false;
   }
}

function Numeros(e) {
  tecla = (document.all) ? e.keyCode : e.which;

  //Tecla de retroceso para borrar, siempre la permite
  if (tecla == 8) {
      return true;
  }
  // Patron de entrada, en este caso solo acepta numeros y letras
  patron = /[0-9]/;
  tecla_final = String.fromCharCode(tecla);
  return patron.test(tecla_final);
}
