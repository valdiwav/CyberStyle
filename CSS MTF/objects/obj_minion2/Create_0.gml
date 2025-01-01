/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if global.vida_minion2!=0{
	vida_minion=2;
	global.vida_minion2=vida_minion
	defeated= false; //cambiar a false
}else{
	vida_minion=global.vida_minion2
	defeated = true
}


if defeated{obj_minion2.visible=false;} 

if global.primera_vez{global.tiempoEmpiezaM2=(get_timer())*0.000001}


global.tiempoM1=global.tiempoEmpiezaM2-global.tiempoEmpiezaM1
