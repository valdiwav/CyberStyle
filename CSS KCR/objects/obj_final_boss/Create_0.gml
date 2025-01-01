/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if global.vida_boss_m3!=0{
	vida_boss=3;
	global.vida_boss_m3=vida_boss
	defeated= false; //cambiar a false
}else{
	vida_boss=global.vida_boss_m3
	defeated = true
}


if defeated{obj_final_boss.visible=false;} 