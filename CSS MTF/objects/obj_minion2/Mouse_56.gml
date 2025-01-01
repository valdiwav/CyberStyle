/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if vida_minion==0 && room==minion_fight2{
	audio_stop_sound(sound_battle)
	sprite_index= spr_victory;
	defeated=true;
	audio_play_sound(enemyDefeat,1,false)
}
