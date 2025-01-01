/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if obj_escudo.flag{
	if (global.vida_jugador==5){
		global.vida_jugador++;
		audio_play_sound(shield,1, false)
	}else{
		audio_play_sound(incorrecto,1, false)
	}
}