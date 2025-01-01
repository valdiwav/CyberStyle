/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if global.vida_minion1!=0{
	vida_minion=2;
	global.vida_minion1=vida_minion
	defeated= false; //cambiar a false
}else{
	vida_minion=global.vida_minion1
	defeated = true
}


if defeated{obj_minion.visible=false;} 


if global.primera_vez{global.tiempoEmpiezaM1=(get_timer())*0.000001}
