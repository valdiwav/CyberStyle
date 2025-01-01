/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if(!global.mute){
	flag = true;
	global.mute=true
	image_index = 1;
	audio_master_gain(0)
}else if (global.mute){
	image_index = 0;
	flag = false;
	global.mute=false
	audio_master_gain(1)
}