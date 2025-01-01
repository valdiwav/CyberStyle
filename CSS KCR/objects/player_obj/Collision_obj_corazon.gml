/// @description Inserte aquí la descripción
// Puede escribir su código en este editor




if obj_corazon.flag{
	if (global.vida_jugador<5){
		global.vida_jugador++;
		audio_play_sound(vidaUp,1, false)
	}else{
		audio_play_sound(incorrecto,1, false)
	}
}