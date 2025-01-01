/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if room==minion_fight{
	if(obj_minion.vida_minion==1){
		image_index = 2
	
	}else if (obj_minion.vida_minion==0) {
		image_index = 4
		global.vida_minion1=0
	}
	
}else if room==boss_fight{
	if(obj_evilboss2.vida_boss==2){
		image_index = 1
		global.vida_boss_m1=2
	
	}else if (obj_evilboss2.vida_boss==1) {
		image_index =2
		global.vida_boss_m1=1
	
	}else if (obj_evilboss2.vida_boss==0){
		image_index = 4
		global.vida_boss_m1=0
	}
	
}else if room==minion_fight2{
	if(obj_minion2.vida_minion==1){
		image_index = 2
	
	}else if (obj_minion2.vida_minion==0) {
		image_index = 4
		global.vida_minion2=0
	}
	
}else if room==boss_fight2{
	if(obj_evilboss4.vida_boss==2){
		image_index = 1
		global.vida_boss_m2=2
	
	}else if (obj_evilboss4.vida_boss==1) {
		image_index =2
		global.vida_boss_m2=1
	
	}else if (obj_evilboss4.vida_boss==0){
		image_index = 4
		global.vida_boss_m2=0
	}
	
}else if room==minion_fight3{
	if (obj_minion3.vida_minion==1) {
		image_index = 2
		global.vida_minion3=1
	}else if (obj_minion3.vida_minion==0) {
		image_index = 4
		global.vida_minion3=0
	}
	
}else if room==boss_fight3{
	if(obj_final_boss.vida_boss==2){
		image_index = 2
		global.vida_boss_m3=2
	
	}else if (obj_final_boss.vida_boss==1) {
		image_index =3
		global.vida_boss_m3=1
	
	}else if (obj_final_boss.vida_boss==0){
		image_index = 4
		global.vida_boss_m3=0
	}
}