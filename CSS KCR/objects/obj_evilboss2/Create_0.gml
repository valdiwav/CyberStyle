/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if global.vida_boss_m1!=0{
	vida_boss=3;
	global.vida_boss_m1=vida_boss
	defeated= false; //cambiar a false
}else{
	vida_boss=global.vida_boss_m1
	defeated = true
}


if defeated{obj_evilboss2.visible=false;} 