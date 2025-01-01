/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if vida_boss==0 && room==boss_fight3{
	//audio_stop_sound(sound_battle)
	sprite_index= spr_victory;
	defeated=true;
	audio_play_sound(enemyDefeat,1,false)
}
