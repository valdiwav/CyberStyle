/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if global.vida_minion3!=0{
	vida_minion=1;
	global.vida_minion3=vida_minion
	defeated= false; //cambiar a false
}else{
	vida_minion=global.vida_minion3
	defeated = true
}


if defeated{obj_minion3.visible=false;} 


if global.primera_vez{global.tiempoEmpiezaM3=(get_timer())*0.000001}

global.tiempoM2=global.tiempoEmpiezaM3-global.tiempoEmpiezaM2