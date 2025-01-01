/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



if(room==menu_inicio){
	audio_stop_all()
	audio_play_sound(sound_inicio,1,true)
}else if(room==mapa1){
	audio_stop_all()
	audio_play_sound(sound_mapa,1, true)
}else if(room==minion_fight){
	audio_stop_all()
	audio_play_sound(sound_battle,1,true)
}else if(room==boss_fight){
	audio_stop_all()
	audio_play_sound(sound_battle,1,true)
}else if(room==mapa2){
	audio_stop_all()
	audio_play_sound(sound_mapa2,1,true)
}else if(room==minion_fight2){
	audio_stop_all()
	audio_play_sound(sound_battle2,1,true)
}else if(room==boss_fight2){
	audio_stop_all()
	audio_play_sound(sound_battle2,1,true)
}else if(room==minion_fight3){
	audio_stop_all()
	audio_play_sound(sound_battle3,1,true)
}else if(room==mapa3){
	audio_stop_all()
	audio_play_sound(sound_mapa3,1,true)
}else if(room==defeat){
	audio_stop_all()
	audio_play_sound(sound_died,1, false)
}else if(room==sala_glitch){
	audio_stop_all()
	audio_play_sound(sound_glitch,1, true)
}else if(room==final){
	audio_stop_all()
	audio_play_sound(sound_sala_boss_defeated,1, true)
}else if(room == finalboss){
	audio_stop_all()
	audio_play_sound(sound_final_battle,1, true)
}else if(room == sala_ending){
	audio_stop_all()
	audio_play_sound(sound_ending,1, true)
}else if(room==intro1){
	audio_stop_all()
	audio_play_sound(sound_tormenta1,1, true)	
}else if(room==intro2 || room==intro3){
	audio_stop_all()
	audio_play_sound(sound_tormenta2,1, true)
	audio_play_sound(sound_teclado,1, true)
}else if(room==intro4){
	audio_stop_all()
	audio_play_sound(sound_intro,1, true)
}