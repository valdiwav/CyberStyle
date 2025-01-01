/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if global.vida_boss_m2!=0{
	vida_boss=3;
	global.vida_boss_m2=vida_boss
	defeated= false; //cambiar a false
}else{
	vida_boss=global.vida_boss_m2
	defeated = true
}


if defeated{obj_evilboss4.visible=false;} 